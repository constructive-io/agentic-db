---
name: crm-contacts
description: CRUD operations for CRM contacts with embedding support
---

# CRM Contacts

Manage contacts in the CRM with automatic embedding generation for semantic search.

## Table Schema

| Field | Type | Notes |
|-------|------|-------|
| `id` | uuid | Primary key |
| `entity_id` | uuid | Org scope (required) |
| `first_name` | text | |
| `last_name` | text | |
| `email` | text | |
| `phone` | text | |
| `headline` | text | Job title / role |
| `bio` | text | |
| `avatar_url` | text | |
| `location` | text | |
| `embedding` | vector(768) | Nomic embedding |
| `embedding_text` | text | Text used for embedding |
| `created_at` | timestamptz | Auto |
| `updated_at` | timestamptz | Auto |

## Insert Contact

```typescript
import { createClient } from '@agentic-db/codegen/generated/agentic-db-sdk/orm';
import { generateEmbedding } from '@agentic-db/scripts/embeddings';

async function insertContact(db, data: {
  entityId: string;
  firstName: string;
  lastName: string;
  email?: string;
  headline?: string;
  bio?: string;
}) {
  const embeddingText = [
    data.firstName,
    data.lastName,
    data.email,
    data.headline,
    data.bio,
  ].filter(Boolean).join(' ');
  
  const embedding = await generateEmbedding(embeddingText);
  
  return db.contact.create({
    data: {
      entityId: data.entityId,
      firstName: data.firstName,
      lastName: data.lastName,
      email: data.email,
      headline: data.headline,
      bio: data.bio,
      embedding,
      embeddingText,
    },
    select: { id: true, firstName: true, lastName: true },
  }).execute();
}
```

## Search Contacts

```typescript
async function searchContacts(db, query: string, limit = 10) {
  const embedding = await generateEmbedding(query);
  
  return db.vectorSearchContact({
    query: embedding,
    limit,
    metric: 'COSINE',
  }).execute();
}

// Example
const results = await searchContacts(db, 'venture capital partner');
```

## Update Contact

```typescript
async function updateContact(db, id: string, data: Partial<{
  firstName: string;
  lastName: string;
  email: string;
  headline: string;
  bio: string;
}>) {
  // Re-generate embedding if text fields changed
  const needsReembed = data.firstName || data.lastName || data.email || data.headline || data.bio;
  
  if (needsReembed) {
    const current = await db.contact.findOne({
      id,
      select: { firstName: true, lastName: true, email: true, headline: true, bio: true },
    }).execute();
    
    const merged = { ...current.data.contact, ...data };
    const embeddingText = [
      merged.firstName,
      merged.lastName,
      merged.email,
      merged.headline,
      merged.bio,
    ].filter(Boolean).join(' ');
    
    const embedding = await generateEmbedding(embeddingText);
    data = { ...data, embedding, embeddingText } as any;
  }
  
  return db.contact.update({
    where: { id },
    data,
    select: { id: true },
  }).execute();
}
```

## Related Tables

- `contact_companies` — M2M junction to companies
- `contact_events` — M2M junction to events
- `contact_tags` — M2M junction to tags
- `contact_socials` — Social profiles
- `notes` — Notes linked to contact

## See Also

- `skills/crm/companies.md`
- `skills/embeddings.md`
- `skills/rag-query.md`
