---
name: embeddings
description: Generate text embeddings using Ollama and nomic-embed-text for vector search and RAG
---

# Embedding Generation

Generate 768-dimensional embeddings using Ollama's `nomic-embed-text` model.

## Prerequisites

- Ollama running locally
- `nomic-embed-text` model pulled: `ollama pull nomic-embed-text`

## Usage

```typescript
import { Ollama } from 'ollama';

const ollama = new Ollama();

// Single embedding
async function generateEmbedding(text: string): Promise<number[]> {
  const response = await ollama.embeddings({
    model: 'nomic-embed-text',
    prompt: text,
  });
  return response.embedding; // 768-dim vector
}

// Batch embeddings
async function generateEmbeddings(texts: string[]): Promise<number[][]> {
  return Promise.all(texts.map(generateEmbedding));
}
```

## Model Details

| Property | Value |
|----------|-------|
| Model | `nomic-embed-text` |
| Dimensions | 768 |
| Max tokens | ~8192 |
| Use case | General-purpose text embeddings |

## Best Practices

1. **Normalize text** — Remove excessive whitespace, lowercase if appropriate
2. **Chunk long documents** — Split into ~500-1000 token chunks for better retrieval
3. **Include context** — For contacts: `"${firstName} ${lastName} ${company} ${role}"`
4. **Batch when possible** — Reduces Ollama overhead

## Example: Contact Embedding

```typescript
function buildContactEmbeddingText(contact: {
  firstName: string;
  lastName: string;
  email?: string;
  company?: string;
  bio?: string;
}): string {
  return [
    `${contact.firstName} ${contact.lastName}`,
    contact.email,
    contact.company,
    contact.bio,
  ].filter(Boolean).join(' ');
}

const text = buildContactEmbeddingText({
  firstName: 'Dan',
  lastName: 'Lynch',
  company: 'Constructive',
  bio: 'Creator of pgsql-parser',
});

const embedding = await generateEmbedding(text);
// → [0.123, -0.456, ...] (768 values)
```

## See Also

- `skills/rag-query.md` — Using embeddings for RAG
- `skills/crm/contacts.md` — Contact embedding patterns
