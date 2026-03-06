import { public_, NodeHttpAdapter } from '@constructive-io/node';
import { config } from '../config';
import { entityGrants, entityPolicyData } from '../helpers';

const adapter = new NodeHttpAdapter(config.appEndpoint, config.authHeaders);
const client = public_.createClient({ adapter });

async function main() {
  console.log('🗺️ Provisioning Planning Schema (Assignments, Blueprints)...');

  // We are enhancing existing tables by adding columns, not creating new ones.
  // The SDK currently supports adding fields via fieldProvisionModule.
  
  // 1. Add conversation_id to blueprints
  await client.fieldProvisionModule.create({
    data: {
      databaseId: config.databaseId,
      tableName: 'blueprints',
      schemaType: 'app_public',
      name: 'conversation_id',
      type: 'uuid',
      label: 'Conversation Source'
    }
  }).execute();
  console.log('   ✅ Linked Blueprints -> Conversation.');

  // 2. Add assigned_agent_id and conversation_id to tasks
  await client.fieldProvisionModule.create({
    data: {
      databaseId: config.databaseId,
      tableName: 'tasks',
      schemaType: 'app_public',
      name: 'assigned_agent_id',
      type: 'uuid',
      label: 'Assigned Agent'
    }
  }).execute();

  await client.fieldProvisionModule.create({
    data: {
      databaseId: config.databaseId,
      tableName: 'tasks',
      schemaType: 'app_public',
      name: 'conversation_id',
      type: 'uuid',
      label: 'Conversation Source'
    }
  }).execute();

  // 3. Add thread_id and role to chat_messages
  await client.fieldProvisionModule.create({
    data: {
      databaseId: config.databaseId,
      tableName: 'chat_messages',
      schemaType: 'app_public',
      name: 'thread_id',
      type: 'uuid',
      label: 'Thread ID'
    }
  }).execute();

  await client.fieldProvisionModule.create({
    data: {
      databaseId: config.databaseId,
      tableName: 'chat_messages',
      schemaType: 'app_public',
      name: 'role',
      type: 'text',
      label: 'Role (user/agent)',
      defaultValue: "'user'"
    }
  }).execute();

  await client.fieldProvisionModule.create({
    data: {
      databaseId: config.databaseId,
      tableName: 'chat_messages',
      schemaType: 'app_public',
      name: 'embedding',
      type: 'vector(768)',
      label: 'Semantic Embedding'
    }
  }).execute();

  console.log('✅ Planning & Context fields enhanced.');
}

if (require.main === module) main();
