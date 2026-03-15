/**
 * generate.ts — Generate SDK from schema files (no URL needed)
 * 
 * Run with: pnpm --filter @agentic-db/sdk run generate
 */

import * as path from 'path';
import * as fs from 'fs';

import { generate } from '@constructive-io/graphql-codegen';

async function main() {
  // Resolve schema directory from workspace dependency
  const schemaDir = path.resolve(__dirname, '../../schemas');
  const outputDir = path.resolve(__dirname, '../src/generated');

  // Verify schema exists
  const schemaFile = path.join(schemaDir, 'agentic-db.graphql');
  if (!fs.existsSync(schemaFile)) {
    console.error('❌ Schema not found:', schemaFile);
    console.error('   Run: pnpm --filter @agentic-db/schemas run export');
    process.exit(1);
  }

  console.log('\n🔧 Generating SDK from schema\n');
  console.log(`   Schema: ${schemaFile}`);
  console.log(`   Output: ${outputDir}`);

  if (!fs.existsSync(outputDir)) {
    fs.mkdirSync(outputDir, { recursive: true });
  }

  const result = await generate({
    schemaFile,
    output: outputDir,
    orm: true,
    nodeHttpAdapter: true,
    docs: {
      readme: true,
      agents: true,
      skills: true,
    },
    verbose: true,
  });

  if (!result.success) {
    console.error('\n❌ Generation failed:', result.message);
    process.exit(1);
  }

  console.log('\n✅ SDK generated at sdk/agentic-db-sdk/src/generated/\n');
  console.log('   Tables:', result.tables?.join(', '));
}

main().catch((err) => {
  console.error('\n❌ Error:', err.message ?? err);
  process.exit(1);
});
