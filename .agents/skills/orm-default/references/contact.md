# contact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Contact records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

**Unified Search API fields:** `searchTsv`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```typescript
db.contact.findMany({ select: { id: true } }).execute()
db.contact.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.contact.create({ data: { entityId: '<UUID>', firstName: '<String>', lastName: '<String>', email: '<String>', phone: '<String>', headline: '<String>', bio: '<String>', location: '<String>', birthday: '<Date>', relationshipType: '<String>', howWeMet: '<String>', tags: '<String>', mainImageId: '<UUID>', embeddingText: '<String>', searchTsv: '<FullText>', embedding: '<Vector>', embeddingStale: '<Boolean>', locationGeo: '<GeographyInterface>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', firstNameTrgmSimilarity: '<Float>', lastNameTrgmSimilarity: '<Float>', emailTrgmSimilarity: '<Float>', phoneTrgmSimilarity: '<Float>', headlineTrgmSimilarity: '<Float>', bioTrgmSimilarity: '<Float>', locationTrgmSimilarity: '<Float>', relationshipTypeTrgmSimilarity: '<Float>', howWeMetTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.contact.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.contact.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all contact records

```typescript
const items = await db.contact.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a contact

```typescript
const item = await db.contact.create({
  data: { entityId: '<UUID>', firstName: '<String>', lastName: '<String>', email: '<String>', phone: '<String>', headline: '<String>', bio: '<String>', location: '<String>', birthday: '<Date>', relationshipType: '<String>', howWeMet: '<String>', tags: '<String>', mainImageId: '<UUID>', embeddingText: '<String>', searchTsv: '<FullText>', embedding: '<Vector>', embeddingStale: '<Boolean>', locationGeo: '<GeographyInterface>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', firstNameTrgmSimilarity: '<Float>', lastNameTrgmSimilarity: '<Float>', emailTrgmSimilarity: '<Float>', phoneTrgmSimilarity: '<Float>', headlineTrgmSimilarity: '<Float>', bioTrgmSimilarity: '<Float>', locationTrgmSimilarity: '<Float>', relationshipTypeTrgmSimilarity: '<Float>', howWeMetTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
