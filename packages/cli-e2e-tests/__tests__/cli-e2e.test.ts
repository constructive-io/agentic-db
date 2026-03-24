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

import { execSync } from 'child_process';
import { mkdirSync, writeFileSync, rmSync } from 'fs';
import { homedir } from 'os';
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

// Use real HOME for config — overriding HOME in subprocesses can break
// Node.js fetch/undici in some CI environments.
const REAL_HOME = homedir();

/**
 * Set up appstash config files so the CLI subprocess can find
 * the test server's GraphQL endpoint.
 * Writes to real HOME so the subprocess inherits them without
 * needing a HOME override (which can break fetch/undici in CI).
 */
function setupCliContext(graphqlUrl: string): void {
  const appstashRoot = join(REAL_HOME, '.agentic-db');
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

  // Write RAG config (defaults to Ollama)
  mkdirSync(join(REAL_HOME, '.config', 'agentic-db'), { recursive: true });
  writeFileSync(
    join(REAL_HOME, '.config', 'agentic-db', 'rag.json'),
    JSON.stringify({
      provider: 'ollama',
      ollamaUrl: OLLAMA_URL,
      embeddingModel: 'nomic-embed-text',
      chatModel: 'llama3.2',
    }),
  );
}

/**
 * Clean up config files written to real HOME.
 */
function cleanupCliContext(): void {
  try {
    rmSync(join(REAL_HOME, '.agentic-db'), { recursive: true, force: true });
  } catch { /* ignore */ }
  try {
    rmSync(join(REAL_HOME, '.config', 'agentic-db'), { recursive: true, force: true });
  } catch { /* ignore */ }
}

/**
 * Run a CLI command as a subprocess, returning stdout.
 * Uses the direct tsx binary to avoid npx cache/download issues.
 * Does NOT override HOME — config is written to real HOME.
 */
function runCli(args: string, options: { timeout?: number } = {}): string {
  const cmd = `"${TSX_BIN}" ${CLI_ENTRY} ${args}`;
  try {
    const result = execSync(cmd, {
      cwd: REPO_ROOT,
      timeout: options.timeout || CLI_TIMEOUT,
      env: {
        ...process.env,
        OLLAMA_URL,
        PATH: process.env.PATH,
        NODE_PATH: join(REPO_ROOT, 'node_modules'),
      },
      encoding: 'utf-8',
      stdio: ['pipe', 'pipe', 'pipe'],
    });
    return result;
  } catch (e: any) {
    const stderr = e.stderr ? `\nstderr: ${e.stderr}` : '';
    const stdout = e.stdout ? `\nstdout: ${e.stdout}` : '';
    throw new Error(`CLI command failed: ${cmd}\n${e.message}${stderr}${stdout}`);
  }
}

describe('CLI E2E Tests (real HTTP server + subprocess)', () => {
  beforeAll(async () => {
    // Spin up real PostGraphile HTTP server + test database
    // Deploy the agentic-db pgpm package from its directory
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

    // 6. Configure CLI context to point at test server
    setupCliContext(server.graphqlUrl);

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
    cleanupCliContext();
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
  // Diagnostic — verify Ollama is reachable from subprocess
  // =========================================================================

  it('should reach Ollama from a subprocess', () => {
    const script = `fetch('${OLLAMA_URL}/api/embeddings',{method:'POST',headers:{'Content-Type':'application/json'},body:JSON.stringify({model:'nomic-embed-text',prompt:'test'})}).then(r=>r.json()).then(d=>console.log(d.embedding.length)).catch(e=>{console.error(e.message);process.exit(1)})`;
    const result = execSync(`node -e "${script}"`, {
      cwd: REPO_ROOT,
      timeout: 60_000,
      env: { ...process.env, OLLAMA_URL },
      encoding: 'utf-8',
    });
    expect(parseInt(result.trim())).toBe(768);
  });

  // =========================================================================
  // CLI subprocess tests — search command
  // =========================================================================

  it('should run "search" and find Carol for a database query', () => {
    const output = runCli('search "PostgreSQL distributed systems engineer" --json --tty false');
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

  it('should run "search" and rank Dave higher for cooking query', () => {
    const output = runCli('search "French pastry chef chocolate dessert" --json --tty false');
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

  it('should run "search" with --tables filter', () => {
    const output = runCli('search "pgvector architecture" --tables contacts --json --tty false');
    const results = JSON.parse(output);

    expect(Array.isArray(results)).toBe(true);
    // All results should be from contacts table only
    for (const r of results) {
      expect(r.table).toBe('contacts');
    }
  });

  it('should run "search" with --limit flag', () => {
    const output = runCli('search "engineer" --limit 1 --json --tty false');
    const results = JSON.parse(output);

    expect(Array.isArray(results)).toBe(true);
    // Should respect the per-table limit
    const contactResults = results.filter((r: any) => r.table === 'contacts');
    expect(contactResults.length).toBeLessThanOrEqual(1);
  });

  it('should return results from multiple tables', () => {
    const output = runCli('search "vector database architecture" --tables contacts,notes --json --tty false');
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

  it('should produce human-readable output without --json', () => {
    const output = runCli('search "PostgreSQL engineer" --tty false');

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

  it('should run "ask" in context-only mode and return relevant context', () => {
    // --context flag skips LLM call, just dumps retrieved context
    const output = runCli('ask "Who knows about databases?" --context --tty false');

    // Should contain Carol (DB engineer) in the context
    expect(output.toLowerCase()).toContain('carol');
  });
});
