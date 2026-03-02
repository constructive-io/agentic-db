# ORM Client

<p align="center" width="100%">
  <img height="120" src="https://raw.githubusercontent.com/constructive-io/constructive/refs/heads/main/assets/outline-logo.svg" />
</p>

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

## Setup

```typescript
import { createClient } from './orm';

const db = createClient({
  endpoint: 'https://api.example.com/graphql',
  headers: { Authorization: 'Bearer <token>' },
});
```

## Models

| Model | Operations |
|-------|------------|
| `contactCompany` | findMany, findOne, create, update, delete |
| `contactEvent` | findMany, findOne, create, update, delete |
| `dealContact` | findMany, findOne, create, update, delete |
| `eventVenue` | findMany, findOne, create, update, delete |
| `tag` | findMany, findOne, create, update, delete |
| `note` | findMany, findOne, create, update, delete |
| `venue` | findMany, findOne, create, update, delete |
| `contact` | findMany, findOne, create, update, delete |
| `event` | findMany, findOne, create, update, delete |
| `deal` | findMany, findOne, create, update, delete |
| `company` | findMany, findOne, create, update, delete |

## Table Operations

### `db.contactCompany`

CRUD operations for ContactCompany records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `contactId` | UUID | Yes |
| `companyId` | UUID | Yes |
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all contactCompany records
const items = await db.contactCompany.findMany({ select: { contactId: true, companyId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.contactCompany.findOne({ id: '<value>', select: { contactId: true, companyId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.contactCompany.create({ data: { contactId: '<value>', companyId: '<value>', entityId: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.contactCompany.update({ where: { id: '<value>' }, data: { contactId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.contactCompany.delete({ where: { id: '<value>' } }).execute();
```

### `db.contactEvent`

CRUD operations for ContactEvent records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `contactId` | UUID | Yes |
| `eventId` | UUID | Yes |
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all contactEvent records
const items = await db.contactEvent.findMany({ select: { contactId: true, eventId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.contactEvent.findOne({ id: '<value>', select: { contactId: true, eventId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.contactEvent.create({ data: { contactId: '<value>', eventId: '<value>', entityId: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.contactEvent.update({ where: { id: '<value>' }, data: { contactId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.contactEvent.delete({ where: { id: '<value>' } }).execute();
```

### `db.dealContact`

CRUD operations for DealContact records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `dealId` | UUID | Yes |
| `contactId` | UUID | Yes |
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all dealContact records
const items = await db.dealContact.findMany({ select: { dealId: true, contactId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.dealContact.findOne({ id: '<value>', select: { dealId: true, contactId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.dealContact.create({ data: { dealId: '<value>', contactId: '<value>', entityId: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.dealContact.update({ where: { id: '<value>' }, data: { dealId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.dealContact.delete({ where: { id: '<value>' } }).execute();
```

### `db.eventVenue`

CRUD operations for EventVenue records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `eventId` | UUID | Yes |
| `venueId` | UUID | Yes |
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all eventVenue records
const items = await db.eventVenue.findMany({ select: { eventId: true, venueId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.eventVenue.findOne({ id: '<value>', select: { eventId: true, venueId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.eventVenue.create({ data: { eventId: '<value>', venueId: '<value>', entityId: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.eventVenue.update({ where: { id: '<value>' }, data: { eventId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.eventVenue.delete({ where: { id: '<value>' } }).execute();
```

### `db.tag`

CRUD operations for Tag records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `name` | String | Yes |

**Operations:**

```typescript
// List all tag records
const items = await db.tag.findMany({ select: { id: true, name: true } }).execute();

// Get one by id
const item = await db.tag.findOne({ id: '<value>', select: { id: true, name: true } }).execute();

// Create
const created = await db.tag.create({ data: { name: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.tag.update({ where: { id: '<value>' }, data: { name: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.tag.delete({ where: { id: '<value>' } }).execute();
```

### `db.note`

CRUD operations for Note records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `content` | String | Yes |
| `contactId` | UUID | Yes |

**Operations:**

```typescript
// List all note records
const items = await db.note.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, content: true, contactId: true } }).execute();

// Get one by id
const item = await db.note.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, content: true, contactId: true } }).execute();

// Create
const created = await db.note.create({ data: { entityId: '<value>', content: '<value>', contactId: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.note.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.note.delete({ where: { id: '<value>' } }).execute();
```

### `db.venue`

CRUD operations for Venue records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `name` | String | Yes |
| `neighborhood` | String | Yes |
| `city` | String | Yes |
| `status` | String | Yes |
| `notes` | String | Yes |

**Operations:**

```typescript
// List all venue records
const items = await db.venue.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, neighborhood: true, city: true, status: true, notes: true } }).execute();

// Get one by id
const item = await db.venue.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, neighborhood: true, city: true, status: true, notes: true } }).execute();

// Create
const created = await db.venue.create({ data: { entityId: '<value>', name: '<value>', neighborhood: '<value>', city: '<value>', status: '<value>', notes: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.venue.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.venue.delete({ where: { id: '<value>' } }).execute();
```

### `db.contact`

CRUD operations for Contact records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `firstName` | String | Yes |
| `lastName` | String | Yes |
| `email` | String | Yes |
| `phone` | String | Yes |
| `headline` | String | Yes |
| `bio` | String | Yes |
| `location` | String | Yes |

**Operations:**

```typescript
// List all contact records
const items = await db.contact.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, firstName: true, lastName: true, email: true, phone: true, headline: true, bio: true, location: true } }).execute();

// Get one by id
const item = await db.contact.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, firstName: true, lastName: true, email: true, phone: true, headline: true, bio: true, location: true } }).execute();

// Create
const created = await db.contact.create({ data: { entityId: '<value>', firstName: '<value>', lastName: '<value>', email: '<value>', phone: '<value>', headline: '<value>', bio: '<value>', location: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.contact.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.contact.delete({ where: { id: '<value>' } }).execute();
```

### `db.event`

CRUD operations for Event records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `name` | String | Yes |
| `eventType` | String | Yes |
| `location` | String | Yes |
| `city` | String | Yes |
| `startedAt` | Datetime | Yes |
| `endedAt` | Datetime | Yes |
| `notes` | String | Yes |

**Operations:**

```typescript
// List all event records
const items = await db.event.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, eventType: true, location: true, city: true, startedAt: true, endedAt: true, notes: true } }).execute();

// Get one by id
const item = await db.event.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, eventType: true, location: true, city: true, startedAt: true, endedAt: true, notes: true } }).execute();

// Create
const created = await db.event.create({ data: { entityId: '<value>', name: '<value>', eventType: '<value>', location: '<value>', city: '<value>', startedAt: '<value>', endedAt: '<value>', notes: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.event.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.event.delete({ where: { id: '<value>' } }).execute();
```

### `db.deal`

CRUD operations for Deal records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `name` | String | Yes |
| `stage` | String | Yes |
| `value` | BigFloat | Yes |
| `notes` | String | Yes |

**Operations:**

```typescript
// List all deal records
const items = await db.deal.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, stage: true, value: true, notes: true } }).execute();

// Get one by id
const item = await db.deal.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, stage: true, value: true, notes: true } }).execute();

// Create
const created = await db.deal.create({ data: { entityId: '<value>', name: '<value>', stage: '<value>', value: '<value>', notes: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.deal.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.deal.delete({ where: { id: '<value>' } }).execute();
```

### `db.company`

CRUD operations for Company records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `name` | String | Yes |
| `domain` | String | Yes |
| `industry` | String | Yes |
| `description` | String | Yes |
| `test1772427893521` | Float | Yes |
| `test1772427893568` | Float | Yes |
| `test1772427893598` | Float | Yes |
| `embedding` | Float | Yes |
| `embeddingText` | String | Yes |

**Operations:**

```typescript
// List all company records
const items = await db.company.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, domain: true, industry: true, description: true, test1772427893521: true, test1772427893568: true, test1772427893598: true, embedding: true, embeddingText: true } }).execute();

// Get one by id
const item = await db.company.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, domain: true, industry: true, description: true, test1772427893521: true, test1772427893568: true, test1772427893598: true, embedding: true, embeddingText: true } }).execute();

// Create
const created = await db.company.create({ data: { entityId: '<value>', name: '<value>', domain: '<value>', industry: '<value>', description: '<value>', test1772427893521: '<value>', test1772427893568: '<value>', test1772427893598: '<value>', embedding: '<value>', embeddingText: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.company.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.company.delete({ where: { id: '<value>' } }).execute();
```

---

Built by the [Constructive](https://constructive.io) team.

## Disclaimer

AS DESCRIBED IN THE LICENSES, THE SOFTWARE IS PROVIDED "AS IS", AT YOUR OWN RISK, AND WITHOUT WARRANTIES OF ANY KIND.

No developer or entity involved in creating this software will be liable for any claims or damages whatsoever associated with your use, inability to use, or your interaction with other users of the code, including any direct, indirect, incidental, special, exemplary, punitive or consequential damages, or loss of profits, cryptocurrencies, tokens, or anything else of value.
