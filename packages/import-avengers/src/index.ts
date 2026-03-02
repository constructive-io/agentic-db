import { Client } from 'pg';
import * as dotenv from 'dotenv';
import * as path from 'path';
import { NodeHttpAdapter } from '@constructive-io/node';
import { config } from './config';
import { createClient } from '@agentic-sdk/sdk';

dotenv.config({ path: path.resolve(__dirname, '../../../.env') });

const avengersClient = new Client({
  connectionString: config.avengersDbUrl,
});

const adapter = new NodeHttpAdapter(config.graphqlUrl, {
  Host: config.authHost,
});

const client = createClient({ adapter });

async function signIn() {
  const query = `
    mutation SignIn($email: String!, $password: String!) {
      signIn(input: { email: $email, password: $password }) {
        result { accessToken userId }
      }
    }
  `;
  
  const result = await adapter.execute<{ signIn: { result: { accessToken: string; userId: string } } }>(
    query,
    { email: config.agentEmail, password: config.agentPassword }
  );

  if (!result.ok || !result.data?.signIn?.result?.accessToken) {
    throw new Error(`Sign in failed: ${JSON.stringify(result.errors)}`);
  }
  return { 
    token: result.data.signIn.result.accessToken, 
    userId: result.data.signIn.result.userId 
  };
}

async function main() {
  await avengersClient.connect();
  const { token, userId } = await signIn();
  
  // Re-create adapter with auth and APP host
  const authAdapter = new NodeHttpAdapter(config.graphqlUrl, {
    Host: config.appHost,
    Authorization: `Bearer ${token}`,
  });
  
  // Re-create client with auth adapter
  const authClient = createClient({ adapter: authAdapter });

  console.log(`\n🚀 Starting import (User: ${userId})...\n`);

  // --- CRM: Contacts ---
  console.log('📦 Importing Contacts...');
  try {
    const contacts = await avengersClient.query('SELECT * FROM crm.contacts');
    for (const row of contacts.rows) {
      const embedding = typeof row.embedding === 'string' ? JSON.parse(row.embedding) : row.embedding;
      
      await authClient.contact.create({
        data: {
          entityId: userId,
          firstName: row.first_name,
          lastName: row.last_name,
          email: row.email,
          phone: row.phone,
          headline: row.headline,
          bio: row.bio,
          location: row.location,
          embedding: Array.isArray(embedding) ? embedding : undefined,
        },
        select: { id: true }
      }).execute();
      process.stdout.write('.');
    }
    console.log(`\n✅ Imported ${contacts.rowCount} contacts.`);
  } catch (err: any) {
    console.warn(`⚠️  Contacts import warning: ${err.message}`);
  }

  // --- Agent: Tasks ---
  console.log('\n📦 Importing Tasks...');
  try {
    const tasks = await avengersClient.query('SELECT * FROM agent.tasks');
    for (const row of tasks.rows) {
      const embedding = typeof row.embedding === 'string' ? JSON.parse(row.embedding) : row.embedding;

      await authClient.task.create({
        data: {
          entityId: userId,
          title: row.title,
          description: row.description,
          status: row.status,
          priority: row.priority,
          embedding: Array.isArray(embedding) ? embedding : undefined,
        },
        select: { id: true }
      }).execute();
      process.stdout.write('.');
    }
    console.log(`\n✅ Imported ${tasks.rowCount} tasks.`);
  } catch (err: any) {
    console.warn(`⚠️  Tasks import warning: ${err.message}`);
  }
  
  await avengersClient.end();
}

main().catch(err => {
  console.error('\n❌ Error:', err);
  process.exit(1);
});
