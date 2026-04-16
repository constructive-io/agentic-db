import { config } from './config';
import { authenticate, createAuthenticatedClient } from './client';
import { embed } from './ollama';

async function main() {
  const ts = config.databaseName.split('-').pop();
  const ADMIN_EMAIL = `admin+${ts}@agentic-db.local`;
  const ADMIN_PASSWORD = process.env.ADMIN_PASSWORD || 'AgentOS2026!';

  const { token } = await authenticate(ADMIN_EMAIL, ADMIN_PASSWORD);
  const client = createAuthenticatedClient(token);

  console.log('Authenticating...');

  const contactData = {
    firstName: 'Doug',
    lastName: 'Song',
    headline: 'Founder of Duo Security',
    bio: 'Founder of Duo Security. Grew up with Dan in Ann Arbor. Known Dan since the 1990s.',
    tags: ['investor', 'founder', 'ann arbor']
  };

  const contactText = `${contactData.firstName} ${contactData.lastName} ${contactData.headline} ${contactData.bio} ${contactData.tags.join(' ')}`;
  const contactEmbedding = await embed(contactText);

  const contactRes = await client.contact.create({
    data: {
      ...contactData,
      embedding: contactEmbedding
    },
    select: { id: true }
  }).execute();

  if (contactRes.errors) {
    console.error('Contact Errors:', JSON.stringify(contactRes.errors, null, 2));
    throw new Error('Failed to create contact');
  }

  const dougId = contactRes.data?.createContact?.contact?.id;
  console.log('Created Contact Doug Song:', dougId);

  const taskData = {
    title: 'Consider Doug Song as a potential investor for Constructive fundraise',
    description: 'Doug is the founder of Duo Security, grew up with Dan in Ann Arbor, known since 1990s. Potential angel/investor for the round.',
    status: 'todo',
  };

  const taskText = `${taskData.title} ${taskData.description}`;
  const taskEmbedding = await embed(taskText);

  const taskRes = await client.task.create({
    data: {
      ...taskData,
      embedding: taskEmbedding
    },
    select: { id: true }
  }).execute();

  if (taskRes.errors) {
    console.error('Task Errors:', JSON.stringify(taskRes.errors, null, 2));
    throw new Error('Failed to create task');
  }

  const taskId = (taskRes.data as any)?.createTask?.task?.id;
  console.log('Created Task:', taskId);
  console.log('Done!');
}

main().catch(console.error);
