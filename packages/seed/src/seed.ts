/**
 * Seed script - signs up a user and inserts sample CRM data
 * Uses the generated SDK models
 */

import { NodeHttpAdapter } from '@constructive-io/node';

const SDK_PATH = '/Users/constructivio/Constructive/agent-os/sdk/agent-os-sdk/generated/orm/index';

const DATABASE_NAME = 'agent-os-1772427594809';
const AUTH_HOST = `auth-${DATABASE_NAME}.localhost`;
const APP_HOST = `app-public-${DATABASE_NAME}.localhost`;
const GRAPHQL_URL = 'http://[::1]:3000/graphql';

async function signUp(email: string, password: string): Promise<{ token: string; userId: string }> {
  const adapter = new NodeHttpAdapter(GRAPHQL_URL, { Host: AUTH_HOST });
  
  const query = `
    mutation SignUp($email: String!, $password: String!) {
      signUp(input: { email: $email, password: $password }) {
        result {
          accessToken
          userId
        }
      }
    }
  `;
  
  const result = await adapter.execute<{
    signUp: { result: { accessToken: string; userId: string } };
  }>(query, { email, password });
  
  if (!result.ok || !result.data?.signUp?.result) {
    throw new Error(`SignUp failed: ${JSON.stringify(result)}`);
  }
  
  return {
    token: result.data.signUp.result.accessToken,
    userId: result.data.signUp.result.userId,
  };
}

async function main() {
  console.log('\n🌱 Agent-OS Seed Script\n');
  
  // Dynamic import for the SDK
  const { createClient } = await import(SDK_PATH);
  
  // 1. Sign up a new user
  const ts = Date.now();
  const email = `seed-${ts}@example.com`;
  const password = 'SeedPass123!';
  
  console.log(`📧 Signing up: ${email}`);
  const { token, userId } = await signUp(email, password);
  console.log(`✅ User created: ${userId}`);
  console.log(`🔑 Token: ${token.slice(0, 20)}...`);
  
  // 2. Create SDK client with auth
  const adapter = new NodeHttpAdapter(GRAPHQL_URL, {
    Host: APP_HOST,
    Authorization: `Bearer ${token}`,
  });
  const client = createClient({ adapter });
  
  // 3. Create a company
  console.log('\n📦 Creating company...');
  const companyResult = await client.company.create({
    data: {
      entityId: userId,
      name: 'Constructive Inc',
      domain: 'constructive.dev',
      industry: 'Technology',
      description: 'Secure-by-default Postgres platform for the agentic era',
    },
    select: {
      id: true,
      name: true,
      domain: true,
    },
  }).execute();
  
  if (!companyResult.ok) {
    console.error('❌ Failed to create company:', companyResult.errors);
    process.exit(1);
  }
  
  const companyData = (companyResult.data as any).createCompany.company;
  console.log(`✅ Company: ${companyData.name} (${companyData.id})`);
  
  // 4. Create contacts
  console.log('\n👥 Creating contacts...');
  
  const contacts = [
    { firstName: 'Dan', lastName: 'Lynch', email: 'dan@constructive.dev', headline: 'Founder & CEO', bio: 'Serial entrepreneur, UC Berkeley alum' },
    { firstName: 'Alice', lastName: 'Engineer', email: 'alice@constructive.dev', headline: 'Lead Engineer', bio: 'Postgres expert' },
    { firstName: 'Bob', lastName: 'Sales', email: 'bob@constructive.dev', headline: 'Head of Sales', bio: 'Enterprise sales leader' },
  ];
  
  const contactIds: string[] = [];
  
  for (const contactData of contacts) {
    const result = await client.contact.create({
      data: {
        entityId: userId,
        ...contactData,
      },
      select: {
        id: true,
        firstName: true,
        lastName: true,
        email: true,
      },
    }).execute();
    
    if (!result.ok) {
      console.error(`❌ Failed to create contact ${contactData.firstName}:`, result.errors);
      continue;
    }
    
    const data = (result.data as any).createContact.contact;
    contactIds.push(data.id);
    console.log(`  ✅ ${data.firstName} ${data.lastName} <${data.email}> (${data.id})`);
  }
  
  // 5. Create a deal (minimal fields)
  console.log('\n💰 Creating deal...');
  const dealResult = await client.deal.create({
    data: {
      entityId: userId,
      name: 'Enterprise License',
      stage: 'negotiation',
      value: '50000',
    },
    select: {
      id: true,
      name: true,
      value: true,
      stage: true,
    },
  }).execute();
  
  if (!dealResult.ok) {
    console.error('❌ Failed to create deal:', dealResult.errors);
  } else {
    const deal = (dealResult.data as any).createDeal.deal;
    console.log(`✅ Deal: ${deal.name} - $${deal.value} (${deal.stage})`);
  }
  
  // 6. Link contact to company
  if (contactIds.length > 0) {
    console.log('\n🔗 Linking contact to company...');
    const linkResult = await client.contactCompany.create({
      data: {
        entityId: userId,
        contactId: contactIds[0],
        companyId: companyData.id,
      },
      select: {
        id: true,
      },
    }).execute();
    
    if (!linkResult.ok) {
      console.error('❌ Failed to link contact to company:', linkResult.errors);
    } else {
      console.log(`✅ Linked Dan Lynch to Constructive Inc`);
    }
  }
  
  // 7. Verify by finding the company with contacts
  console.log('\n📋 Verifying - finding company...');
  const findResult = await client.company.findFirst({
    where: { name: { equalTo: 'Constructive Inc' } },
    select: {
      id: true,
      name: true,
      domain: true,
      industry: true,
    },
  }).execute();
  
  if (!findResult.ok) {
    console.error('❌ Failed to find company:', findResult.errors);
  } else {
    const company = (findResult.data as any).companies.nodes[0];
    if (company) {
      console.log(`✅ Found: ${company.name} (${company.domain}) - ${company.industry}`);
    }
  }
  
  console.log('\n🎉 Seed complete!\n');
  console.log('Summary:');
  console.log(`  - User: ${email}`);
  console.log(`  - Company: Constructive Inc`);
  console.log(`  - Contacts: ${contactIds.length} created`);
  console.log(`  - Token: ${token.slice(0, 30)}...`);
  console.log('\n');
}

main().catch((err) => {
  console.error('\n❌ Seed failed:', err.message ?? err);
  process.exit(1);
});
