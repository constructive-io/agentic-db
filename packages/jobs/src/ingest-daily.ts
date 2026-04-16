import { exec } from 'child_process';
import { promisify } from 'util';
import * as dotenv from 'dotenv';
import * as path from 'path';
import { NodeHttpAdapter } from '@constructive-io/node';
import { createClient } from '@agentic-db/sdk';

dotenv.config({ path: path.resolve(__dirname, '../../../.env') });

const execAsync = promisify(exec);

function createOrmClient() {
  const DATABASE_NAME = process.env.DATABASE_NAME || 'agentic-db';
  const GRAPHQL_URL = process.env.GRAPHQL_URL || 'http://[::1]:3000/graphql';
  const APP_HOST = process.env.APP_HOST || `app-public-${DATABASE_NAME}.localhost`;
  const ACCESS_TOKEN = process.env.ACCESS_TOKEN;

  if (!ACCESS_TOKEN) {
    throw new Error('Missing ACCESS_TOKEN env var -- required for ORM client');
  }

  const adapter = new NodeHttpAdapter(GRAPHQL_URL, {
    Host: APP_HOST,
    Authorization: `Bearer ${ACCESS_TOKEN}`,
  });

  return createClient({ adapter });
}

async function main() {
  console.log('Starting Daily Ingestion...');

  const orm = createOrmClient();

  try {
    console.log('\nFetching Calendar Events (Today)...');

    const { stdout } = await execAsync('gog cal list --today');
    const lines = stdout.split('\n').filter(l => l.trim() && !l.startsWith('ID'));

    for (const line of lines) {
      const parts = line.split(/\s+/);
      const id = parts[0];

      if (!id) continue;

      console.log(`   Processing event ${id}...`);

      try {
        const { stdout: details } = await execAsync(`gog cal event primary ${id}`);

        const summaryMatch = details.match(/Summary:\s+(.*)/);
        const startMatch = details.match(/Start:\s+(.*)/);
        const endMatch = details.match(/End:\s+(.*)/);
        const descMatch = details.match(/Description:\s+([\s\S]*?)(?=\n[A-Z]|$)/);
        const locMatch = details.match(/Location:\s+(.*)/);

        const summary = summaryMatch ? summaryMatch[1] : 'No Title';
        const start = startMatch ? new Date(startMatch[1]).toISOString() : new Date().toISOString();
        const end = endMatch ? new Date(endMatch[1]).toISOString() : new Date().toISOString();
        const description = descMatch ? descMatch[1].trim() : '';
        const location = locMatch ? locMatch[1] : '';

        // Use ORM to check if event exists by name + start time
        const existing = await orm.event.findMany({
          where: {
            name: { equalTo: summary },
            startedAt: { equalTo: start },
          },
          select: { id: true },
          first: 1,
        }).execute();

        const existingNodes = (existing.data as any)?.events?.nodes || [];

        if (existingNodes.length > 0) {
          // Update existing event via ORM
          await orm.event.update({
            where: { id: existingNodes[0].id },
            data: {
              name: summary,
              startedAt: start,
              endedAt: end,
              notesText: description,
              location,
            },
            select: { id: true },
          }).execute();
        } else {
          // Create new event via ORM
          await orm.event.create({
            data: {
              name: summary,
              startedAt: start,
              endedAt: end,
              notesText: description,
              location,
              eventType: 'other',
            },
            select: { id: true },
          }).execute();
        }

        process.stdout.write('+');
      } catch (e: any) {
        console.error(`\n   Failed to process ${id}:`, e.message);
      }
    }

    console.log('\nCalendar Ingestion Complete.');
  } catch (err) {
    console.error('Ingestion Failed:', err);
  }
}

main();
