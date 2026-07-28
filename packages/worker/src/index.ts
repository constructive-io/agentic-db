import { Pool } from 'pg';
import * as dotenv from 'dotenv';
import { resolve } from 'path';

import { runOneJob, type TaskList } from './app-jobs-worker';
import generateEmbeddingTask from './tasks/generate_embedding';
import generateChunksTask from './tasks/generate_chunks';

// Load env
dotenv.config({ path: resolve(__dirname, '../../../../.env') });

const connectionString = process.env.DATABASE_URL || 'postgres://postgres:password@localhost:5432/agentdb';
const POLL_INTERVAL_MS = parseInt(process.env.WORKER_POLL_INTERVAL || '1000', 10);

/**
 * Task list shared with tests. The deployed triggers enqueue
 * `generate_embedding` / `generate_chunks`; the namespaced identifiers
 * (`embedding:*`, `chunk:*`) match the Constructive compute-worker
 * convention so schemas exported after the upstream rename keep working.
 * `embed_record` is the legacy pre-rename producer name.
 */
export const taskList: TaskList = {
  generate_embedding: generateEmbeddingTask,
  generate_chunks: generateChunksTask,
  'embedding:generate_embedding': generateEmbeddingTask,
  'chunk:generate_chunks': generateChunksTask,
  embed_record: generateEmbeddingTask,
};

export { drainJobs, runOneJob } from './app-jobs-worker';
export type { Task, TaskList, Queryable, Logger } from './app-jobs-worker';

const sleep = (ms: number) => new Promise((r) => setTimeout(r, ms));

async function main() {
  console.log(`🚀 Starting app_jobs worker connected to ${connectionString}...`);

  const pool = new Pool({ connectionString });
  const workerId = `agentic-db-worker-${process.pid}`;
  let stopping = false;

  const stop = () => {
    stopping = true;
  };
  process.on('SIGINT', stop);
  process.on('SIGTERM', stop);

  while (!stopping) {
    const client = await pool.connect();
    try {
      const job = await runOneJob(client, taskList, workerId, console);
      if (!job) {
        await sleep(POLL_INTERVAL_MS);
      }
    } finally {
      client.release();
    }
  }

  await pool.end();
}

if (require.main === module) {
  main().catch((err) => {
    console.error('❌ Worker error:', err);
    process.exit(1);
  });
}
