import { public_, NodeHttpAdapter } from '@constructive-io/node';
import { config } from '../config';
import { entityGrants, entityPolicyData } from '../helpers';

const adapter = new NodeHttpAdapter(config.appEndpoint, config.authHeaders);
const client = public_.createClient({ adapter });

async function main() {
  console.log('🧠 Provisioning Knowledge Schema (Rules, Skills)...');

  // 1. Rules (Constraints & Policies)
  await client.tableProvisionModule.create({
    data: {
      databaseId: config.databaseId,
      tableName: 'rules',
      schemaType: 'app_public',
      label: 'Rules',
      description: 'System guardrails and policy constraints',
      module: true,
      data: {
        fields: [
          { name: 'slug', type: 'text', label: 'Slug (ID)', required: true },
          { name: 'statement', type: 'text', label: 'Rule Statement', required: true },
          { name: 'severity', type: 'text', label: 'Severity (blocking/warning/info)', defaultValue: "'warning'" },
          { name: 'verification', type: 'text', label: 'Verification Method' },
          { name: 'trigger_concept', type: 'vector(768)', label: 'Intent Trigger Embedding' }
        ],
        grants: entityGrants,
        policies: entityPolicyData('rules')
      }
    }
  }).execute();
  console.log('   ✅ Rules table created.');

  // 2. Skills (Executable Capabilities)
  await client.tableProvisionModule.create({
    data: {
      databaseId: config.databaseId,
      tableName: 'skills',
      schemaType: 'app_public',
      label: 'Skills',
      description: 'Executable agent capabilities',
      module: true,
      data: {
        fields: [
          { name: 'slug', type: 'text', label: 'Slug (ID)', required: true },
          { name: 'procedure', type: 'text', label: 'Procedure (Markdown)', required: true },
          { name: 'interface', type: 'jsonb', label: 'Interface Definition', defaultValue: "'{}'" },
          { name: 'requirements', type: 'jsonb', label: 'System Requirements', defaultValue: "'{}'" },
          { name: 'file_path', type: 'text', label: 'Source File Path' },
          { name: 'content_hash', type: 'text', label: 'Content Hash (SHA-256)' },
          { name: 'intent_trigger', type: 'vector(768)', label: 'Intent Trigger Embedding' }
        ],
        grants: entityGrants,
        policies: entityPolicyData('skills')
      }
    }
  }).execute();
  console.log('   ✅ Skills table created.');
}

if (require.main === module) main();
