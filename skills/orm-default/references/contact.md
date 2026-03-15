# contact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Contact records

## Usage

```typescript
db.contact.findMany({ select: { id: true } }).execute()
db.contact.findOne({ id: '<value>', select: { id: true } }).execute()
db.contact.create({ data: { entityId: '<value>', firstName: '<value>', lastName: '<value>', email: '<value>', phone: '<value>', headline: '<value>', bio: '<value>', location: '<value>', birthday: '<value>', relationshipType: '<value>', howWeMet: '<value>', twitterHandle: '<value>', linkedinUrl: '<value>', githubUsername: '<value>', instagramHandle: '<value>', website: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', searchTsv: '<value>', mainImageId: '<value>', searchTsvRank: '<value>', firstNameTrgmSimilarity: '<value>', lastNameTrgmSimilarity: '<value>', emailTrgmSimilarity: '<value>', phoneTrgmSimilarity: '<value>', headlineTrgmSimilarity: '<value>', bioTrgmSimilarity: '<value>', locationTrgmSimilarity: '<value>', relationshipTypeTrgmSimilarity: '<value>', howWeMetTrgmSimilarity: '<value>', twitterHandleTrgmSimilarity: '<value>', linkedinUrlTrgmSimilarity: '<value>', githubUsernameTrgmSimilarity: '<value>', instagramHandleTrgmSimilarity: '<value>', websiteTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.contact.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.contact.delete({ where: { id: '<value>' } }).execute()
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
  data: { entityId: 'value', firstName: 'value', lastName: 'value', email: 'value', phone: 'value', headline: 'value', bio: 'value', location: 'value', birthday: 'value', relationshipType: 'value', howWeMet: 'value', twitterHandle: 'value', linkedinUrl: 'value', githubUsername: 'value', instagramHandle: 'value', website: 'value', tags: 'value', embeddingText: 'value', embedding: 'value', searchTsv: 'value', mainImageId: 'value', searchTsvRank: 'value', firstNameTrgmSimilarity: 'value', lastNameTrgmSimilarity: 'value', emailTrgmSimilarity: 'value', phoneTrgmSimilarity: 'value', headlineTrgmSimilarity: 'value', bioTrgmSimilarity: 'value', locationTrgmSimilarity: 'value', relationshipTypeTrgmSimilarity: 'value', howWeMetTrgmSimilarity: 'value', twitterHandleTrgmSimilarity: 'value', linkedinUrlTrgmSimilarity: 'value', githubUsernameTrgmSimilarity: 'value', instagramHandleTrgmSimilarity: 'value', websiteTrgmSimilarity: 'value', embeddingTextTrgmSimilarity: 'value', embeddingVectorDistance: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
