import { Client } from 'pg';
import * as dotenv from 'dotenv';
import * as path from 'path';

dotenv.config({ path: path.resolve(__dirname, '../../.env') });

const dbName = process.env.DATABASE_NAME;
if (!dbName) {
  console.error('Missing DATABASE_NAME');
  process.exit(1);
}

const client = new Client({
  user: 'postgres',
  host: 'localhost',
  database: 'constructive',
  password: 'password',
  port: 5432,
});

async function main() {
  await client.connect();
  
  // Find schema
  const schemaRes = await client.query(`
    SELECT nspname FROM pg_namespace 
    WHERE nspname LIKE $1 AND nspname LIKE '%-app-public'
    LIMIT 1
  `, [`${dbName}%`]);
  
  if (schemaRes.rows.length === 0) {
    console.error('Schema not found for', dbName);
    process.exit(1);
  }
  
  const schema = schemaRes.rows[0].nspname;
  console.log('Target Schema:', schema);
  
  const indexes = [
    // GIN Indexes for Tags
    `CREATE INDEX IF NOT EXISTS contacts_tags_gin_idx ON "${schema}".contacts USING GIN (tags);`,
    `CREATE INDEX IF NOT EXISTS companies_tags_gin_idx ON "${schema}".companies USING GIN (tags);`,
    `CREATE INDEX IF NOT EXISTS deals_tags_gin_idx ON "${schema}".deals USING GIN (tags);`,
    `CREATE INDEX IF NOT EXISTS events_tags_gin_idx ON "${schema}".events USING GIN (tags);`,
    `CREATE INDEX IF NOT EXISTS venues_tags_gin_idx ON "${schema}".venues USING GIN (tags);`,
    `CREATE INDEX IF NOT EXISTS notes_tags_gin_idx ON "${schema}".notes USING GIN (tags);`,
    
    `CREATE INDEX IF NOT EXISTS tasks_tags_gin_idx ON "${schema}".tasks USING GIN (tags);`,
    `CREATE INDEX IF NOT EXISTS rules_tags_gin_idx ON "${schema}".rules USING GIN (tags);`,
    `CREATE INDEX IF NOT EXISTS memories_tags_gin_idx ON "${schema}".memories USING GIN (tags);`,
    `CREATE INDEX IF NOT EXISTS skills_tags_gin_idx ON "${schema}".skills USING GIN (tags);`,
    
    `CREATE INDEX IF NOT EXISTS expenses_tags_gin_idx ON "${schema}".expenses USING GIN (tags);`,
    `CREATE INDEX IF NOT EXISTS documents_tags_gin_idx ON "${schema}".documents USING GIN (tags);`,
    `CREATE INDEX IF NOT EXISTS messages_tags_gin_idx ON "${schema}".messages USING GIN (tags);`,

    // Safe BM25 Indexes (High value only)
    `CREATE INDEX IF NOT EXISTS notes_content_bm25_idx ON "${schema}".notes USING bm25(content) WITH (text_config='english');`,
    `CREATE INDEX IF NOT EXISTS tasks_desc_bm25_idx ON "${schema}".tasks USING bm25(description) WITH (text_config='english');`,
    `CREATE INDEX IF NOT EXISTS messages_body_bm25_idx ON "${schema}".messages USING bm25(body_text) WITH (text_config='english');`,
  ];

  for (const sql of indexes) {
    console.log('Executing:', sql);
    try {
      await client.query(sql);
      console.log('  ✓ Created');
    } catch (err) {
      console.error('  ❌ Failed:', err.message);
    }
  }

  await client.end();
}

main().catch(console.error);
