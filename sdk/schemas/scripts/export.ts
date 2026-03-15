/**
 * export.ts — Export GraphQL schema from live API using constructive-graphql-codegen
 */
import { generate } from '@constructive-io/graphql-codegen';
import * as path from 'path';
import * as dotenv from 'dotenv';

// Load root env
dotenv.config({ path: path.resolve(__dirname, '../../../.env') });

async function main() {
  const DATABASE_NAME = process.env.DATABASE_NAME || 'agentic-db-1772448876647';
  const APP_HOST = `app-public-${DATABASE_NAME}.localhost`;
  const GRAPHQL_URL = 'http://[::1]:3000/graphql';

  console.log(`\n📥 Exporting schema from ${APP_HOST}\n`);

  const result = await generate({
    endpoint: GRAPHQL_URL,
    headers: { Host: APP_HOST },
    schemaOnly: true,
    schemaOnlyOutput: path.resolve(__dirname, '..'),
    schemaOnlyFilename: 'agentic-db.graphql',
    verbose: true,
  });

  if (result.success) {
    console.log('\n✅ Schema exported successfully!');
  } else {
    console.error('\n❌ Export failed:', result.message);
    process.exit(1);
  }
}

main().catch((err) => {
  console.error('\n❌ Error:', err.message ?? err);
  process.exit(1);
});
