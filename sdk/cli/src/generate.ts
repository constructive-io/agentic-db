/**
 * generate.ts — Generate CLI from schema files
 * 
 * Run with: pnpm --filter @agentic-db/cli run generate
 */

import * as path from 'path';
import * as fs from 'fs';

import { generate } from '@constructive-io/graphql-codegen';

async function main() {
  const schemaFile = path.resolve(__dirname, '../../schemas/agentic-db.graphql');
  const outputDir = path.resolve(__dirname, '../generated');

  if (!fs.existsSync(schemaFile)) {
    console.error('❌ Schema not found:', schemaFile);
    console.error('   Run: pnpm --filter @agentic-db/schemas run export');
    process.exit(1);
  }

  console.log('\n🔧 Generating CLI from schema\n');
  console.log(`   Schema: ${schemaFile}`);
  console.log(`   Output: ${outputDir}`);

  fs.mkdirSync(outputDir, { recursive: true });

  const result = await generate({
    schemaFile,
    output: outputDir,
    cli: {
      toolName: 'agentic-db',
      entryPoint: true,
    },
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

  console.log('\n✅ CLI generated at sdk/cli/generated/\n');
}

main().catch((err) => {
  console.error('\n❌ Error:', err.message ?? err);
  process.exit(1);
});
