import { Client } from 'pg';
import { NodeHttpAdapter } from '@constructive-io/node';

const DB_NAME = 'agent-os-1772568627211'; 
const SCHEMA_PATTERN = `${DB_NAME}%app-public`;

async function main() {
  const client = new Client({
    user: 'postgres',
    host: 'localhost',
    database: 'constructive',
    password: 'password',
  });
  await client.connect();

  const res = await client.query(`SELECT nspname FROM pg_namespace WHERE nspname LIKE $1`, [SCHEMA_PATTERN]);
  if (res.rows.length === 0) { console.error('Schema not found'); process.exit(1); }
  const schema = res.rows[0].nspname;
  console.log(`🎯 Target Schema: ${schema}`);

  // Create index again just in case I dropped it
  await client.query(`CREATE INDEX IF NOT EXISTS notes_content_bm25_idx ON "${schema}".notes USING bm25(content) WITH (text_config='english');`);

  const adapter = new NodeHttpAdapter('http://[::1]:3000/graphql', {
    Host: `app-public-${DB_NAME}.localhost`,
  });
  
  // Test C: BM25 Search
  console.log('\n🧪 Test C: BM25 Search...');
  const bm25Query = `
    query { 
      notes(condition: { bm25Content: { query: "postgres" } }, first: 1) { 
        nodes { id content bm25ContentScore } 
      } 
    }
  `;
  const bm25Res = await adapter.execute(bm25Query);
  console.log('   Result:', bm25Res.ok ? 'OK' : `FAIL: ${bm25Res.errors?.[0]?.message}`);

  await client.end();
}

main().catch(console.error);
