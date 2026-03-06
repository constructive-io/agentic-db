import { public_, NodeHttpAdapter } from '@constructive-io/node';
import { config } from '../config';
import { entityGrants, entityPolicyData } from '../helpers';

const adapter = new NodeHttpAdapter(config.appEndpoint, config.authHeaders);
const client = public_.createClient({ adapter });

async function main() {
  console.log('💬 Provisioning Context Schema (Threads)...');

  await client.tableProvisionModule.create({
    data: {
      databaseId: config.databaseId,
      tableName: 'threads',
      schemaType: 'app_public',
      label: 'Threads',
      description: 'Nested conversation threads',
      module: true,
      data: {
        fields: [
          { name: 'title', type: 'text', label: 'Title', required: true },
          { name: 'summary', type: 'text', label: 'Summary' },
          { name: 'status', type: 'text', label: 'Status', defaultValue: "'active'" },
          { name: 'parent_thread_id', type: 'uuid', label: 'Parent Thread' },
          { name: 'chat_id', type: 'uuid', label: 'Chat ID' },
          { name: 'embedding', type: 'vector(768)', label: 'Semantic Embedding' }
        ],
        grants: entityGrants,
        policies: entityPolicyData('threads'),
        foreignKeys: [
             { column: 'chat_id', foreignTable: 'chats', foreignColumn: 'id' }
        ]
      }
    }
  }).execute();

  console.log('✅ Threads table created.');
}

if (require.main === module) main();
