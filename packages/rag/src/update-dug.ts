import { config } from './config';
import { authenticate, createAuthenticatedClient } from './client';
import { embed } from './ollama';

async function main() {
  const ts = config.databaseName.split('-').pop();
  const ADMIN_EMAIL = `admin+${ts}@agentic-db.local`;
  const ADMIN_PASSWORD = process.env.ADMIN_PASSWORD || 'AgentOS2026!';

  const { token } = await authenticate(ADMIN_EMAIL, ADMIN_PASSWORD);
  const client = createAuthenticatedClient(token);

  console.log('Authenticating and enriching Dug Song...');

  const dugId = "34c2db90-52a9-49d5-8947-0e52f84df922";

  const contactData = {
    firstName: 'Dug', // correcting Doug -> Dug
    lastName: 'Song',
    headline: 'Co-founder of Duo Security & The Song Foundation',
    bio: 'Co-founder and former CEO of Duo Security (acquired by Cisco for $2.35B - Michigan’s first tech unicorn). Co-founder and Chair at Michigan Founders Fund. Active in Decibel VC and Renaissance Venture Capital. Grew up with Dan in Ann Arbor; known Dan since the 1990s.',
    tags: ['investor', 'founder', 'ann arbor', 'cybersecurity', 'cisco', 'unicorn']
  };

  const contactText = `${contactData.firstName} ${contactData.lastName} ${contactData.headline} ${contactData.bio} ${contactData.tags.join(' ')}`;
  const contactEmbedding = await embed(contactText);

  const contactRes = await client.contact.update({
    where: { id: dugId },
    data: {
      firstName: contactData.firstName,
      headline: contactData.headline,
      bio: contactData.bio,
      tags: contactData.tags.join(','),
      embedding: contactEmbedding
    },
    select: { id: true, firstName: true }
  }).execute();

  if (contactRes.errors) {
    console.error('Contact Update Errors:', JSON.stringify(contactRes.errors, null, 2));
    throw new Error('Failed to update contact');
  }

  console.log('Successfully enriched and updated Contact:', contactRes.data?.updateContact?.contact?.id);
  
  // also update the task with his correct name
  const taskRes = await client.task.findMany({
    where: { title: { like: "%Doug Song%" } },
    select: { id: true, title: true }
  }).execute();
  
  const taskId = taskRes.data?.tasks?.nodes?.[0]?.id;
  if (taskId) {
     const newTaskTitle = 'Consider Dug Song as a potential investor for Constructive fundraise';
     const newTaskDesc = 'Dug is the founder of Duo Security, grew up with Dan in Ann Arbor, known since 1990s. Potential angel/investor for the round.';
     const taskText = `${newTaskTitle} ${newTaskDesc} fundraise investor`;
     const taskEmbedding = await embed(taskText);
     
     await client.task.update({
       where: { id: taskId },
       data: { title: newTaskTitle, description: newTaskDesc, embedding: taskEmbedding },
       select: { id: true }
     }).execute();
     console.log('Updated Task name to Dug Song');
  }

  console.log('Done!');
}

main().catch(console.error);
