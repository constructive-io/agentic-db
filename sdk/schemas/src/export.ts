/**
 * export.ts — Export GraphQL schema from agent-os database
 * 
 * Run with: pnpm --filter @agent-os/schemas run export
 */

import * as dotenv from 'dotenv';
import * as path from 'path';

dotenv.config({ path: path.resolve(__dirname, '../../../.env') });

import { generate } from '@constructive-io/graphql-codegen';

const databaseName = process.env.DATABASE_NAME;

if (!databaseName) {
  console.error('❌ Missing DATABASE_NAME in .env');
  process.exit(1);
}

async function main() {
  const host = `app-public-${databaseName}.localhost`;
  const endpoint = 'http://[::1]:3000/graphql';
  const outputDir = path.resolve(__dirname, '..');

  console.log('\n📤 Exporting schema for', databaseName, '\n');
  console.log(`   Host: ${host}`);
  console.log(`   Output: ${outputDir}/agent-os.graphql`);

  const result = await generate({
    endpoint,
    headers: { Host: host },
    schemaOnly: true,
    schemaOnlyOutput: outputDir,
    schemaOnlyFilename: 'agent-os.graphql',
    verbose: true,
  });

  if (!result.success) {
    console.error('\n❌ Export failed:', result.message);
    process.exit(1);
  }

  console.log('\n✅ Schema exported to sdk/schemas/agent-os.graphql\n');
}

main().catch((err) => {
  console.error('\n❌ Error:', err.message ?? err);
  process.exit(1);
});
