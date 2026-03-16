import { run } from 'graphile-worker';
import * as dotenv from 'dotenv';
import { resolve } from 'path';

import embedRecordTask from './tasks/embed_record';

// Load env
dotenv.config({ path: resolve(__dirname, '../../../../.env') });

const connectionString = process.env.DATABASE_URL || 'postgres://postgres:password@localhost:5432/agentdb';

async function main() {
  console.log(`🚀 Starting Graphile Worker connected to ${connectionString}...`);

  const runner = await run({
    connectionString,
    concurrency: 2,
    noHandleSignals: false,
    pollInterval: 1000,
    taskList: {
      embed_record: embedRecordTask,
    },
  });

  await runner.promise;
}

main().catch((err) => {
  console.error('❌ Worker error:', err);
  process.exit(1);
});
