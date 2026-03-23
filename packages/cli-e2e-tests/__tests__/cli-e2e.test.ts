/**
 * CLI End-to-End Tests — Real HTTP Server + CLI Subprocess
 *
 * Spins up a real PostGraphile HTTP server via graphql-server-test,
 * seeds contacts/notes with pre-baked embeddings, then runs the
 * agentic-db CLI as a subprocess and asserts on the output.
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
jest.setTimeout(300000);

import { execSync } from 'child_process';
import { mkdirSync, writeFileSync } from 'fs';
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

let server: { url: string; graphqlUrl: string; port: number };
let pg: any;
let db: any;
let teardown: () => Promise<void>;
let query: any;

// Isolated HOME for appstash config so tests don't pollute real config
let testHome: string;
let testConfigDir: string;

/**
 * Set up appstash config files so the CLI subprocess can find
 * the test server's GraphQL endpoint.
 */
function setupCliContext(graphqlUrl: string, accessToken?: string): void {
  // appstash stores config at ~/.<tool>/config/
  const appstashRoot = join(testHome, '.agentic-db');
  const configDir = join(appstashRoot, 'config');
  const contextsDir = join(configDir, 'contexts');

  mkdirSync(contextsDir, { recursive: true });

  // Write context file
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

  // Write settings pointing to our context
  writeFileSync(
    join(configDir, 'settings.json'),
    JSON.stringify({ currentContext: 'e2e-test' }),
  );

  // Write credentials if we have a token
  if (accessToken) {
    writeFileSync(
      join(configDir, 'credentials.json'),
      JSON.stringify({
        tokens: {
          'e2e-test': {
            token: accessToken,
            expiresAt: new Date(Date.now() + 3600000).toISOString(),
          },
        },
      }),
    );
  }

  // Write RAG config (defaults to Ollama)
  mkdirSync(join(testHome, '.config', 'agentic-db'), { recursive: true });
  writeFileSync(
    join(testHome, '.config', 'agentic-db', 'rag.json'),
    JSON.stringify({
      provider: 'ollama',
      ollamaUrl: OLLAMA_URL,
      embeddingModel: 'nomic-embed-text',
      chatModel: 'llama3.2',
    }),
  );
}

/**
 * Run a CLI command as a subprocess, returning stdout.
 */
function runCli(args: string, options: { timeout?: number } = {}): string {
  const cmd = `npx tsx ${CLI_ENTRY} ${args}`;
  const result = execSync(cmd, {
    cwd: REPO_ROOT,
    timeout: options.timeout || 60000,
    env: {
      ...process.env,
      HOME: testHome,
      OLLAMA_URL,
      // Ensure the subprocess can find node_modules
      PATH: process.env.PATH,
      NODE_PATH: join(REPO_ROOT, 'node_modules'),
    },
    encoding: 'utf-8',
    stdio: ['pipe', 'pipe', 'pipe'],
  });
  return result;
}

describe('CLI E2E Tests (real HTTP server + subprocess)', () => {
  beforeAll(async () => {
    // Create isolated temp home for appstash
    testHome = join(tmpdir(), `agentic-db-e2e-${Date.now()}`);
    testConfigDir = join(testHome, '.agentic-db', 'config');
    mkdirSync(testHome, { recursive: true });

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
    db = connections.db;
    query = connections.query;
    teardown = connections.teardown;

    // Bootstrap: set app membership defaults and create app_jobs stub
    await pg.query(
      `UPDATE "agentic_db_memberships_public".app_membership_defaults
       SET is_verified = true, is_approved = true`,
    );
    await pg.query(`
      CREATE OR REPLACE FUNCTION app_jobs.add_job(
        _database_id uuid, _task text, _payload jsonb
      ) RETURNS void AS $$ BEGIN END; $$ LANGUAGE plpgsql;
      GRANT USAGE ON SCHEMA app_jobs TO authenticated;
      GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA app_jobs TO authenticated;
    `);
  });

  afterAll(async () => {
    if (teardown) await teardown();
  });

  beforeEach(() => db.beforeEach());
  afterEach(() => db.afterEach());

  /**
   * Seed test data: sign up, create contacts/notes with pre-baked embeddings,
   * insert chunks, and configure CLI context.
   * Returns the access token for authenticated requests.
   */
  async function seedTestData(): Promise<string> {
    // 1. Sign up a test user
    const signUpResult = await query(
      `mutation SignUp($input: SignUpInput!) {
        signUp(input: $input) {
          result { userId accessToken }
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

    const { userId, accessToken } = signUpData;

    // Auth headers for HTTP-based GraphQL queries (SuperTest)
    // db.setContext() only works for direct DB connections, not HTTP requests
    const authHeaders = { Authorization: `Bearer ${accessToken}` };

    // 2. Create contacts via GraphQL (with auth headers)
    const createContact = async (
      firstName: string,
      lastName: string,
      headline: string,
      bio: string,
    ) => {
      const result = await query(
        `mutation CreateContact($input: CreateContactInput!) {
          createContact(input: $input) {
            contact { id }
          }
        }`,
        {
          input: {
            contact: {
              entityId: userId,
              firstName,
              lastName,
              headline,
              bio,
            },
          },
        },
        authHeaders,
      );
      const data = (result as any)?.data?.createContact?.contact;
      if (!data) throw new Error(`createContact failed: ${JSON.stringify(result)}`);
      return data.id;
    };

    const carolId = await createContact(
      'Carol', 'Engineer',
      fixtures.records.carol.data.headline,
      fixtures.records.carol.data.bio,
    );
    const daveId = await createContact(
      'Dave', 'Chef',
      fixtures.records.dave.data.headline,
      fixtures.records.dave.data.bio,
    );
    const eveId = await createContact(
      'Eve', 'Scientist',
      fixtures.records.eve.data.headline,
      fixtures.records.eve.data.bio,
    );

    // 3. Create notes via GraphQL (with auth headers)
    const createNote = async (content: string) => {
      const result = await query(
        `mutation CreateNote($input: CreateNoteInput!) {
          createNote(input: $input) {
            note { id }
          }
        }`,
        {
          input: {
            note: {
              entityId: userId,
              content,
            },
          },
        },
        authHeaders,
      );
      const data = (result as any)?.data?.createNote?.note;
      if (!data) throw new Error(`createNote failed: ${JSON.stringify(result)}`);
      return data.id;
    };

    const noteArchId = await createNote(fixtures.records.note_architecture.data.content);
    await createNote(fixtures.records.note_meeting.data.content);

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

    // 5. Insert chunks
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
    setupCliContext(server.graphqlUrl, accessToken);

    return accessToken;
  }

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
  // CLI subprocess tests — search command
  // =========================================================================

  it('should run "search" and find Carol for a database query', async () => {
    await seedTestData();

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

  it('should run "search" and rank Dave higher for cooking query', async () => {
    await seedTestData();

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

  it('should run "search" with --tables filter', async () => {
    await seedTestData();

    const output = runCli('search "pgvector architecture" --tables contacts --json --tty false');
    const results = JSON.parse(output);

    expect(Array.isArray(results)).toBe(true);
    // All results should be from contacts table only
    for (const r of results) {
      expect(r.table).toBe('contacts');
    }
  });

  it('should run "search" with --limit flag', async () => {
    await seedTestData();

    const output = runCli('search "engineer" --limit 1 --json --tty false');
    const results = JSON.parse(output);

    expect(Array.isArray(results)).toBe(true);
    // Should respect the per-table limit
    const contactResults = results.filter((r: any) => r.table === 'contacts');
    expect(contactResults.length).toBeLessThanOrEqual(1);
  });

  it('should return results from multiple tables', async () => {
    await seedTestData();

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

  it('should produce human-readable output without --json', async () => {
    await seedTestData();

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

  it('should run "ask" in context-only mode and return relevant context', async () => {
    await seedTestData();

    // --context flag skips LLM call, just dumps retrieved context
    const output = runCli('ask "Who knows about databases?" --context --tty false');

    // Should contain Carol (DB engineer) in the context
    expect(output.toLowerCase()).toContain('carol');
  });
});
