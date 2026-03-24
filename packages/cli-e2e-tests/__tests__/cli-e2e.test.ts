/**
 * CLI End-to-End Tests — Real HTTP Server + CLI Subprocess
 *
 * Spins up a real PostGraphile HTTP server via graphql-server-test,
 * seeds contacts/notes with pre-baked embeddings via direct SQL,
 * then runs the agentic-db CLI as a subprocess and asserts on output.
 *
 * Data seeding uses the superuser `pg` connection (bypasses RLS) so we
 * don't need to configure the full auth stack for mutations.
 * The CLI subprocess reads data through the anonymous GraphQL endpoint.
 *
 * Tests exercise the full stack:
 *   CLI arg parsing → Ollama embedding → HTTP → PostGraphile → pgvector → results
 *
 * Requires:
 *   - Docker with constructiveio/postgres-plus:18
 *   - pgpm CLI installed
 *   - Ollama running with nomic-embed-text model pulled
 *
 * Environment:
 *   - OLLAMA_URL (default: http://localhost:11434)
 *   - Standard PG env vars (PGHOST, PGPORT, PGUSER, PGPASSWORD)
 */
jest.setTimeout(600000);

import { spawn } from 'child_process';
import { createServer, IncomingMessage, ServerResponse, Server } from 'http';
import { mkdirSync, writeFileSync, rmSync } from 'fs';
import { tmpdir } from 'os';
import { join } from 'path';
import { getConnections } from 'graphql-server-test';
import { seed } from 'pgsql-test';

// Pre-baked embeddings generated with nomic-embed-text
import fixtures from '../../agentic-db/__tests__/fixtures/rag-embeddings.json';

const SCHEMAS = [
  'agentic_db_app_public',
  'agentic_db_auth_public',
  'agentic_db_users_public',
];

const OLLAMA_URL = process.env.OLLAMA_URL || 'http://localhost:11434';

// Paths relative to repo root
const REPO_ROOT = join(__dirname, '..', '..', '..');
const CLI_ENTRY = join(REPO_ROOT, 'sdk', 'cli', 'src', 'index.ts');
// Use the direct tsx binary — avoids npx overhead and HOME-cache issues
// that cause hangs when HOME is overridden to a temp directory.
const TSX_BIN = join(REPO_ROOT, 'node_modules', '.bin', 'tsx');

// CLI subprocess timeout — generous to account for tsx cold start + Ollama model loading
const CLI_TIMEOUT = 120_000;

let server: { url: string; graphqlUrl: string; port: number };
let pg: any;
let teardown: () => Promise<void>;
let query: any;

// Isolated HOME for appstash config so tests don't pollute real config
let testHome: string;

// Local Ollama proxy — forwards embedding requests to real Ollama.
// This avoids networking issues when tsx subprocesses call Docker services.
let ollamaProxy: Server;
let ollamaProxyUrl: string;

/**
 * Create a simple HTTP proxy that forwards requests to the real Ollama server.
 * Runs inside the Jest process where fetch() is known to work.
 */
function createOllamaProxy(): Promise<{ server: Server; url: string }> {
  return new Promise((resolve, reject) => {
    const proxyServer = createServer((req: IncomingMessage, res: ServerResponse) => {
      const chunks: Buffer[] = [];
      req.on('data', (chunk: Buffer) => chunks.push(chunk));
      req.on('end', async () => {
        const body = Buffer.concat(chunks).toString();
        try {
          const ollamaRes = await fetch(`${OLLAMA_URL}${req.url}`, {
            method: req.method || 'POST',
            headers: { 'Content-Type': 'application/json' },
            body,
          });
          const data = await ollamaRes.text();
          res.writeHead(ollamaRes.status, { 'Content-Type': 'application/json' });
          res.end(data);
        } catch (e: any) {
          res.writeHead(502);
          res.end(JSON.stringify({ error: e.message }));
        }
      });
    });

    proxyServer.listen(0, '127.0.0.1', () => {
      const addr = proxyServer.address() as { port: number };
      resolve({
        server: proxyServer,
        url: `http://127.0.0.1:${addr.port}`,
      });
    });

    proxyServer.on('error', reject);
  });
}

/**
 * Set up appstash config files so the CLI subprocess can find
 * the test server's GraphQL endpoint.
 */
function setupCliContext(graphqlUrl: string, ollamaUrl: string): void {
  const appstashRoot = join(testHome, '.agentic-db');
  const configDir = join(appstashRoot, 'config');
  const contextsDir = join(configDir, 'contexts');

  mkdirSync(contextsDir, { recursive: true });

  const now = new Date().toISOString();
  writeFileSync(
    join(contextsDir, 'e2e-test.json'),
    JSON.stringify({
      name: 'e2e-test',
      endpoint: graphqlUrl,
      createdAt: now,
      updatedAt: now,
    }),
  );

  writeFileSync(
    join(configDir, 'settings.json'),
    JSON.stringify({ currentContext: 'e2e-test' }),
  );

  // Write RAG config pointing at the local Ollama proxy
  mkdirSync(join(testHome, '.config', 'agentic-db'), { recursive: true });
  writeFileSync(
    join(testHome, '.config', 'agentic-db', 'rag.json'),
    JSON.stringify({
      provider: 'ollama',
      ollamaUrl: ollamaUrl,
      embeddingModel: 'nomic-embed-text',
      chatModel: 'llama3.2',
    }),
  );
}

/**
 * Parse a shell-like arg string into an array, respecting quoted strings.
 * e.g. 'search "hello world" --json' → ['search', 'hello world', '--json']
 */
function parseArgs(args: string): string[] {
  const result: string[] = [];
  let current = '';
  let inQuote = false;
  let quoteChar = '';
  for (const ch of args) {
    if (inQuote) {
      if (ch === quoteChar) { inQuote = false; } else { current += ch; }
    } else if (ch === '"' || ch === "'") {
      inQuote = true;
      quoteChar = ch;
    } else if (/\s/.test(ch)) {
      if (current) { result.push(current); current = ''; }
    } else {
      current += ch;
    }
  }
  if (current) result.push(current);
  return result;
}

/**
 * Run a CLI command as a subprocess, returning stdout.
 * Uses spawn (async) instead of execSync so the Node.js event loop
 * stays free — the PostGraphile server and Ollama proxy both run in
 * this Jest process and must be able to handle requests while the
 * subprocess is running.
 */
function runCli(args: string, options: { timeout?: number } = {}): Promise<string> {
  return new Promise((resolve, reject) => {
    const timeout = options.timeout || CLI_TIMEOUT;
    const child = spawn(TSX_BIN, [CLI_ENTRY, ...parseArgs(args)], {
      cwd: REPO_ROOT,
      env: {
        ...process.env,
        HOME: testHome,
        OLLAMA_URL: ollamaProxyUrl,
        PATH: process.env.PATH,
        NODE_PATH: join(REPO_ROOT, 'node_modules'),
        // Clear Jest-inherited NODE_OPTIONS that may conflict with tsx
        NODE_OPTIONS: '',
      },
      stdio: ['pipe', 'pipe', 'pipe'],
    });

    let stdout = '';
    let stderr = '';
    child.stdout.on('data', (data: Buffer) => { stdout += data.toString(); });
    child.stderr.on('data', (data: Buffer) => { stderr += data.toString(); });

    const timer = setTimeout(() => {
      child.kill('SIGKILL');
      reject(new Error(
        `CLI timed out after ${timeout}ms\nstdout: ${stdout}\nstderr: ${stderr}`
      ));
    }, timeout);

    child.on('close', (code) => {
      clearTimeout(timer);
      if (code === 0) {
        resolve(stdout);
      } else {
        reject(new Error(
          `CLI exited with code ${code}\nstdout: ${stdout}\nstderr: ${stderr}`
        ));
      }
    });

    child.on('error', (err) => {
      clearTimeout(timer);
      reject(err);
    });
  });
}

describe('CLI E2E Tests (real HTTP server + subprocess)', () => {
  beforeAll(async () => {
    // Create isolated temp home for appstash
    testHome = join(tmpdir(), `agentic-db-e2e-${Date.now()}`);
    mkdirSync(testHome, { recursive: true });

    // Start local Ollama proxy (avoids tsx subprocess networking issues)
    const proxy = await createOllamaProxy();
    ollamaProxy = proxy.server;
    ollamaProxyUrl = proxy.url;

    // Spin up real PostGraphile HTTP server + test database
    const connections = await getConnections(
      {
        schemas: SCHEMAS,
        authRole: 'anonymous',
        server: {
          api: {
            enableServicesApi: false,
          },
        },
      },
      [
        seed.pgpm(join(REPO_ROOT, 'packages', 'agentic-db')),
      ],
    );

    server = connections.server;
    pg = connections.pg;
    query = connections.query;
    teardown = connections.teardown;

    // Grant anonymous role read access to app tables so the CLI
    // can query via the HTTP server without JWT auth.
    // Data is seeded via superuser (pg), bypassing RLS entirely.
    await pg.query(`
      GRANT USAGE ON SCHEMA agentic_db_app_public TO anonymous;
      GRANT SELECT ON ALL TABLES IN SCHEMA agentic_db_app_public TO anonymous;
    `);

    // ---- Seed all test data once (superuser, bypasses RLS) ----

    // 0. Create a stub for app_jobs.add_job so that INSERT triggers
    //    (e.g. contacts_enqueue_chunking, notes_enqueue_chunking) don't fail.
    //    The real function lives in graphile-worker which isn't deployed in the test DB.
    await pg.query(`
      CREATE SCHEMA IF NOT EXISTS app_jobs;
      CREATE OR REPLACE FUNCTION app_jobs.add_job(
        _database_id uuid,
        _task text,
        _payload jsonb DEFAULT '{}'::jsonb
      ) RETURNS void AS $$ BEGIN /* no-op stub */ END; $$ LANGUAGE plpgsql;
    `);

    // 1. Create a user entity via signUp (anonymous mutation — no auth needed)
    const signUpResult = await query(
      `mutation SignUp($input: SignUpInput!) {
        signUp(input: $input) {
          result { userId }
        }
      }`,
      {
        input: {
          email: `e2e-${Date.now()}-${Math.random().toString(36).slice(2, 8)}@example.com`,
          password: 'testpassword123',
        },
      },
    );

    const signUpData = (signUpResult as any)?.data?.signUp?.result;
    if (!signUpData) throw new Error(`signUp failed: ${JSON.stringify(signUpResult)}`);

    const { userId } = signUpData;

    // 2. Insert contacts via direct SQL (superuser, bypasses RLS)
    const insertContact = async (
      firstName: string,
      lastName: string,
      headline: string,
      bio: string,
    ): Promise<string> => {
      const result = await pg.query(
        `INSERT INTO "agentic_db_app_public".contacts
           (entity_id, first_name, last_name, headline, bio)
         VALUES ($1, $2, $3, $4, $5)
         RETURNING id`,
        [userId, firstName, lastName, headline, bio],
      );
      return result.rows[0].id;
    };

    const carolId = await insertContact(
      'Carol', 'Engineer',
      fixtures.records.carol.data.headline,
      fixtures.records.carol.data.bio,
    );
    const daveId = await insertContact(
      'Dave', 'Chef',
      fixtures.records.dave.data.headline,
      fixtures.records.dave.data.bio,
    );
    const eveId = await insertContact(
      'Eve', 'Scientist',
      fixtures.records.eve.data.headline,
      fixtures.records.eve.data.bio,
    );

    // 3. Insert notes via direct SQL (superuser)
    const insertNote = async (content: string): Promise<string> => {
      const result = await pg.query(
        `INSERT INTO "agentic_db_app_public".notes
           (entity_id, content)
         VALUES ($1, $2)
         RETURNING id`,
        [userId, content],
      );
      return result.rows[0].id;
    };

    const noteArchId = await insertNote(fixtures.records.note_architecture.data.content);
    await insertNote(fixtures.records.note_meeting.data.content);

    // 4. Set embeddings via direct SQL (superuser)
    const setEmbedding = async (table: string, id: string, embedding: number[], text: string) => {
      await pg.query(
        `UPDATE "agentic_db_app_public".${table}
         SET embedding = $1::vector, embedding_text = $2
         WHERE id = $3`,
        [`[${embedding.join(',')}]`, text, id],
      );
    };

    await setEmbedding('contacts', carolId, fixtures.records.carol.embedding, fixtures.records.carol.text);
    await setEmbedding('contacts', daveId, fixtures.records.dave.embedding, fixtures.records.dave.text);
    await setEmbedding('contacts', eveId, fixtures.records.eve.embedding, fixtures.records.eve.text);
    await setEmbedding('notes', noteArchId, fixtures.records.note_architecture.embedding, fixtures.records.note_architecture.text);

    // 5. Insert chunks via direct SQL
    await pg.query(
      `INSERT INTO "agentic_db_app_public".contacts_chunks
         (contacts_id, content, chunk_index, embedding)
       VALUES ($1, $2, $3, $4::vector)`,
      [
        carolId,
        fixtures.records.chunk_carol_pgconf.data.content,
        0,
        `[${fixtures.records.chunk_carol_pgconf.embedding.join(',')}]`,
      ],
    );

    // 6. Configure CLI context to point at test server + Ollama proxy
    setupCliContext(server.graphqlUrl, ollamaProxyUrl);

    // 7. Warm up Ollama model so first CLI call doesn't timeout on model load
    try {
      const warmUpRes = await fetch(`${OLLAMA_URL}/api/embeddings`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ model: 'nomic-embed-text', prompt: 'warm up' }),
      });
      if (!warmUpRes.ok) {
        console.warn(`Ollama warm-up returned ${warmUpRes.status}`);
      }
    } catch (e) {
      console.warn('Ollama warm-up failed (may cause timeouts):', e);
    }
  });

  afterAll(async () => {
    if (ollamaProxy) {
      await new Promise<void>((resolve) => ollamaProxy.close(() => resolve()));
    }
    try {
      rmSync(testHome, { recursive: true, force: true });
    } catch { /* ignore */ }
    if (teardown) await teardown();
  });

  // =========================================================================
  // Server health
  // =========================================================================

  it('should have a running HTTP server', () => {
    expect(server.url).toMatch(/^http:\/\/127\.0\.0\.1:\d+$/);
    expect(server.graphqlUrl).toMatch(/^http:\/\/127\.0\.0\.1:\d+\/graphql$/);
    expect(server.port).toBeGreaterThan(0);
  });

  it('should respond to GraphQL introspection', async () => {
    const result = await query(
      `{ __schema { queryType { name } } }`,
    );
    expect((result as any).data.__schema.queryType.name).toBe('Query');
  });

  // =========================================================================
  // Diagnostic — verify Ollama proxy is working
  // =========================================================================

  it('should reach Ollama through the local proxy', async () => {
    const res = await fetch(`${ollamaProxyUrl}/api/embeddings`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ model: 'nomic-embed-text', prompt: 'proxy test' }),
    });
    expect(res.ok).toBe(true);
    const data = (await res.json()) as { embedding: number[] };
    expect(data.embedding.length).toBe(768);
  });

  // =========================================================================
  // CLI subprocess tests — search command
  // =========================================================================

  it('should run "search" and find Carol for a database query', async () => {
    const output = await runCli('search "PostgreSQL distributed systems engineer" --json --tty false');
    const results = JSON.parse(output);

    expect(Array.isArray(results)).toBe(true);
    expect(results.length).toBeGreaterThan(0);

    // Carol should appear in results
    const carol = results.find((r: any) =>
      r.name?.toLowerCase().includes('carol') ||
      r.data?.firstName === 'Carol'
    );
    expect(carol).toBeDefined();
    expect(carol.score).toBeGreaterThan(0);
    expect(carol.table).toBe('contacts');
  });

  it('should run "search" and rank Dave higher for cooking query', async () => {
    const output = await runCli('search "French pastry chef chocolate dessert" --json --tty false');
    const results = JSON.parse(output);

    expect(Array.isArray(results)).toBe(true);
    expect(results.length).toBeGreaterThan(0);

    const dave = results.find((r: any) =>
      r.name?.toLowerCase().includes('dave') ||
      r.data?.firstName === 'Dave'
    );
    const carol = results.find((r: any) =>
      r.name?.toLowerCase().includes('carol') ||
      r.data?.firstName === 'Carol'
    );
    expect(dave).toBeDefined();
    expect(carol).toBeDefined();
    expect(dave.score).toBeGreaterThan(carol.score);
  });

  it('should run "search" with --tables filter', async () => {
    const output = await runCli('search "pgvector architecture" --tables contacts --json --tty false');
    const results = JSON.parse(output);

    expect(Array.isArray(results)).toBe(true);
    // All results should be from contacts table only
    for (const r of results) {
      expect(r.table).toBe('contacts');
    }
  });

  it('should run "search" with --limit flag', async () => {
    const output = await runCli('search "engineer" --limit 1 --json --tty false');
    const results = JSON.parse(output);

    expect(Array.isArray(results)).toBe(true);
    // Should respect the per-table limit
    const contactResults = results.filter((r: any) => r.table === 'contacts');
    expect(contactResults.length).toBeLessThanOrEqual(1);
  });

  it('should return results from multiple tables', async () => {
    const output = await runCli('search "vector database architecture" --tables contacts,notes --json --tty false');
    const results = JSON.parse(output);

    expect(Array.isArray(results)).toBe(true);

    const tables = new Set(results.map((r: any) => r.table));
    // Should have results from both contacts and notes
    expect(tables.has('contacts')).toBe(true);
    expect(tables.has('notes')).toBe(true);
  });

  // =========================================================================
  // CLI subprocess tests — human-readable output
  // =========================================================================

  it('should produce human-readable output without --json', async () => {
    const output = await runCli('search "PostgreSQL engineer" --tty false');

    // Should contain search indicator and result formatting
    expect(output).toContain('Searching:');
    expect(output).toContain('Found');
    expect(output).toContain('results');
    // Should show score bars
    expect(output).toContain('Score:');
  });

  // =========================================================================
  // CLI subprocess tests — ask command (context mode)
  // =========================================================================

  it('should run "ask" in context-only mode and return relevant context', async () => {
    // --context flag skips LLM call, just dumps retrieved context
    const output = await runCli('ask "Who knows about databases?" --context --tty false');

    // Should contain Carol (DB engineer) in the context
    expect(output.toLowerCase()).toContain('carol');
  });
});
