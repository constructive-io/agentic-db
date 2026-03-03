import { authenticate, createRawAdapter } from './client';
import { createClient } from '@agentic-sdk/sdk';

const TEST_EMAIL = 'rag-test@example.com';
const TEST_PASSWORD = 'RagTest123!';

async function main() {
  const { token } = await authenticate(TEST_EMAIL, TEST_PASSWORD);
  const adapter = createRawAdapter(token);
  const client = createClient({ adapter });

  console.log('Searching for Kristopher...');
  const result = await client.contact.findMany({
    filter: { firstName: { includes: 'Kristopher' } },
    select: { id: true, firstName: true, lastName: true, email: true }
  }).execute();

  if (result.ok) {
    console.log('Found:', result.data.contacts.nodes);
  } else {
    console.error('Error:', result.errors);
  }
}

main();
