/**
 * create-db.ts — Create a new Agent OS database
 *
 * Signs up a new admin user, provisions a database via the Constructive
 * platform API, and writes credentials to .env for subsequent use by
 * the provision scripts.
 *
 * Usage:  pnpm run create-db
 */

import { auth, public_, NodeHttpAdapter } from '@constructive-io/node';
import { config } from './config';
import { withRetry } from './helpers';
import * as path from 'path';
import * as fs from 'fs';

async function main() {
  const ts = Date.now();
  const databaseName = `agentic-db-${ts}`;
  const uniqueEmail = config.adminEmail.replace('@', `+${ts}@`);

  console.log('\n🗄️  Agentic-DB — Create Database\n');
  console.log(`   Database:  ${databaseName}`);
  console.log(`   Admin:     ${uniqueEmail}`);

  // --- Step 1: Sign up ---

  const authAdapter = new NodeHttpAdapter(config.authEndpoint, {
    'X-Meta-Schema': 'true',
    'X-Schemata': 'constructive_auth_public',
  });
  const authClient = auth.createClient({ adapter: authAdapter });

  const signUpData = await authClient.mutation
    .signUp(
      { input: { email: uniqueEmail, password: config.adminPassword } },
      { select: { result: { select: { userId: true, accessToken: true } } } }
    )
    .unwrap();

  const userId = signUpData?.signUp?.result?.userId;
  const accessToken = signUpData?.signUp?.result?.accessToken;

  if (!accessToken || !userId) {
    console.error('❌ No token/userId returned from signUp');
    process.exit(1);
  }
  console.log(`   ✅ Signed up (ID: ${userId})`);

  // --- Step 2: Create database (bare — no modules) ---
  //
  // Uses the Constructive SDK database.create() directly.
  // No databaseProvisionModule, no modules installed.
  // Node types are registered by construct_blueprint at provision time.

  console.log('\n   Creating database...');
  const apiAdapter = new NodeHttpAdapter(config.apiEndpoint, {
    Authorization: `Bearer ${accessToken}`,
    'X-Meta-Schema': 'true',
  });
  const apiClient = public_.createClient({ adapter: apiAdapter });

  const dbData = await withRetry(() =>
    apiClient.database
      .create({
        data: { name: databaseName, ownerId: userId },
        select: { id: true, name: true },
      })
      .unwrap()
  );

  const db = dbData?.createDatabase?.database;

  if (!db || !db.id) {
    console.error('❌ Database creation failed');
    process.exit(1);
  }

  const databaseId = db.id;
  console.log(`   ✅ Database ready (ID: ${databaseId})`);

  // --- Step 3: Write .env ---

  const envPath = path.resolve(__dirname, '../../../../.env');
  console.log(`\n   Writing credentials to ${envPath}`);

  let envContent = '';
  try {
    if (fs.existsSync(envPath)) {
      envContent = fs.readFileSync(envPath, 'utf8');
    }
  } catch {
    // File doesn't exist yet — that's fine
  }

  const newVars: Record<string, string> = {
    DATABASE_ID: databaseId,
    DATABASE_NAME: databaseName,
    ACCESS_TOKEN: accessToken,
  };

  let content = envContent;
  for (const [key, val] of Object.entries(newVars)) {
    const regex = new RegExp(`^${key}=.*`, 'm');
    if (regex.test(content)) {
      content = content.replace(regex, `${key}=${val}`);
    } else {
      content += `\n${key}=${val}`;
    }
  }

  fs.writeFileSync(envPath, content.trim() + '\n');
  console.log('   ✅ .env updated');

  console.log('\n✨ Database created. Run `pnpm run provision` to apply schemas.\n');
}

main().catch((err) => {
  console.error('❌', err.message ?? err);
  process.exit(1);
});
