/**
 * generate.ts — Generate typed SDK from agent-os database
 */

import * as dotenv from 'dotenv';
import * as path from 'path';
import * as fs from 'fs';

dotenv.config({ path: path.resolve(__dirname, '../../../.env') });

import { generate } from '@constructive-io/graphql-codegen';

const databaseName = process.env.DATABASE_NAME;

if (!databaseName) {
  console.error('❌ Missing DATABASE_NAME in .env');
  process.exit(1);
}

async function main() {
  console.log('\n🔧 Generating SDK for', databaseName, '\n');

  // Use IPv6 localhost with Host header approach
  const host = `app-public-${databaseName}.localhost`;
  const endpoint = `http://[::1]:3000/graphql`;
  const outputDir = path.resolve(__dirname, '../generated/agent-os-sdk');
  
  console.log(`   Host: ${host}`);
  console.log(`   Endpoint: ${endpoint}`);
  console.log(`   Output: ${outputDir}`);
  
  fs.mkdirSync(outputDir, { recursive: true });

  const result = await generate({
    endpoint,
    headers: {
      Host: host,
    },
    output: outputDir,
    orm: true,
    nodeHttpAdapter: true,
    browserCompatible: false,
    docs: {
      readme: true,
      agents: true,
      skills: true,
    },
    scalars: {
      BigFloat: 'string',
      Cursor: 'string',
      Datetime: 'string',
      JSON: 'Record<string, unknown>',
      UUID: 'string',
    },
    verbose: true,
  });

  console.log('\nResult:', JSON.stringify(result, null, 2));
  
  if (fs.existsSync(outputDir)) {
    console.log('\nGenerated files:');
    const files = fs.readdirSync(outputDir);
    files.forEach(f => console.log(`   ${f}`));
  }

  console.log('\n✅ Done!\n');
}

main().catch((err) => {
  console.error('\n❌ Error:', err.message ?? err);
  process.exit(1);
});
