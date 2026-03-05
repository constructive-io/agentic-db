import { Client } from 'pg';
import * as dotenv from 'dotenv';
import * as path from 'path';
import { NodeHttpAdapter } from '@constructive-io/node';
import { config } from './config';
import { createClient } from '@agentic-sdk/sdk';

// Load root .env
dotenv.config({ path: path.resolve(__dirname, '../../../.env') });

const avengersClient = new Client({
  connectionString: config.avengersDbUrl,
});

async function main() {
  const token = process.env.ACCESS_TOKEN;
  if (!token) {
    console.error('❌ Missing ACCESS_TOKEN in .env');
    process.exit(1);
  }

  // Setup client with existing token
  const authAdapter = new NodeHttpAdapter(config.graphqlUrl, {
    Host: config.appHost,
    Authorization: `Bearer ${token}`,
  });
  
  const authClient = createClient({ adapter: authAdapter });

  // Use hardcoded userId from provisioning log because token is opaque
  const userId = '32edd3a5-61b8-441d-fe3d-7cf56a7c0eea';
  console.log(`👤 Using User ID: ${userId}`);
  console.log(`🌍 Target Host: ${config.appHost}`);

  await avengersClient.connect();

  console.log(`\n🚀 Starting Full Import (User: ${userId})...\n`);

  const importTable = async (name: string, query: string, createFn: (row: any) => Promise<any>) => {
    console.log(`\n📦 Importing ${name}...`);
    const res = await avengersClient.query(query);
    let success = 0;
    let fail = 0;
    
    for (const row of res.rows) {
      try {
        await createFn(row);
        process.stdout.write('.');
        success++;
      } catch (err: any) {
        // process.stdout.write('x');
        // console.warn(err);
        fail++;
      }
    }
    console.log(`\n✅ Imported ${success} ${name}. (${fail} failed)`);
  };

  // 1. Contacts
  await importTable('Contacts', 'SELECT * FROM crm.contacts', async (row) => {
    return authClient.contact.create({
      data: {
        id: row.id,
        entityId: userId,
        firstName: row.first_name,
        lastName: row.last_name,
        email: row.email,
        phone: row.phone,
        headline: row.headline,
        bio: row.bio,
        location: row.location,
        tags: [], // Initialize tags array
      },
      select: { id: true }
    }).execute();
  });

  // 2. Tasks
  await importTable('Tasks', 'SELECT * FROM agent.tasks', async (row) => {
    return authClient.task.create({
      data: {
        id: row.id,
        entityId: userId,
        title: row.title,
        description: row.description,
        status: row.status,
        priority: row.priority,
        tags: [],
      },
      select: { id: true }
    }).execute();
  });

  // 3. Companies
  await importTable('Companies', 'SELECT * FROM crm.companies', async (row) => {
    return authClient.company.create({
      data: {
        id: row.id,
        entityId: userId,
        name: row.name,
        domain: row.website,
        industry: row.industry,
        description: row.description,
        tags: [],
      },
      select: { id: true }
    }).execute();
  });
  
  // 4. Events
  await importTable('Events', 'SELECT * FROM crm.events', async (row) => {
    return authClient.event.create({
      data: {
        id: row.id,
        entityId: userId,
        name: row.name,
        eventType: row.event_type,
        location: row.location,
        city: row.city,
        startedAt: row.started_at,
        endedAt: row.ended_at,
        notes: row.notes,
        tags: [],
      },
      select: { id: true }
    }).execute();
  });

  // 5. Venues
  await importTable('Venues', 'SELECT * FROM crm.venues', async (row) => {
    return authClient.venue.create({
      data: {
        id: row.id,
        entityId: userId,
        name: row.name,
        neighborhood: row.neighborhood,
        city: row.city,
        status: row.status,
        notes: row.notes,
        tags: [],
      },
      select: { id: true }
    }).execute();
  });

  // 6. Notes
  await importTable('Notes', 'SELECT * FROM crm.notes', async (row) => {
    return authClient.note.create({
      data: {
        id: row.id,
        entityId: userId,
        contactId: row.contact_id,
        content: row.body,
        tags: [],
      },
      select: { id: true }
    }).execute();
  });
  
  // 7. Memories
  await importTable('Memories', 'SELECT * FROM agent.memories', async (row) => {
    return authClient.memory.create({
      data: {
        id: row.id,
        entityId: userId,
        content: row.content,
        tags: row.tags || [],
      },
      select: { id: true }
    }).execute();
  });
  
  // 8. Skills
  await importTable('Skills', 'SELECT * FROM agent.skills', async (row) => {
    return authClient.skill.create({
      data: {
        id: row.id,
        entityId: userId,
        name: row.name,
        description: row.description,
        content: row.content,
        isActive: row.active ?? true,
        tags: row.tags || [],
      },
      select: { id: true }
    }).execute();
  });
  
  // 9. Rules
  await importTable('Rules', 'SELECT * FROM agent.rules', async (row) => {
    return authClient.rule.create({
      data: {
        id: row.id,
        entityId: userId,
        title: row.title,
        content: row.content,
        kind: row.kind,
        isActive: row.active ?? true,
        tags: [],
      },
      select: { id: true }
    }).execute();
  });

  // 10. Expenses
  await importTable('Expenses', 'SELECT * FROM accounting.expenses', async (row) => {
    return authClient.expense.create({
      data: {
        id: row.id,
        entityId: userId,
        amount: row.amount,
        currency: row.currency,
        date: row.occurred_at,
        category: row.category,
        description: row.description,
        merchant: row.merchant,
        receiptUrl: row.receipt_url,
        tags: [],
      },
      select: { id: true }
    }).execute();
  });
  
  // 11. Documents (Life OS) - Assuming empty for now or skipping

  await avengersClient.end();
}

main().catch(err => {
  console.error('\n❌ Error:', err);
  process.exit(1);
});
