# contact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Contact records

## Usage

```typescript
db.contact.findMany({ select: { id: true } }).execute()
db.contact.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.contact.create({ data: { entityId: '<UUID>', firstName: '<String>', lastName: '<String>', email: '<String>', phone: '<String>', headline: '<String>', bio: '<String>', location: '<String>', birthday: '<Date>', relationshipType: '<String>', howWeMet: '<String>', twitterHandle: '<String>', linkedinUrl: '<String>', githubUsername: '<String>', instagramHandle: '<String>', website: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', searchTsv: '<FullText>', mainImageId: '<UUID>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', firstNameTrgmSimilarity: '<Float>', lastNameTrgmSimilarity: '<Float>', emailTrgmSimilarity: '<Float>', phoneTrgmSimilarity: '<Float>', headlineTrgmSimilarity: '<Float>', bioTrgmSimilarity: '<Float>', locationTrgmSimilarity: '<Float>', relationshipTypeTrgmSimilarity: '<Float>', howWeMetTrgmSimilarity: '<Float>', twitterHandleTrgmSimilarity: '<Float>', linkedinUrlTrgmSimilarity: '<Float>', githubUsernameTrgmSimilarity: '<Float>', instagramHandleTrgmSimilarity: '<Float>', websiteTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
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
  data: { entityId: '<UUID>', firstName: '<String>', lastName: '<String>', email: '<String>', phone: '<String>', headline: '<String>', bio: '<String>', location: '<String>', birthday: '<Date>', relationshipType: '<String>', howWeMet: '<String>', twitterHandle: '<String>', linkedinUrl: '<String>', githubUsername: '<String>', instagramHandle: '<String>', website: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', searchTsv: '<FullText>', mainImageId: '<UUID>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', firstNameTrgmSimilarity: '<Float>', lastNameTrgmSimilarity: '<Float>', emailTrgmSimilarity: '<Float>', phoneTrgmSimilarity: '<Float>', headlineTrgmSimilarity: '<Float>', bioTrgmSimilarity: '<Float>', locationTrgmSimilarity: '<Float>', relationshipTypeTrgmSimilarity: '<Float>', howWeMetTrgmSimilarity: '<Float>', twitterHandleTrgmSimilarity: '<Float>', linkedinUrlTrgmSimilarity: '<Float>', githubUsernameTrgmSimilarity: '<Float>', instagramHandleTrgmSimilarity: '<Float>', websiteTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
