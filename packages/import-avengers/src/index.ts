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

  console.log(`\n🚀 Starting Full Import (User: ${userId})...\n`);

  const importTable = async (name: string, query: string, createFn: (row: any) => Promise<any>) => {
    console.log(`\n📦 Importing ${name}...`);
    const res = await avengersClient.query(query);
    let success = 0;
    let fail = 0;
    
    // Process in chunks of 50 to avoid overwhelming connection? No, sequential is safer for now.
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
    const embedding = typeof row.embedding === 'string' ? JSON.parse(row.embedding) : row.embedding;
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
        embedding: Array.isArray(embedding) ? embedding : undefined,
      },
      select: { id: true }
    }).execute();
  });

  // 2. Tasks
  await importTable('Tasks', 'SELECT * FROM agent.tasks', async (row) => {
    const embedding = typeof row.embedding === 'string' ? JSON.parse(row.embedding) : row.embedding;
    return authClient.task.create({
      data: {
        id: row.id,
        entityId: userId,
        title: row.title,
        description: row.description,
        status: row.status,
        priority: row.priority,
        embedding: Array.isArray(embedding) ? embedding : undefined,
      },
      select: { id: true }
    }).execute();
  });

  // 3. Companies
  await importTable('Companies', 'SELECT * FROM crm.companies', async (row) => {
    const embedding = typeof row.embedding === 'string' ? JSON.parse(row.embedding) : row.embedding;
    return authClient.company.create({
      data: {
        id: row.id,
        entityId: userId,
        name: row.name,
        domain: row.website,
        industry: row.industry,
        description: row.description,
        embedding: Array.isArray(embedding) ? embedding : undefined,
      },
      select: { id: true }
    }).execute();
  });
  
  // 4. Events
  await importTable('Events', 'SELECT * FROM crm.events', async (row) => {
    const embedding = typeof row.embedding === 'string' ? JSON.parse(row.embedding) : row.embedding;
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
        embedding: Array.isArray(embedding) ? embedding : undefined,
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
      },
      select: { id: true }
    }).execute();
  });

  // 6. Notes (Requires Contacts)
  await importTable('Notes', 'SELECT * FROM crm.notes', async (row) => {
    const embedding = typeof row.embedding === 'string' ? JSON.parse(row.embedding) : row.embedding;
    return authClient.note.create({
      data: {
        id: row.id,
        entityId: userId,
        contactId: row.contact_id,
        content: row.body,
        embedding: Array.isArray(embedding) ? embedding : undefined,
      },
      select: { id: true }
    }).execute();
  });
  
  // 7. Memories
  await importTable('Memories', 'SELECT * FROM agent.memories', async (row) => {
    const embedding = typeof row.embedding === 'string' ? JSON.parse(row.embedding) : row.embedding;
    return authClient.memory.create({
      data: {
        id: row.id,
        entityId: userId,
        content: row.content,
        tags: row.tags,
        embedding: Array.isArray(embedding) ? embedding : undefined,
      },
      select: { id: true }
    }).execute();
  });
  
  // 8. Skills
  await importTable('Skills', 'SELECT * FROM agent.skills', async (row) => {
    const embedding = typeof row.embedding === 'string' ? JSON.parse(row.embedding) : row.embedding;
    return authClient.skill.create({
      data: {
        id: row.id,
        entityId: userId,
        name: row.name,
        description: row.description,
        content: row.content,
        isActive: row.active ?? true,
        embedding: Array.isArray(embedding) ? embedding : undefined,
      },
      select: { id: true }
    }).execute();
  });
  
  // 9. Rules
  await importTable('Rules', 'SELECT * FROM agent.rules', async (row) => {
    const embedding = typeof row.embedding === 'string' ? JSON.parse(row.embedding) : row.embedding;
    return authClient.rule.create({
      data: {
        id: row.id,
        entityId: userId,
        title: row.title,
        content: row.content,
        kind: row.kind,
        isActive: row.active ?? true,
        embedding: Array.isArray(embedding) ? embedding : undefined,
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
      },
      select: { id: true }
    }).execute();
  });
  
  // 11. Codebase Repos
  await importTable('Repositories', 'SELECT * FROM codebase.repos', async (row) => {
    return authClient.repository.create({
      data: {
        id: row.id,
        entityId: userId,
        name: row.name,
        description: row.root_path,
      },
      select: { id: true }
    }).execute();
  });
  
  // 12. Codebase Files
  await importTable('Files', 'SELECT * FROM codebase.files', async (row) => {
    return authClient.file.create({
      data: {
        id: row.id,
        entityId: userId,
        repoId: row.repo_id,
        path: row.path,
        language: row.language,
        hash: row.hash,
      },
      select: { id: true }
    }).execute();
  });
  
  // 13. Codebase Chunks
  await importTable('Chunks', 'SELECT * FROM codebase.chunks', async (row) => {
    const embedding = typeof row.embedding === 'string' ? JSON.parse(row.embedding) : row.embedding;
    return authClient.chunk.create({
      data: {
        id: row.id,
        entityId: userId,
        fileId: row.file_id,
        content: row.content,
        startLine: row.start_line,
        endLine: row.end_line,
        embedding: Array.isArray(embedding) ? embedding : undefined,
      },
      select: { id: true }
    }).execute();
  });
  
  // 14. Email Accounts & Messages (Skipping large dataset for now, or just accounts?)
  // Let's do accounts at least.
  
  const accountsRes = await avengersClient.query('SELECT DISTINCT account FROM email.messages WHERE account IS NOT NULL');
  console.log('\n📦 Importing Email Accounts...');
  for (const row of accountsRes.rows) {
     const email = row.account;
     try {
       await authClient.emailAccount.create({
         data: { entityId: userId, email: email, provider: 'google' },
         select: { id: true }
       }).execute();
       process.stdout.write('.');
     } catch (e) { process.stdout.write('x'); }
  }
  console.log('\n✅ Imported Email Accounts.');

  // Note: Skipping 15k messages to keep it fast, but could be added if requested.

  await avengersClient.end();
}

main().catch(err => {
  console.error('\n❌ Error:', err);
  process.exit(1);
});
