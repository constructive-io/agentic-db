import { search } from './src/search';
import { authenticate, createAuthenticatedClient } from './src/client';
import { embed } from './src/ollama';

async function main() {
  const { token } = await authenticate('admin+1773554871345@agentic-db.local', 'AgentOS2026!');
  const client = createAuthenticatedClient(token);
  const qe = await embed('Constructive');
  const res = await (client as any).contact.findMany({
    where: { vectorEmbedding: { vector: qe, metric: 'COSINE', distance: 2.0 } },
    first: 5,
    select: { id: true, firstName: true, embeddingVectorDistance: true },
  }).execute();
  console.log(JSON.stringify(res, null, 2));
}
main().catch(console.error);
