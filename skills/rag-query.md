---
name: rag-query
description: Execute RAG (Retrieval-Augmented Generation) queries across multiple collections
---

# RAG Query Pipeline

Retrieve relevant context from vector-indexed tables using semantic search.

## Prerequisites

- Provisioned agent-os database with vector columns
- HNSW indexes created on embedding columns
- Ollama running with `nomic-embed-text`

## Basic Vector Search

```typescript
import { createClient } from '@agent-os/codegen/generated/agent-os-sdk/orm';
import { generateEmbedding } from '@agent-os/scripts/embeddings';

const db = createClient({ /* ... */ });

// Search contacts by semantic similarity
async function searchContacts(query: string, limit = 10) {
  const queryEmbedding = await generateEmbedding(query);
  
  return db.vectorSearchContact({
    query: queryEmbedding,
    limit,
    metric: 'COSINE',
  }).execute();
}

const results = await searchContacts('postgres database expert');
// → [{ distance: 0.15, id: '...', firstName: 'Dan', ... }]
```

## Multi-Collection RAG

```typescript
async function ragQuery(
  query: string,
  collections: ('contacts' | 'documents' | 'memories')[] = ['contacts', 'documents'],
  limit = 5
) {
  const queryEmbedding = await generateEmbedding(query);
  
  const searchPromises = collections.map(async (collection) => {
    switch (collection) {
      case 'contacts':
        return db.vectorSearchContact({ query: queryEmbedding, limit }).execute();
      case 'documents':
        return db.vectorSearchDocument({ query: queryEmbedding, limit }).execute();
      case 'memories':
        return db.vectorSearchMemory({ query: queryEmbedding, limit }).execute();
    }
  });
  
  const results = await Promise.all(searchPromises);
  
  return {
    contacts: collections.includes('contacts') ? results[collections.indexOf('contacts')] : [],
    documents: collections.includes('documents') ? results[collections.indexOf('documents')] : [],
    memories: collections.includes('memories') ? results[collections.indexOf('memories')] : [],
    context: formatAsContext(results.flat()),
  };
}

function formatAsContext(results: any[]): string {
  return results
    .sort((a, b) => a.distance - b.distance)
    .slice(0, 10)
    .map(r => `[${r.distance.toFixed(3)}] ${JSON.stringify(r)}`)
    .join('\n\n');
}
```

## Distance Metrics

| Metric | Operator | Notes |
|--------|----------|-------|
| `COSINE` | `<=>` | Best for normalized embeddings (recommended) |
| `L2` | `<->` | Euclidean distance |
| `IP` | `<#>` | Inner product (for un-normalized) |

## Creating HNSW Indexes

```sql
-- For contacts table
CREATE INDEX ON app_public.contacts
  USING hnsw (embedding vector_cosine_ops)
  WITH (m = 16, ef_construction = 64);

-- For documents table  
CREATE INDEX ON app_public.documents
  USING hnsw (embedding vector_cosine_ops)
  WITH (m = 16, ef_construction = 64);
```

## See Also

- `skills/embeddings.md` — Generating embeddings
- `skills/crm/contacts.md` — Contact schema with embedding field
