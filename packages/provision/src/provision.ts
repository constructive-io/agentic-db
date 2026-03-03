/**
 * provision.ts — Main database provisioning script
 */

import { auth, public_, NodeHttpAdapter } from '@constructive-io/node';
import { config } from './config';
import { withRetry } from './helpers';

const PLATFORM_PHYSICAL_URL = 'http://[::1]:3000/graphql';

async function main() {
  const ts = Date.now();
  const databaseName = `${config.databaseName}-${ts}`;
  const uniqueEmail = config.adminEmail.replace('@', `+${ts}@`);

  console.log('\n🚀 Agent-OS Database Provisioning\n');
  console.log(`   Database: ${databaseName}`);

  // Step 1: Sign up
  console.log(`\n🔐 Signing up as ${uniqueEmail}...`);
  
  // Use explicit Host header for reliable local resolution
  const authAdapter = new NodeHttpAdapter(PLATFORM_PHYSICAL_URL, {
    Host: 'auth.localhost'
  });
  const authClient = auth.createClient({ adapter: authAdapter });

  const signUpResult = await authClient.mutation.signUp(
    { input: { email: uniqueEmail, password: config.adminPassword } },
    { select: { result: { select: { userId: true, accessToken: true } } } }
  ).execute();

  if (!signUpResult.ok) {
    console.error('❌ Sign up failed:', JSON.stringify(signUpResult.errors, null, 2));
    process.exit(1);
  }

  const data = (signUpResult as any).data;
  const userId = data?.signUp?.result?.userId;
  const accessToken = data?.signUp?.result?.accessToken;

  if (!accessToken || !userId) {
    console.error('❌ No token/userId returned');
    process.exit(1);
  }

  console.log(`✅ Signed up (userId: ${userId})`);

  // Step 2: Provision database
  console.log(`\n🗄️  Provisioning "${databaseName}"...`);

  const apiAdapter = new NodeHttpAdapter(PLATFORM_PHYSICAL_URL, {
    Host: 'api.localhost',
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
      select: {
        id: true,
        databaseName: true,
        status: true,
        databaseId: true,
        errorMessage: true,
      },
    }).execute()
  );

  if (!provisionResult.ok) {
    console.error('❌ Provision failed:', JSON.stringify(provisionResult.errors, null, 2));
    process.exit(1);
  }

  const provData = (provisionResult as any).data;
  const dbProv = provData?.createDatabaseProvisionModule?.databaseProvisionModule;
  
  if (!dbProv || dbProv.status === 'failed') {
    console.error(`❌ Failed: ${dbProv?.errorMessage || 'no response'}`);
    process.exit(1);
  }

  const databaseId = dbProv.databaseId;
  console.log(`✅ Provisioned: ${databaseName}`);
  console.log(`   ID: ${databaseId}`);

  console.log('\n✅ Complete! Add to .env:');
  console.log(`   DATABASE_NAME=${databaseName}`);
  console.log(`   DATABASE_ID=${databaseId}`);
  console.log(`   ACCESS_TOKEN=${accessToken}`);
  console.log('\n   Then run: pnpm --filter @agent-os/provision run provision:crm');
  
  // Output JSON for easy parsing if needed
  // console.log('\n📦 RESULT:', JSON.stringify({ databaseName, databaseId, userId, accessToken }));
}

main().catch((err) => {
  console.error('\n❌ Error:', err.message ?? err);
  console.error(err.stack);
  process.exit(1);
});
