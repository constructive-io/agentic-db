import { public_, NodeHttpAdapter } from '@constructive-io/node';
import { config } from '../config';
import { entityGrants, entityPolicyData } from '../helpers';

const adapter = new NodeHttpAdapter(config.appEndpoint, config.authHeaders);
const client = public_.createClient({ adapter });

async function main() {
  console.log('💡 Provisioning Ideas Schema...');

  // Use tableProvisionModule on public_ client
  await client.tableProvisionModule.create({
    data: {
      databaseId: config.databaseId,
      tableName: 'ideas',
      schemaType: 'app_public',
      label: 'Ideas',
      description: 'Fleeting thoughts and concepts',
      module: true,
      data: {
        fields: [
          { name: 'content', type: 'text', label: 'Content', required: true },
          { name: 'tags', type: 'text[]', label: 'Tags' },
          { name: 'source', type: 'text', label: 'Source', defaultValue: "'manual'" },
          { name: 'embedding', type: 'vector(768)', label: 'Semantic Embedding' },
          { name: 'status', type: 'text', label: 'Status', defaultValue: "'new'" } 
        ],
        grants: entityGrants,
        policies: entityPolicyData('ideas')
      }
    }
  }).execute();

  console.log('✅ Ideas table created.');
}

if (require.main === module) main();
