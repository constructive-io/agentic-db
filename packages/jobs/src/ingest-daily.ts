import { Client } from 'pg';
import { exec } from 'child_process';
import { promisify } from 'util';
import * as dotenv from 'dotenv';
import * as path from 'path';

dotenv.config({ path: path.resolve(__dirname, '../../../.env') });

const execAsync = promisify(exec);
const AVENGERS_URL = process.env.AVENGERS_DB_URL || 'postgres://postgres:password@localhost:5432/avengers';

async function main() {
  console.log('🚀 Starting Daily Ingestion (Target: Avengers DB)...');
  
  const client = new Client({ connectionString: AVENGERS_URL });
  await client.connect();

  try {
    console.log('\n📅 Fetching Calendar Events (Today)...');
    
    const { stdout } = await execAsync('gog cal list --today');
    const lines = stdout.split('\n').filter(l => l.trim() && !l.startsWith('ID'));
    
    for (const line of lines) {
      const parts = line.split(/\s+/);
      const id = parts[0];
      
      if (!id) continue;

      console.log(`   Processing event ${id}...`);
      
      try {
        // Use 'primary' calendar ID
        const { stdout: details } = await execAsync(`gog cal event primary ${id}`);
        
        const summaryMatch = details.match(/Summary:\s+(.*)/);
        const startMatch = details.match(/Start:\s+(.*)/);
        const endMatch = details.match(/End:\s+(.*)/);
        const descMatch = details.match(/Description:\s+([\s\S]*?)(?=\n[A-Z]|$)/);
        const locMatch = details.match(/Location:\s+(.*)/);

        const summary = summaryMatch ? summaryMatch[1] : 'No Title';
        const start = startMatch ? new Date(startMatch[1]) : new Date();
        const end = endMatch ? new Date(endMatch[1]) : new Date();
        const description = descMatch ? descMatch[1].trim() : '';
        const location = locMatch ? locMatch[1] : '';

        // Check if remote_id column exists
        const checkCol = await client.query(`
          SELECT column_name FROM information_schema.columns 
          WHERE table_schema='crm' AND table_name='events' AND column_name='remote_id'
        `);
        
        if (checkCol.rows.length === 0) {
           console.log('   ⚠️  Adding remote_id column to crm.events...');
           await client.query(`ALTER TABLE crm.events ADD COLUMN IF NOT EXISTS remote_id text UNIQUE;`);
        }

        await client.query(`
          INSERT INTO crm.events (name, started_at, ended_at, notes, location, remote_id, event_type, hosting_role)
          VALUES ($1, $2, $3, $4, $5, $6, 'other', 'attended')
          ON CONFLICT (remote_id) DO UPDATE SET
            name = EXCLUDED.name,
            started_at = EXCLUDED.started_at,
            ended_at = EXCLUDED.ended_at,
            notes = EXCLUDED.notes,
            location = EXCLUDED.location
        `, [summary, start, end, description, location, id]);
        
        process.stdout.write('+');
      } catch (e) {
        console.error(`\n   ❌ Failed to process ${id}:`, e.message);
      }
    }
    
    console.log('\n✅ Calendar Ingestion Complete.');

  } catch (err) {
    console.error('❌ Ingestion Failed:', err);
  } finally {
    await client.end();
  }
}

main();
