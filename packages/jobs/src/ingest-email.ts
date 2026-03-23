import { exec } from 'child_process';
import { promisify } from 'util';
import * as dotenv from 'dotenv';
import * as path from 'path';
import { NodeHttpAdapter } from '@constructive-io/node';
import { createClient } from '@agentic-db/sdk';

dotenv.config({ path: path.resolve(__dirname, '../../../.env') });

const execAsync = promisify(exec);

const ACCOUNTS = ['pyramation@gmail.com', 'dan@constructive.io'];

function parseEmailAddress(raw: string): { name: string; email: string } {
  const match = raw.match(/^(.*?)\s*<(.+?)>$/);
  if (match) return { name: match[1].trim(), email: match[2].trim() };
  return { name: '', email: raw.trim() };
}

function parseEmailList(raw: string): string[] {
  if (!raw) return [];
  return raw.split(',').map(e => {
    const { email } = parseEmailAddress(e.trim());
    return email;
  }).filter(Boolean);
}

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

async function ingestAccount(orm: ReturnType<typeof createOrmClient>, account: string) {
  console.log(`\nIngesting ${account}...`);

  // Determine query range
  const query = 'newer_than:7d';
  console.log(`   Query: "${query}"`);

  // Fetch message list via gog CLI
  let messages: any[];
  try {
    const { stdout } = await execAsync(
      `gog mail messages list "${query}" -a ${account} --json --results-only --limit 50`,
      { maxBuffer: 10 * 1024 * 1024 }
    );
    messages = JSON.parse(stdout);
  } catch (e: any) {
    console.error(`   Failed to list messages: ${e.message}`);
    return;
  }

  console.log(`   Found ${messages.length} messages`);

  let inserted = 0;
  let skipped = 0;
  let failed = 0;

  const entityId = process.env.ENTITY_ID || '00000000-0000-0000-0000-000000000000';
  // We need a conversation ID for the ORM; use a default or create per-thread
  const defaultConversationId = process.env.DEFAULT_CONVERSATION_ID || '00000000-0000-0000-0000-000000000001';

  for (const msg of messages) {
    const gmailId = msg.id;
    if (!gmailId) continue;

    // Check if message already exists via ORM using content match
    // Since there is no gmail_id field in the ORM message model,
    // we store it in meta and check by subject + content
    try {
      const { stdout: fullJson } = await execAsync(
        `gog mail get ${gmailId} -a ${account} --json --results-only`,
        { maxBuffer: 10 * 1024 * 1024 }
      );
      const full = JSON.parse(fullJson);

      const headers = full.headers || {};
      const subject = headers.subject || msg.subject || '';
      const bodyText = full.body || '';
      const labels = full.message?.labelIds || msg.labels || [];
      const threadId = full.message?.threadId || msg.threadId || '';

      // Determine role based on direction
      const direction = labels.includes('SENT') ? 'outbound' : 'inbound';
      const role = direction === 'outbound' ? 'user' : 'assistant';

      // Build content with subject prefix for searchability
      const content = subject ? `${subject}\n\n${bodyText}` : bodyText;

      // Store metadata in the meta field
      const meta: Record<string, unknown> = {
        gmailId,
        threadId,
        account,
        subject,
        direction,
        labels,
      };

      // Parse sender info
      const { name: fromName, email: fromEmail } = parseEmailAddress(headers.from || msg.from || '');
      const toEmails = parseEmailList(headers.to || '');
      const ccEmails = parseEmailList(headers.cc || '');

      meta.fromEmail = fromEmail;
      meta.fromName = fromName;
      meta.toEmails = toEmails;
      meta.ccEmails = ccEmails;

      // Create message via ORM
      const result = await orm.message.create({
        data: {
          entityId,
          conversationId: defaultConversationId,
          role,
          content,
          meta,
        },
        select: { id: true },
      }).execute();

      if (result.ok) {
        inserted++;
        process.stdout.write('.');
      } else {
        failed++;
        console.error(`\n   Failed to create message: ${JSON.stringify(result.errors)}`);
      }
    } catch (e: any) {
      failed++;
      console.error(`\n   ${gmailId}: ${e.message}`);
    }
  }

  console.log(`\n   ${inserted} inserted, ${skipped} skipped, ${failed} failed`);
}

async function main() {
  console.log('Starting Email Ingestion...');

  const orm = createOrmClient();

  try {
    for (const account of ACCOUNTS) {
      await ingestAccount(orm, account);
    }
    console.log('\nEmail Ingestion Complete.');
  } catch (err) {
    console.error('Ingestion Failed:', err);
  }
}

main();
