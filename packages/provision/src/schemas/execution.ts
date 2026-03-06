import { public_, NodeHttpAdapter } from '@constructive-io/node';
import { config } from '../config';
import { entityGrants, entityPolicyData } from '../helpers';

const adapter = new NodeHttpAdapter(config.appEndpoint, config.authHeaders);
const client = public_.createClient({ adapter });

async function main() {
  console.log('⚙️ Provisioning Execution Schema (Agents, Processes, Jobs)...');

  // 1. Agents (Workers)
  await client.tableProvisionModule.create({
    data: {
      databaseId: config.databaseId,
      tableName: 'agents',
      schemaType: 'app_public',
      label: 'Agents',
      description: 'Registered sub-agents and workers',
      module: true,
      data: {
        fields: [
          { name: 'name', type: 'text', label: 'Name', required: true },
          { name: 'role', type: 'text', label: 'Role' },
          { name: 'capabilities', type: 'jsonb', label: 'Capabilities', defaultValue: "'[]'" },
          { name: 'config', type: 'jsonb', label: 'Config', defaultValue: "'{}'" },
          { name: 'status', type: 'text', label: 'Status', defaultValue: "'idle'" },
          { name: 'embedding', type: 'vector(768)', label: 'Semantic Embedding' }
        ],
        grants: entityGrants,
        policies: entityPolicyData('agents')
      }
    }
  }).execute();
  console.log('   ✅ Agents table created.');

  // 2. Scheduled Jobs (Cron)
  await client.tableProvisionModule.create({
    data: {
      databaseId: config.databaseId,
      tableName: 'scheduled_jobs',
      schemaType: 'app_public',
      label: 'Scheduled Jobs',
      description: 'Cron jobs and recurring tasks',
      module: true,
      data: {
        fields: [
          { name: 'name', type: 'text', label: 'Name', required: true },
          { name: 'schedule', type: 'text', label: 'Schedule (Cron)', required: true },
          { name: 'command', type: 'text', label: 'Command', required: true },
          { name: 'active', type: 'boolean', label: 'Active', defaultValue: 'true' },
          { name: 'last_run', type: 'timestamp with time zone', label: 'Last Run' },
          { name: 'next_run', type: 'timestamp with time zone', label: 'Next Run' },
          { name: 'embedding', type: 'vector(768)', label: 'Semantic Embedding' }
        ],
        grants: entityGrants,
        policies: entityPolicyData('scheduled_jobs')
      }
    }
  }).execute();
  console.log('   ✅ Scheduled Jobs table created.');

  // 3. Processes (Live PIDs)
  await client.tableProvisionModule.create({
    data: {
      databaseId: config.databaseId,
      tableName: 'processes',
      schemaType: 'app_public',
      label: 'Processes',
      description: 'Live running processes',
      module: true,
      data: {
        fields: [
          { name: 'pid', type: 'integer', label: 'System PID' },
          { name: 'agent_id', type: 'uuid', label: 'Agent ID' },
          { name: 'command', type: 'text', label: 'Command' },
          { name: 'started_at', type: 'timestamp with time zone', label: 'Started At', defaultValue: 'now()' },
          { name: 'ended_at', type: 'timestamp with time zone', label: 'Ended At' },
          { name: 'status', type: 'text', label: 'Status', defaultValue: "'running'" },
          { name: 'exit_code', type: 'integer', label: 'Exit Code' },
          { name: 'logs_path', type: 'text', label: 'Logs Path' },
          { name: 'embedding', type: 'vector(768)', label: 'Semantic Embedding' }
        ],
        grants: entityGrants,
        policies: entityPolicyData('processes'),
        foreignKeys: [
             { column: 'agent_id', foreignTable: 'agents', foreignColumn: 'id' }
        ]
      }
    }
  }).execute();
  console.log('   ✅ Processes table created.');
}

if (require.main === module) main();
