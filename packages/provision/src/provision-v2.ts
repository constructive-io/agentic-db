/**
 * provision-v2.ts — Agent OS V2 Schema Upgrade Script
 * Run this to apply the new autonomy schemas to an existing database.
 */

import { auth, public_, NodeHttpAdapter } from '@constructive-io/node';
import { config } from './config';
import * as path from 'path';
import { execSync } from 'child_process';
import * as dotenv from 'dotenv';

// Load .env
dotenv.config({ path: path.resolve(__dirname, '../../../../.env') });

const DB_ID = process.env.DATABASE_ID;
const ACCESS_TOKEN = process.env.ACCESS_TOKEN;

if (!DB_ID || !ACCESS_TOKEN) {
  console.error('❌ Missing DATABASE_ID or ACCESS_TOKEN in .env');
  process.exit(1);
}

const childEnv = { ...process.env };

async function main() {
  console.log('\n🚀 Agent-OS v2 Schema Upgrade\n');
  console.log(`   Database ID: ${DB_ID}`);

  const schemaDir = path.resolve(__dirname, 'schemas');

  const runSchema = (scriptName: string) => {
    const scriptPath = path.join(schemaDir, scriptName);
    console.log(`\n▶️  Running ${scriptName}...`);
    try {
      execSync(`npx tsx "${scriptPath}"`, { 
        env: childEnv, 
        stdio: 'inherit',
        cwd: process.cwd()
      });
    } catch (e) {
      console.error(`❌ Failed to run ${scriptName}`);
      process.exit(1);
    }
  };

  // Run new schema scripts
  runSchema('ideas.ts');
  runSchema('reminders.ts');
  runSchema('context.ts');    // Threads
  runSchema('execution.ts');  // Agents, Jobs, Processes
  runSchema('planning.ts');   // Linking tasks/blueprints to conversation
  runSchema('memories_v2.ts'); // Memory enhancements
  runSchema('knowledge.ts');   // Rules and Skills (New Entity Model)

  console.log('\n✨✨✨ V2 UPGRADE COMPLETE ✨✨✨');
  console.log('Next step: Regenerate SDK with `pnpm run generate`');
}

main().catch(console.error);
