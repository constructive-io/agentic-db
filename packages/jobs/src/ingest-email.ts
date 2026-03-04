import { Client } from 'pg';
import { exec } from 'child_process';
import { promisify } from 'util';
import * as dotenv from 'dotenv';
import * as path from 'path';

dotenv.config({ path: path.resolve(__dirname, '../../../.env') });

const execAsync = promisify(exec);
const AVENGERS_URL = process.env.AVENGERS_DB_URL || 'postgres://postgres:password@localhost:5432/avengers';

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

async function ingestAccount(client: Client, account: string) {
  console.log(`\n📧 Ingesting ${account}...`);

  // Check watermark
  const wmRes = await client.query(
    `SELECT last_synced_at FROM email.ingest_watermarks WHERE account = $1`,
    [account]
  );
  
  const lastSync = wmRes.rows[0]?.last_synced_at;
  const query = lastSync ? 'newer_than:1d' : 'newer_than:7d';
  console.log(`   Query: "${query}" (last sync: ${lastSync || 'never'})`);

  // Fetch message list
  let messages: any[];
  try {
    const { stdout } = await execAsync(
      `gog mail messages list "${query}" -a ${account} --json --results-only --limit 50`,
      { maxBuffer: 10 * 1024 * 1024 }
    );
    messages = JSON.parse(stdout);
  } catch (e: any) {
    console.error(`   ❌ Failed to list messages: ${e.message}`);
    return;
  }

  console.log(`   Found ${messages.length} messages`);

  let inserted = 0;
  let skipped = 0;
  let failed = 0;

  for (const msg of messages) {
    const gmailId = msg.id;
    if (!gmailId) continue;

    // Check if already exists
    const exists = await client.query(
      `SELECT 1 FROM email.messages WHERE gmail_id = $1`, [gmailId]
    );
    if (exists.rows.length > 0) {
      skipped++;
      continue;
    }

    // Fetch full message
    try {
      const { stdout: fullJson } = await execAsync(
        `gog mail get ${gmailId} -a ${account} --json --results-only`,
        { maxBuffer: 10 * 1024 * 1024 }
      );
      const full = JSON.parse(fullJson);

      const headers = full.headers || {};
      const { name: fromName, email: fromEmail } = parseEmailAddress(headers.from || msg.from || '');
      const toEmails = parseEmailList(headers.to || '');
      const ccEmails = parseEmailList(headers.cc || '');
      const bccEmails = parseEmailList(headers.bcc || '');
      const subject = headers.subject || msg.subject || '';
      const sentAt = headers.date ? new Date(headers.date) : new Date(msg.date);
      const bodyText = full.body || '';
      const labels = full.message?.labelIds || msg.labels || [];
      const threadId = full.message?.threadId || msg.threadId || '';
      const snippet = full.message?.snippet || '';

      // Determine direction
      const direction = labels.includes('SENT') ? 'outbound' : 'inbound';

      // Detect newsletters/notifications (simple heuristic)
      const isNewsletter = labels.includes('CATEGORY_PROMOTIONS') || 
                           labels.includes('CATEGORY_SOCIAL');
      const isNotification = labels.includes('CATEGORY_UPDATES') ||
                             fromEmail.includes('noreply') ||
                             fromEmail.includes('no-reply') ||
                             fromEmail.includes('notifications@');

      await client.query(`
        INSERT INTO email.messages 
          (gmail_id, thread_id, account, subject, sent_at, direction,
           from_email, from_name, to_emails, cc_emails, bcc_emails,
           body_text, labels, snippet, is_newsletter, is_notification)
        VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15, $16)
        ON CONFLICT (gmail_id) DO NOTHING
      `, [
        gmailId, threadId, account, subject, sentAt, direction,
        fromEmail, fromName, toEmails, ccEmails, bccEmails,
        bodyText, labels, snippet, isNewsletter, isNotification
      ]);

      inserted++;
      process.stdout.write('.');
    } catch (e: any) {
      failed++;
      console.error(`\n   ❌ ${gmailId}: ${e.message}`);
    }
  }

  console.log(`\n   ✅ ${inserted} inserted, ${skipped} skipped, ${failed} failed`);

  // Update watermark
  await client.query(`
    INSERT INTO email.ingest_watermarks (account, last_synced_at, last_run_at, messages_total)
    VALUES ($1, NOW(), NOW(), (SELECT count(*) FROM email.messages WHERE account = $1))
    ON CONFLICT (account) DO UPDATE SET
      last_synced_at = NOW(),
      last_run_at = NOW(),
      messages_total = (SELECT count(*) FROM email.messages WHERE account = $1)
  `, [account]);
}

async function main() {
  console.log('🚀 Starting Email Ingestion (Target: Avengers DB)...');
  
  const client = new Client({ connectionString: AVENGERS_URL });
  await client.connect();

  try {
    for (const account of ACCOUNTS) {
      await ingestAccount(client, account);
    }
    console.log('\n✅ Email Ingestion Complete.');
  } catch (err) {
    console.error('❌ Ingestion Failed:', err);
  } finally {
    await client.end();
  }
}

main();
