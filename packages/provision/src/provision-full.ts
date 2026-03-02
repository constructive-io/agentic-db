/**
 * provision-full.ts — Master provisioning script for Agent OS v2
 * Provisions DB, then runs ALL schema modules in order.
 */

import { auth, public_, NodeHttpAdapter } from '@constructive-io/node';
import { config } from './config';
import { withRetry, entityGrants, entityPolicyData } from './helpers';
import * as dotenv from 'dotenv';
import * as path from 'path';
import * as fs from 'fs';
import { execSync } from 'child_process';

async function main() {
  const ts = Date.now();
  const databaseName = `agent-os-v2-${ts}`;
  const uniqueEmail = config.adminEmail.replace('@', `+${ts}@`);

  console.log('\n🚀 Agent-OS v2 Full Provisioning\n');
  console.log(`   Database: ${databaseName}`);
  console.log(`   Admin: ${uniqueEmail}`);

  // --- Step 1: Sign up & Create DB ---
  
  const authAdapter = new NodeHttpAdapter(config.authEndpoint);
  const authClient = auth.createClient({ adapter: authAdapter });

  const signUpResult = await authClient.mutation.signUp(
    { input: { email: uniqueEmail, password: config.adminPassword } },
    { select: { result: { select: { userId: true, accessToken: true } } } }
  ).execute();

  if (!signUpResult.ok) {
    console.error('❌ Sign up failed:', JSON.stringify(signUpResult, null, 2));
    process.exit(1);
  }

  const data = (signUpResult as any).data;
  const userId = data?.signUp?.result?.userId;
  const accessToken = data?.signUp?.result?.accessToken;

  if (!accessToken || !userId) {
    console.error('❌ No token/userId');
    process.exit(1);
  }
  console.log(`✅ Signed up (ID: ${userId})`);

  console.log(`\n🗄️  Provisioning DB...`);
  const apiAdapter = new NodeHttpAdapter(config.apiEndpoint, {
    Authorization: `Bearer ${accessToken}`,
  });
  const apiClient = public_.createClient({ adapter: apiAdapter });

  const provisionResult = await withRetry(() =>
    apiClient.databaseProvisionModule.create({
      data: {
        databaseName,
        ownerId: userId,
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
    process.exit(1);
  }

  const databaseId = dbProv.databaseId;
  console.log(`✅ DB Ready: ${databaseId}`);

  // --- Step 2: Run Schema Scripts ---
  
  const childEnv = { 
    ...process.env, 
    DATABASE_ID: databaseId, 
    ACCESS_TOKEN: accessToken
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

  // --- Step 3: Success ---
  console.log('\n✨✨✨ ALL SYSTEMS GO ✨✨✨');
  console.log(`\nDatabase: ${databaseName}`);
  console.log(`User: ${uniqueEmail}`);
  
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
  
  const newEnvVars: any = {
    DATABASE_ID: databaseId,
    ACCESS_TOKEN: accessToken,
    DATABASE_NAME: databaseName
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
