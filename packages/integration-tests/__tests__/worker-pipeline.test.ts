/**
 * Worker Pipeline Integration Test for agentic-db
 *
 * Exercises the full auto-embedding path end-to-end with REAL Ollama:
 *
 *   INSERT row → trigger enqueues app_jobs job → worker claims the job →
 *   composes text → Ollama embedding → vector written back → queue drained
 *
 * This is the path the self-hosted worker (`packages/worker`) serves, and
 * the regression test for issue #40: the triggers enqueue
 * `generate_embedding` / `generate_chunks`, and the worker must register
 * exactly those task identifiers against `app_jobs.jobs` (NOT the
 * `graphile_worker` schema).
 *
 * Requirements:
 *   - Ollama running with nomic-embed-text model pulled (OLLAMA_URL)
 */
import path from 'path';
import { getConnectionsObject, seed } from 'graphile-test';
import type { PgTestClient } from 'pgsql-test';

import { taskList, drainJobs } from '../../worker/src/index';

jest.setTimeout(300000);

const seedRoot = path.join(__dirname, '..', '__fixtures__', 'seed');
const sql = (file: string) => path.join(seedRoot, file);

const AGENTIC_DB_PKG = path.resolve(__dirname, '..', '..', 'agentic-db');
const SCHEMAS = ['agentic_db_app_public'];

let db: PgTestClient;
let teardown: () => Promise<void>;

beforeAll(async () => {
  const connections = await getConnectionsObject(
    {
      schemas: SCHEMAS,
      useRoot: true,
      authRole: 'postgres',
    },
    [seed.pgpm(AGENTIC_DB_PKG), seed.sqlfile([sql('test-bootstrap.sql')])],
  );

  db = connections.pg;
  teardown = connections.teardown;
});

afterAll(async () => {
  if (teardown) {
    await teardown();
  }
});

describe('worker task registration', () => {
  it('registers the task identifiers the deployed triggers enqueue', () => {
    // Regression for issue #40: the trigger functions enqueue these names.
    expect(Object.keys(taskList)).toEqual(
      expect.arrayContaining(['generate_embedding', 'generate_chunks']),
    );
  });

  it('covers every task identifier any deployed trigger function enqueues', async () => {
    const { rows } = await db.query(`
      SELECT DISTINCT (regexp_matches(p.prosrc, $$add_job\\s*\\(\\s*'([^']+)'$$, 'g'))[1] AS task_identifier
      FROM pg_proc p
      JOIN pg_namespace n ON n.oid = p.pronamespace
      WHERE n.nspname = 'agentic_db_app_private'
        AND p.prosrc LIKE '%add_job%'
    `);
    const enqueued = rows.map((r: any) => r.task_identifier).sort();
    expect(enqueued.length).toBeGreaterThan(0);
    for (const identifier of enqueued) {
      expect(Object.keys(taskList)).toContain(identifier);
    }
  });
});

describe('trigger → app_jobs → worker → embedding', () => {
  it('embeds a contact end-to-end via the queue', async () => {
    const { rows: inserted } = await db.query(
      `INSERT INTO agentic_db_app_public.contacts (first_name, last_name, headline, bio)
       VALUES ('Ada', 'Lovelace', 'Analyst', 'Pioneer of computing and analytical engines.')
       RETURNING id`,
    );
    const contactId = inserted[0].id;

    // The insert trigger must have enqueued a generate_embedding job
    const { rows: pending } = await db.query(
      `SELECT task_identifier FROM app_jobs.jobs ORDER BY id`,
    );
    expect(pending.map((r: any) => r.task_identifier)).toContain(
      'generate_embedding',
    );

    // Drain the queue with the worker's task list
    const processed = await drainJobs(db, taskList, 'test-worker');
    expect(processed).toBeGreaterThan(0);

    // The embedding must now be present and the row marked fresh
    const { rows } = await db.query(
      `SELECT embedding IS NOT NULL AS has_embedding,
              vector_dims(embedding) AS dims,
              embedding_text,
              embedding_updated_at IS NOT NULL AS is_fresh
       FROM agentic_db_app_public.contacts
       WHERE id = $1`,
      [contactId],
    );
    expect(rows[0].has_embedding).toBe(true);
    expect(rows[0].dims).toBe(768);
    expect(rows[0].embedding_text).toContain('Ada');
    expect(rows[0].is_fresh).toBe(true);

    // No unclaimed jobs left behind (issue #40 symptom)
    const { rows: leftover } = await db.query(
      `SELECT count(*)::int AS count FROM app_jobs.jobs`,
    );
    expect(leftover[0].count).toBe(0);
  });

  it('chunks and embeds a note end-to-end via the queue', async () => {
    const longContent = Array.from(
      { length: 40 },
      (_, i) =>
        `Paragraph ${i}: agentic databases keep embeddings fresh through triggers and background workers.`,
    ).join(' ');

    const { rows: inserted } = await db.query(
      `INSERT INTO agentic_db_app_public.notes (content)
       VALUES ($1)
       RETURNING id`,
      [longContent],
    );
    const noteId = inserted[0].id;

    const processed = await drainJobs(db, taskList, 'test-worker');
    expect(processed).toBeGreaterThan(0);

    const { rows: note } = await db.query(
      `SELECT embedding IS NOT NULL AS has_embedding
       FROM agentic_db_app_public.notes WHERE id = $1`,
      [noteId],
    );
    expect(note[0].has_embedding).toBe(true);

    const { rows: chunks } = await db.query(
      `SELECT count(*)::int AS count,
              bool_and(embedding IS NOT NULL) AS all_embedded
       FROM agentic_db_app_public.notes_chunks
       WHERE notes_id = $1`,
      [noteId],
    );
    expect(chunks[0].count).toBeGreaterThan(1);
    expect(chunks[0].all_embedded).toBe(true);

    const { rows: leftover } = await db.query(
      `SELECT count(*)::int AS count FROM app_jobs.jobs`,
    );
    expect(leftover[0].count).toBe(0);
  });
});
