/**
 * provision-full.ts — Master provisioning script for Agent DB
 *
 * Uses header-based routing (X-Meta-Schema) so it works on a fresh database
 * without requiring domain entries. Runs in admin mode with the meta-schema
 * endpoint to provision the database and all schema modules.
 */

import { public_, NodeHttpAdapter } from '@constructive-io/node';
import { withRetry } from './helpers';
import * as path from 'path';
import * as fs from 'fs';
import { execSync } from 'child_process';
import { randomUUID } from 'crypto';

async function main() {
  const databaseName = process.env.DATABASE_NAME || 'agent-db';

  console.log('\n🚀 Agent DB — Full Provisioning\n');
  console.log(`   Database: ${databaseName}`);

  // --- Step 1: Create DB via meta-schema endpoint ---
  //
  // Uses X-Meta-Schema header routing (works on fresh databases without
  // domain entries). The server must be started with API_IS_PUBLIC=false.

  const metaEndpoint = process.env.META_ENDPOINT || 'http://localhost:3000/graphql';
  const ownerId = process.env.OWNER_ID || randomUUID();

  console.log(`   Owner ID: ${ownerId}`);

  const apiAdapter = new NodeHttpAdapter(metaEndpoint, {
    'X-Meta-Schema': 'true',
  });
  const apiClient = public_.createClient({ adapter: apiAdapter });

  console.log(`\n🗄️  Provisioning DB...`);

  const provisionResult = await withRetry(() =>
    apiClient.databaseProvisionModule.create({
      data: {
        databaseName,
        ownerId,
        subdomain: databaseName,
        domain: 'localhost',
        modules: ['all'],
        bootstrapUser: true,
        options: {},
      },
      select: { id: true, databaseId: true, errorMessage: true },
    }).execute()
  );

  const provData = (provisionResult as any).data;
  const dbProv = provData?.createDatabaseProvisionModule?.databaseProvisionModule;
  
  if (!dbProv || !dbProv.databaseId) {
    console.error(`❌ DB Provision Failed: ${dbProv?.errorMessage || 'unknown'}`);
    console.error('Full result:', JSON.stringify(provisionResult, null, 2));
    process.exit(1);
  }

  const databaseId = dbProv.databaseId;
  console.log(`✅ DB Ready: ${databaseId}`);

  // --- Step 2: Run Schema Scripts ---
  //
  // Each schema script uses X-Meta-Schema header routing (via META_ENDPOINT)
  // and the DATABASE_ID to create tables, fields, indexes, etc.

  const childEnv = { 
    ...process.env, 
    DATABASE_ID: databaseId,
    META_ENDPOINT: metaEndpoint,
  };

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

  runSchema('crm.ts');
  runSchema('agent.ts');
  runSchema('agent_runtime.ts'); 
  runSchema('projects.ts');
  runSchema('codebase.ts');
  runSchema('life_os.ts');
  runSchema('autonomy.ts');
  runSchema('apply-schema-upgrades.ts');

  // --- Step 3: Success ---
  console.log('\n✨✨✨ ALL SYSTEMS GO ✨✨✨');
  console.log(`\nDatabase: ${databaseName}`);
  console.log(`Database ID: ${databaseId}`);
  console.log(`Owner ID: ${ownerId}`);
  
  const envPath = path.resolve(__dirname, '../../../../.env');
  console.log(`\nUpdating .env at: ${envPath}`);
  
  let envContent = '';
  try {
    if (fs.existsSync(envPath)) {
      envContent = fs.readFileSync(envPath, 'utf8');
    }
  } catch (e) {
    console.warn('⚠️ Could not read .env, creating new one.');
  }
  
  const newEnvVars: Record<string, string> = {
    DATABASE_ID: databaseId,
    DATABASE_NAME: databaseName,
    OWNER_ID: ownerId,
  };

  let newContent = envContent;
  
  Object.keys(newEnvVars).forEach((key) => {
    const val = newEnvVars[key];
    const regex = new RegExp(`^${key}=.*`, 'm');
    if (regex.test(newContent)) {
      newContent = newContent.replace(regex, `${key}=${val}`);
    } else {
      newContent += `\n${key}=${val}`;
    }
  });

  try {
    fs.writeFileSync(envPath, newContent);
    console.log(`✅ Updated .env with new credentials.`);
  } catch (e) {
    console.error(`❌ Failed to write .env: ${e}`);
  }
}

main().catch(console.error);
