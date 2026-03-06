import { public_, NodeHttpAdapter } from '@constructive-io/node';
import { config } from '../config';
import { entityGrants, entityPolicyData } from '../helpers';

const adapter = new NodeHttpAdapter(config.appEndpoint, config.authHeaders);
const client = public_.createClient({ adapter });

async function main() {
  console.log('⏰ Provisioning Reminders Schema...');

  await client.tableProvisionModule.create({
    data: {
      databaseId: config.databaseId,
      tableName: 'reminders',
      schemaType: 'app_public',
      label: 'Reminders',
      description: 'Time-sensitive nudges',
      module: true,
      data: {
        fields: [
          { name: 'title', type: 'text', label: 'Title', required: true },
          { name: 'due_at', type: 'timestamp with time zone', label: 'Due At' },
          { name: 'completed_at', type: 'timestamp with time zone', label: 'Completed At' },
          { name: 'recurrence', type: 'text', label: 'Recurrence Rule' },
          { name: 'embedding', type: 'vector(768)', label: 'Semantic Embedding' },
          { name: 'status', type: 'text', label: 'Status', defaultValue: "'pending'" },
          { name: 'related_entity_id', type: 'uuid', label: 'Related Entity ID' },
          { name: 'related_entity_type', type: 'text', label: 'Related Entity Type' }
        ],
        grants: entityGrants,
        policies: entityPolicyData('reminders')
      }
    }
  }).execute();

  console.log('✅ Reminders table created.');
}

if (require.main === module) main();
