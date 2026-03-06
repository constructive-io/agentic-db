/**
 * provision.ts — Provisioning Entry Point
 * 
 * Supports both full provisioning (V1+V2) and V2 upgrade modes.
 */

import { execSync } from 'child_process';
import * as path from 'path';

// Parse args (simple check for --upgrade flag)
const args = process.argv.slice(2);
const isUpgrade = args.includes('--upgrade');

async function main() {
  if (isUpgrade) {
    console.log('🔄 Running V2 Upgrade Mode...');
    try {
      // Use tsx via npx to run the TypeScript file directly
      // This avoids dynamic import complexities in ts-node/esm environments
      const v2Path = path.resolve(__dirname, 'provision-v2.ts');
      execSync(`npx tsx "${v2Path}"`, { 
        stdio: 'inherit', 
        env: process.env,
        cwd: process.cwd()
      });
    } catch (e) {
      console.error('❌ Upgrade failed.');
      process.exit(1);
    }
  } else {
    console.log('🚀 Running Full Provisioning Mode (New DB)...');
    try {
      const fullPath = path.resolve(__dirname, 'provision-full.ts');
      execSync(`npx tsx "${fullPath}"`, { 
        stdio: 'inherit', 
        env: process.env, 
        cwd: process.cwd() 
      });
    } catch (e) {
      console.error('❌ Provisioning failed.');
      process.exit(1);
    }
  }
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});
