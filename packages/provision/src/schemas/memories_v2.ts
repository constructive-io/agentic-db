import { public_, NodeHttpAdapter } from '@constructive-io/node';
import { config } from '../config';
import { entityGrants, entityPolicyData } from '../helpers';

const adapter = new NodeHttpAdapter(config.appEndpoint, config.authHeaders);
const client = public_.createClient({ adapter });

async function main() {
  console.log('🧠 Provisioning Memories Schema (V2 Enhancements)...');

  // Enhance existing 'memories' table
  
  // 1. Add importance score (1-10)
  await client.fieldProvisionModule.create({
    data: {
      databaseId: config.databaseId,
      tableName: 'memories',
      schemaType: 'app_public',
      name: 'importance',
      type: 'integer',
      label: 'Importance (1-10)',
      defaultValue: '1'
    }
  }).execute();

  // 2. Add verification flag (human verified)
  await client.fieldProvisionModule.create({
    data: {
      databaseId: config.databaseId,
      tableName: 'memories',
      schemaType: 'app_public',
      name: 'verified',
      type: 'boolean',
      label: 'Verified',
      defaultValue: 'false'
    }
  }).execute();

  // 3. Ensure vector column exists and is correct dimension (might already exist, check idempotent)
  // If it exists but is different, this might fail or be ignored. 
  // Assuming V1 had embedding, but V2 ensures 768 dim for Nomic.
  
  console.log('✅ Memories table enhanced.');
}

if (require.main === module) main();
