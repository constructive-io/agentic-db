/**
 * Seed sample data for RAG testing
 */
import { config } from './config';
import { authenticate, createRawAdapter } from './client';
import { embed } from './ollama';

const TEST_EMAIL = 'rag-test@example.com';
const TEST_PASSWORD = 'RagTest123!';

async function main() {
  console.log('\n🌱 Seeding RAG Test Data\n');

  // 1. Authenticate
  console.log('🔐 Authenticating...');
  const { token, userId } = await authenticate(TEST_EMAIL, TEST_PASSWORD);
  console.log(`   User: ${userId}`);

  const adapter = createRawAdapter(token);

  // 2. Helper to create with embedding (raw GraphQL)
  async function createCompany(name: string, domain: string, industry: string, description: string) {
    const text = `${name}: ${description}`;
    console.log(`   Embedding: ${name}...`);
    const embedding = await embed(text);
    
    const result = await adapter.execute(`
      mutation CreateCompany($input: CreateCompanyInput!) {
        createCompany(input: $input) {
          company { id name }
        }
      }
    `, {
      input: {
        company: {
          entityId: userId,
          name,
          domain,
          industry,
          description,
          embedding,  // Pass as array directly
        }
      }
    });
    
    if (!result.ok) {
      console.log(`   ❌ ${name}: ${result.errors?.[0]?.message}`);
      return null;
    }
    const data = (result.data as any).createCompany?.company;
    console.log(`   ✅ ${data.name}`);
    return data.id;
  }

  async function createContact(firstName: string, lastName: string, email: string, headline: string, bio: string) {
    const text = `${firstName} ${lastName}, ${headline}. ${bio}`;
    console.log(`   Embedding: ${firstName} ${lastName}...`);
    const embedding = await embed(text);
    
    const result = await adapter.execute(`
      mutation CreateContact($input: CreateContactInput!) {
        createContact(input: $input) {
          contact { id firstName lastName }
        }
      }
    `, {
      input: {
        contact: {
          entityId: userId,
          firstName,
          lastName,
          email,
          headline,
          bio,
          embedding,
        }
      }
    });
    
    if (!result.ok) {
      console.log(`   ❌ ${firstName}: ${result.errors?.[0]?.message}`);
      return null;
    }
    const data = (result.data as any).createContact?.contact;
    console.log(`   ✅ ${data.firstName} ${data.lastName}`);
    return data.id;
  }

  async function createDeal(name: string, stage: string, value: string, notes: string) {
    const text = `${name}: ${notes}`;
    console.log(`   Embedding: ${name}...`);
    const embedding = await embed(text);
    
    const result = await adapter.execute(`
      mutation CreateDeal($input: CreateDealInput!) {
        createDeal(input: $input) {
          deal { id name }
        }
      }
    `, {
      input: {
        deal: {
          entityId: userId,
          name,
          stage,
          value,
          notes,
          embedding,
        }
      }
    });
    
    if (!result.ok) {
      console.log(`   ❌ ${name}: ${result.errors?.[0]?.message}`);
      return null;
    }
    const data = (result.data as any).createDeal?.deal;
    console.log(`   ✅ ${data.name}`);
    return data.id;
  }

  // 3. Seed companies
  console.log('\n🏢 Creating companies with embeddings...');
  await createCompany('Constructive', 'constructive.dev', 'Technology', 'Secure-by-default Postgres platform for the agentic era. Building the future of database infrastructure.');
  await createCompany('Supabase', 'supabase.com', 'Technology', 'Open source Firebase alternative. Postgres database, authentication, instant APIs, and realtime subscriptions.');
  await createCompany('Neon', 'neon.tech', 'Technology', 'Serverless Postgres. Fully managed with autoscaling, branching, and bottomless storage.');
  await createCompany('PlanetScale', 'planetscale.com', 'Technology', 'MySQL-compatible serverless database platform. Built on Vitess for horizontal scaling.');

  // 4. Seed contacts
  console.log('\n👤 Creating contacts with embeddings...');
  await createContact('Dan', 'Lynch', 'dan@constructive.dev', 'Founder & CEO', 'Serial entrepreneur with two exits. Creator of pgsql-parser with 100M+ downloads. UC Berkeley alum. Building secure Postgres infrastructure.');
  await createContact('Paul', 'Copplestone', 'paul@supabase.com', 'CEO at Supabase', 'Co-founder of Supabase. Previously founded Nimbus. Passionate about open source and developer tools.');
  await createContact('Nikita', 'Shamgunov', 'nikita@neon.tech', 'CEO at Neon', 'Co-founder of Neon and MemSQL. Expert in database systems and distributed computing.');

  // 5. Seed deals
  console.log('\n💰 Creating deals with embeddings...');
  await createDeal('Enterprise License - Acme Corp', 'negotiation', '75000', 'Large enterprise deal. They need SOC2 compliance and SLA guarantees. Primary contact is their CTO.');
  await createDeal('Startup Plan - TechStart', 'lead', '5000', 'Early stage startup looking for developer-friendly database. Price sensitive but growing fast.');
  await createDeal('Migration Project - BigCo', 'proposal', '150000', 'Migrating from Oracle to Postgres. Complex schema with 500+ tables. 6 month timeline.');

  console.log('\n🎉 Seed complete!\n');
  console.log(`   Email: ${TEST_EMAIL}`);
  console.log(`   Token: ${token.slice(0, 30)}...`);
  console.log('');
}

main().catch((err) => {
  console.error('❌', err.message ?? err);
  process.exit(1);
});
