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
    // CRM - Single column indexes
    `CREATE INDEX IF NOT EXISTS contacts_fname_bm25_idx ON "${schema}".contacts USING bm25(first_name) WITH (text_config='english');`,
    `CREATE INDEX IF NOT EXISTS contacts_lname_bm25_idx ON "${schema}".contacts USING bm25(last_name) WITH (text_config='english');`,
    `CREATE INDEX IF NOT EXISTS contacts_email_bm25_idx ON "${schema}".contacts USING bm25(email) WITH (text_config='english');`,
    `CREATE INDEX IF NOT EXISTS contacts_headline_bm25_idx ON "${schema}".contacts USING bm25(headline) WITH (text_config='english');`,
    `CREATE INDEX IF NOT EXISTS contacts_bio_bm25_idx ON "${schema}".contacts USING bm25(bio) WITH (text_config='english');`,
    
    `CREATE INDEX IF NOT EXISTS companies_name_bm25_idx ON "${schema}".companies USING bm25(name) WITH (text_config='english');`,
    `CREATE INDEX IF NOT EXISTS companies_industry_bm25_idx ON "${schema}".companies USING bm25(industry) WITH (text_config='english');`,
    `CREATE INDEX IF NOT EXISTS companies_desc_bm25_idx ON "${schema}".companies USING bm25(description) WITH (text_config='english');`,

    `CREATE INDEX IF NOT EXISTS deals_name_bm25_idx ON "${schema}".deals USING bm25(name) WITH (text_config='english');`,
    `CREATE INDEX IF NOT EXISTS deals_notes_bm25_idx ON "${schema}".deals USING bm25(notes) WITH (text_config='english');`,

    `CREATE INDEX IF NOT EXISTS events_name_bm25_idx ON "${schema}".events USING bm25(name) WITH (text_config='english');`,
    `CREATE INDEX IF NOT EXISTS events_notes_bm25_idx ON "${schema}".events USING bm25(notes) WITH (text_config='english');`,

    `CREATE INDEX IF NOT EXISTS venues_name_bm25_idx ON "${schema}".venues USING bm25(name) WITH (text_config='english');`,
    `CREATE INDEX IF NOT EXISTS venues_notes_bm25_idx ON "${schema}".venues USING bm25(notes) WITH (text_config='english');`,

    `CREATE INDEX IF NOT EXISTS notes_content_bm25_idx ON "${schema}".notes USING bm25(content) WITH (text_config='english');`,
    
    // Life OS
    `CREATE INDEX IF NOT EXISTS messages_subject_bm25_idx ON "${schema}".messages USING bm25(subject) WITH (text_config='english');`,
    `CREATE INDEX IF NOT EXISTS messages_body_bm25_idx ON "${schema}".messages USING bm25(body_text) WITH (text_config='english');`,
    `CREATE INDEX IF NOT EXISTS messages_from_bm25_idx ON "${schema}".messages USING bm25("from") WITH (text_config='english');`,

    `CREATE INDEX IF NOT EXISTS expenses_desc_bm25_idx ON "${schema}".expenses USING bm25(description) WITH (text_config='english');`,
    `CREATE INDEX IF NOT EXISTS expenses_merchant_bm25_idx ON "${schema}".expenses USING bm25(merchant) WITH (text_config='english');`,
    `CREATE INDEX IF NOT EXISTS expenses_category_bm25_idx ON "${schema}".expenses USING bm25(category) WITH (text_config='english');`,

    `CREATE INDEX IF NOT EXISTS documents_title_bm25_idx ON "${schema}".documents USING bm25(title) WITH (text_config='english');`,
    `CREATE INDEX IF NOT EXISTS documents_content_bm25_idx ON "${schema}".documents USING bm25(content) WITH (text_config='english');`,

    // Agent
    `CREATE INDEX IF NOT EXISTS tasks_title_bm25_idx ON "${schema}".tasks USING bm25(title) WITH (text_config='english');`,
    `CREATE INDEX IF NOT EXISTS tasks_desc_bm25_idx ON "${schema}".tasks USING bm25(description) WITH (text_config='english');`,

    `CREATE INDEX IF NOT EXISTS rules_title_bm25_idx ON "${schema}".rules USING bm25(title) WITH (text_config='english');`,
    `CREATE INDEX IF NOT EXISTS rules_content_bm25_idx ON "${schema}".rules USING bm25(content) WITH (text_config='english');`,

    `CREATE INDEX IF NOT EXISTS memories_content_bm25_idx ON "${schema}".memories USING bm25(content) WITH (text_config='english');`,

    `CREATE INDEX IF NOT EXISTS skills_name_bm25_idx ON "${schema}".skills USING bm25(name) WITH (text_config='english');`,
    `CREATE INDEX IF NOT EXISTS skills_desc_bm25_idx ON "${schema}".skills USING bm25(description) WITH (text_config='english');`,
    `CREATE INDEX IF NOT EXISTS skills_content_bm25_idx ON "${schema}".skills USING bm25(content) WITH (text_config='english');`
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
