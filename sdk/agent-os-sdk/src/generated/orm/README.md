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
| `companyImage` | findMany, findOne, create, update, delete |
| `contactCompany` | findMany, findOne, create, update, delete |
| `contactEvent` | findMany, findOne, create, update, delete |
| `contactImage` | findMany, findOne, create, update, delete |
| `dealContact` | findMany, findOne, create, update, delete |
| `eventImage` | findMany, findOne, create, update, delete |
| `eventVenue` | findMany, findOne, create, update, delete |
| `venueImage` | findMany, findOne, create, update, delete |
| `calendarSync` | findMany, findOne, create, update, delete |
| `file` | findMany, findOne, create, update, delete |
| `emailAccount` | findMany, findOne, create, update, delete |
| `executionLog` | findMany, findOne, create, update, delete |
| `chat` | findMany, findOne, create, update, delete |
| `project` | findMany, findOne, create, update, delete |
| `repository` | findMany, findOne, create, update, delete |
| `session` | findMany, findOne, create, update, delete |
| `blueprint` | findMany, findOne, create, update, delete |
| `image` | findMany, findOne, create, update, delete |
| `milestone` | findMany, findOne, create, update, delete |
| `chatMessage` | findMany, findOne, create, update, delete |
| `chunk` | findMany, findOne, create, update, delete |
| `memory` | findMany, findOne, create, update, delete |
| `deal` | findMany, findOne, create, update, delete |
| `document` | findMany, findOne, create, update, delete |
| `task` | findMany, findOne, create, update, delete |
| `rule` | findMany, findOne, create, update, delete |
| `skill` | findMany, findOne, create, update, delete |
| `expense` | findMany, findOne, create, update, delete |
| `note` | findMany, findOne, create, update, delete |
| `message` | findMany, findOne, create, update, delete |
| `company` | findMany, findOne, create, update, delete |
| `venue` | findMany, findOne, create, update, delete |
| `contact` | findMany, findOne, create, update, delete |
| `event` | findMany, findOne, create, update, delete |

## Table Operations

### `db.companyImage`

CRUD operations for CompanyImage records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `companyId` | UUID | Yes |
| `imageId` | UUID | Yes |
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all companyImage records
const items = await db.companyImage.findMany({ select: { companyId: true, imageId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.companyImage.findOne({ id: '<value>', select: { companyId: true, imageId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.companyImage.create({ data: { companyId: '<value>', imageId: '<value>', entityId: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.companyImage.update({ where: { id: '<value>' }, data: { companyId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.companyImage.delete({ where: { id: '<value>' } }).execute();
```

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

### `db.contactImage`

CRUD operations for ContactImage records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `contactId` | UUID | Yes |
| `imageId` | UUID | Yes |
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all contactImage records
const items = await db.contactImage.findMany({ select: { contactId: true, imageId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.contactImage.findOne({ id: '<value>', select: { contactId: true, imageId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.contactImage.create({ data: { contactId: '<value>', imageId: '<value>', entityId: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.contactImage.update({ where: { id: '<value>' }, data: { contactId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.contactImage.delete({ where: { id: '<value>' } }).execute();
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

### `db.eventImage`

CRUD operations for EventImage records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `eventId` | UUID | Yes |
| `imageId` | UUID | Yes |
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all eventImage records
const items = await db.eventImage.findMany({ select: { eventId: true, imageId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.eventImage.findOne({ id: '<value>', select: { eventId: true, imageId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.eventImage.create({ data: { eventId: '<value>', imageId: '<value>', entityId: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.eventImage.update({ where: { id: '<value>' }, data: { eventId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.eventImage.delete({ where: { id: '<value>' } }).execute();
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

### `db.venueImage`

CRUD operations for VenueImage records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `venueId` | UUID | Yes |
| `imageId` | UUID | Yes |
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all venueImage records
const items = await db.venueImage.findMany({ select: { venueId: true, imageId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.venueImage.findOne({ id: '<value>', select: { venueId: true, imageId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.venueImage.create({ data: { venueId: '<value>', imageId: '<value>', entityId: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.venueImage.update({ where: { id: '<value>' }, data: { venueId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.venueImage.delete({ where: { id: '<value>' } }).execute();
```

### `db.calendarSync`

CRUD operations for CalendarSync records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `provider` | String | Yes |
| `syncToken` | String | Yes |
| `lastSyncedAt` | Datetime | Yes |

**Operations:**

```typescript
// List all calendarSync records
const items = await db.calendarSync.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, provider: true, syncToken: true, lastSyncedAt: true } }).execute();

// Get one by id
const item = await db.calendarSync.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, provider: true, syncToken: true, lastSyncedAt: true } }).execute();

// Create
const created = await db.calendarSync.create({ data: { entityId: '<value>', provider: '<value>', syncToken: '<value>', lastSyncedAt: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.calendarSync.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.calendarSync.delete({ where: { id: '<value>' } }).execute();
```

### `db.file`

CRUD operations for File records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `path` | String | Yes |
| `language` | String | Yes |
| `hash` | String | Yes |
| `repositoryId` | UUID | Yes |

**Operations:**

```typescript
// List all file records
const items = await db.file.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, path: true, language: true, hash: true, repositoryId: true } }).execute();

// Get one by id
const item = await db.file.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, path: true, language: true, hash: true, repositoryId: true } }).execute();

// Create
const created = await db.file.create({ data: { entityId: '<value>', path: '<value>', language: '<value>', hash: '<value>', repositoryId: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.file.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.file.delete({ where: { id: '<value>' } }).execute();
```

### `db.emailAccount`

CRUD operations for EmailAccount records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `email` | String | Yes |
| `provider` | String | Yes |
| `syncState` | JSON | Yes |

**Operations:**

```typescript
// List all emailAccount records
const items = await db.emailAccount.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, email: true, provider: true, syncState: true } }).execute();

// Get one by id
const item = await db.emailAccount.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, email: true, provider: true, syncState: true } }).execute();

// Create
const created = await db.emailAccount.create({ data: { entityId: '<value>', email: '<value>', provider: '<value>', syncState: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.emailAccount.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.emailAccount.delete({ where: { id: '<value>' } }).execute();
```

### `db.executionLog`

CRUD operations for ExecutionLog records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `stepName` | String | Yes |
| `input` | String | Yes |
| `output` | String | Yes |
| `toolCalls` | JSON | Yes |
| `durationMs` | Int | Yes |
| `sessionId` | UUID | Yes |

**Operations:**

```typescript
// List all executionLog records
const items = await db.executionLog.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, stepName: true, input: true, output: true, toolCalls: true, durationMs: true, sessionId: true } }).execute();

// Get one by id
const item = await db.executionLog.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, stepName: true, input: true, output: true, toolCalls: true, durationMs: true, sessionId: true } }).execute();

// Create
const created = await db.executionLog.create({ data: { entityId: '<value>', stepName: '<value>', input: '<value>', output: '<value>', toolCalls: '<value>', durationMs: '<value>', sessionId: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.executionLog.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.executionLog.delete({ where: { id: '<value>' } }).execute();
```

### `db.chat`

CRUD operations for Chat records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `title` | String | Yes |
| `startedAt` | Datetime | Yes |
| `embedding` | Vector | Yes |
| `embeddingDistance` | Float | Yes |

**Operations:**

```typescript
// List all chat records
const items = await db.chat.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, startedAt: true, embedding: true, embeddingDistance: true } }).execute();

// Get one by id
const item = await db.chat.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, startedAt: true, embedding: true, embeddingDistance: true } }).execute();

// Create
const created = await db.chat.create({ data: { entityId: '<value>', title: '<value>', startedAt: '<value>', embedding: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.chat.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.chat.delete({ where: { id: '<value>' } }).execute();
```

### `db.project`

CRUD operations for Project records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `name` | String | Yes |
| `description` | String | Yes |
| `status` | String | Yes |
| `startDate` | Datetime | Yes |
| `dueDate` | Datetime | Yes |
| `embedding` | Vector | Yes |
| `embeddingDistance` | Float | Yes |

**Operations:**

```typescript
// List all project records
const items = await db.project.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, description: true, status: true, startDate: true, dueDate: true, embedding: true, embeddingDistance: true } }).execute();

// Get one by id
const item = await db.project.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, description: true, status: true, startDate: true, dueDate: true, embedding: true, embeddingDistance: true } }).execute();

// Create
const created = await db.project.create({ data: { entityId: '<value>', name: '<value>', description: '<value>', status: '<value>', startDate: '<value>', dueDate: '<value>', embedding: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.project.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.project.delete({ where: { id: '<value>' } }).execute();
```

### `db.repository`

CRUD operations for Repository records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `name` | String | Yes |
| `url` | String | Yes |
| `description` | String | Yes |
| `defaultBranch` | String | Yes |
| `lastSyncedAt` | Datetime | Yes |
| `embedding` | Vector | Yes |
| `embeddingDistance` | Float | Yes |

**Operations:**

```typescript
// List all repository records
const items = await db.repository.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, url: true, description: true, defaultBranch: true, lastSyncedAt: true, embedding: true, embeddingDistance: true } }).execute();

// Get one by id
const item = await db.repository.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, url: true, description: true, defaultBranch: true, lastSyncedAt: true, embedding: true, embeddingDistance: true } }).execute();

// Create
const created = await db.repository.create({ data: { entityId: '<value>', name: '<value>', url: '<value>', description: '<value>', defaultBranch: '<value>', lastSyncedAt: '<value>', embedding: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.repository.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.repository.delete({ where: { id: '<value>' } }).execute();
```

### `db.session`

CRUD operations for Session records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `title` | String | Yes |
| `startedAt` | Datetime | Yes |
| `endedAt` | Datetime | Yes |
| `status` | String | Yes |
| `contextSummary` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingDistance` | Float | Yes |

**Operations:**

```typescript
// List all session records
const items = await db.session.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, startedAt: true, endedAt: true, status: true, contextSummary: true, embedding: true, embeddingDistance: true } }).execute();

// Get one by id
const item = await db.session.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, startedAt: true, endedAt: true, status: true, contextSummary: true, embedding: true, embeddingDistance: true } }).execute();

// Create
const created = await db.session.create({ data: { entityId: '<value>', title: '<value>', startedAt: '<value>', endedAt: '<value>', status: '<value>', contextSummary: '<value>', embedding: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.session.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.session.delete({ where: { id: '<value>' } }).execute();
```

### `db.blueprint`

CRUD operations for Blueprint records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `title` | String | Yes |
| `steps` | JSON | Yes |
| `triggerConditions` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingDistance` | Float | Yes |

**Operations:**

```typescript
// List all blueprint records
const items = await db.blueprint.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, steps: true, triggerConditions: true, embedding: true, embeddingDistance: true } }).execute();

// Get one by id
const item = await db.blueprint.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, steps: true, triggerConditions: true, embedding: true, embeddingDistance: true } }).execute();

// Create
const created = await db.blueprint.create({ data: { entityId: '<value>', title: '<value>', steps: '<value>', triggerConditions: '<value>', embedding: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.blueprint.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.blueprint.delete({ where: { id: '<value>' } }).execute();
```

### `db.image`

CRUD operations for Image records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `url` | String | Yes |
| `meta` | JSON | Yes |
| `altText` | String | Yes |
| `caption` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingDistance` | Float | Yes |

**Operations:**

```typescript
// List all image records
const items = await db.image.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, url: true, meta: true, altText: true, caption: true, embedding: true, embeddingDistance: true } }).execute();

// Get one by id
const item = await db.image.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, url: true, meta: true, altText: true, caption: true, embedding: true, embeddingDistance: true } }).execute();

// Create
const created = await db.image.create({ data: { entityId: '<value>', url: '<value>', meta: '<value>', altText: '<value>', caption: '<value>', embedding: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.image.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.image.delete({ where: { id: '<value>' } }).execute();
```

### `db.milestone`

CRUD operations for Milestone records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `name` | String | Yes |
| `dueDate` | Datetime | Yes |
| `embedding` | Vector | Yes |
| `projectId` | UUID | Yes |
| `embeddingDistance` | Float | Yes |

**Operations:**

```typescript
// List all milestone records
const items = await db.milestone.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, dueDate: true, embedding: true, projectId: true, embeddingDistance: true } }).execute();

// Get one by id
const item = await db.milestone.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, dueDate: true, embedding: true, projectId: true, embeddingDistance: true } }).execute();

// Create
const created = await db.milestone.create({ data: { entityId: '<value>', name: '<value>', dueDate: '<value>', embedding: '<value>', projectId: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.milestone.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.milestone.delete({ where: { id: '<value>' } }).execute();
```

### `db.chatMessage`

CRUD operations for ChatMessage records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `role` | String | Yes |
| `content` | String | Yes |
| `toolCalls` | JSON | Yes |
| `embedding` | Vector | Yes |
| `chatId` | UUID | Yes |
| `embeddingDistance` | Float | Yes |

**Operations:**

```typescript
// List all chatMessage records
const items = await db.chatMessage.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, role: true, content: true, toolCalls: true, embedding: true, chatId: true, embeddingDistance: true } }).execute();

// Get one by id
const item = await db.chatMessage.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, role: true, content: true, toolCalls: true, embedding: true, chatId: true, embeddingDistance: true } }).execute();

// Create
const created = await db.chatMessage.create({ data: { entityId: '<value>', role: '<value>', content: '<value>', toolCalls: '<value>', embedding: '<value>', chatId: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.chatMessage.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.chatMessage.delete({ where: { id: '<value>' } }).execute();
```

### `db.chunk`

CRUD operations for Chunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `content` | String | Yes |
| `startLine` | Int | Yes |
| `endLine` | Int | Yes |
| `embedding` | Vector | Yes |
| `fileId` | UUID | Yes |
| `repositoryId` | UUID | Yes |
| `embeddingDistance` | Float | Yes |

**Operations:**

```typescript
// List all chunk records
const items = await db.chunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, content: true, startLine: true, endLine: true, embedding: true, fileId: true, repositoryId: true, embeddingDistance: true } }).execute();

// Get one by id
const item = await db.chunk.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, content: true, startLine: true, endLine: true, embedding: true, fileId: true, repositoryId: true, embeddingDistance: true } }).execute();

// Create
const created = await db.chunk.create({ data: { entityId: '<value>', content: '<value>', startLine: '<value>', endLine: '<value>', embedding: '<value>', fileId: '<value>', repositoryId: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.chunk.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.chunk.delete({ where: { id: '<value>' } }).execute();
```

### `db.memory`

CRUD operations for Memory records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `content` | String | Yes |
| `tags` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingDistance` | Float | Yes |

**Operations:**

```typescript
// List all memory records
const items = await db.memory.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, content: true, tags: true, embedding: true, embeddingDistance: true } }).execute();

// Get one by id
const item = await db.memory.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, content: true, tags: true, embedding: true, embeddingDistance: true } }).execute();

// Create
const created = await db.memory.create({ data: { entityId: '<value>', content: '<value>', tags: '<value>', embedding: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.memory.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.memory.delete({ where: { id: '<value>' } }).execute();
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
| `tags` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingDistance` | Float | Yes |

**Operations:**

```typescript
// List all deal records
const items = await db.deal.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, stage: true, value: true, notes: true, tags: true, embedding: true, embeddingDistance: true } }).execute();

// Get one by id
const item = await db.deal.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, stage: true, value: true, notes: true, tags: true, embedding: true, embeddingDistance: true } }).execute();

// Create
const created = await db.deal.create({ data: { entityId: '<value>', name: '<value>', stage: '<value>', value: '<value>', notes: '<value>', tags: '<value>', embedding: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.deal.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.deal.delete({ where: { id: '<value>' } }).execute();
```

### `db.document`

CRUD operations for Document records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `title` | String | Yes |
| `url` | String | Yes |
| `content` | String | Yes |
| `sourceType` | String | Yes |
| `tags` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingDistance` | Float | Yes |

**Operations:**

```typescript
// List all document records
const items = await db.document.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, url: true, content: true, sourceType: true, tags: true, embedding: true, embeddingDistance: true } }).execute();

// Get one by id
const item = await db.document.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, url: true, content: true, sourceType: true, tags: true, embedding: true, embeddingDistance: true } }).execute();

// Create
const created = await db.document.create({ data: { entityId: '<value>', title: '<value>', url: '<value>', content: '<value>', sourceType: '<value>', tags: '<value>', embedding: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.document.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.document.delete({ where: { id: '<value>' } }).execute();
```

### `db.task`

CRUD operations for Task records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `title` | String | Yes |
| `description` | String | Yes |
| `status` | String | Yes |
| `priority` | Int | Yes |
| `tags` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingDistance` | Float | Yes |

**Operations:**

```typescript
// List all task records
const items = await db.task.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, description: true, status: true, priority: true, tags: true, embedding: true, embeddingDistance: true } }).execute();

// Get one by id
const item = await db.task.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, description: true, status: true, priority: true, tags: true, embedding: true, embeddingDistance: true } }).execute();

// Create
const created = await db.task.create({ data: { entityId: '<value>', title: '<value>', description: '<value>', status: '<value>', priority: '<value>', tags: '<value>', embedding: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.task.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.task.delete({ where: { id: '<value>' } }).execute();
```

### `db.rule`

CRUD operations for Rule records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `title` | String | Yes |
| `content` | String | Yes |
| `kind` | String | Yes |
| `isActive` | Boolean | Yes |
| `tags` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingDistance` | Float | Yes |

**Operations:**

```typescript
// List all rule records
const items = await db.rule.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, content: true, kind: true, isActive: true, tags: true, embedding: true, embeddingDistance: true } }).execute();

// Get one by id
const item = await db.rule.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, content: true, kind: true, isActive: true, tags: true, embedding: true, embeddingDistance: true } }).execute();

// Create
const created = await db.rule.create({ data: { entityId: '<value>', title: '<value>', content: '<value>', kind: '<value>', isActive: '<value>', tags: '<value>', embedding: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.rule.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.rule.delete({ where: { id: '<value>' } }).execute();
```

### `db.skill`

CRUD operations for Skill records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `name` | String | Yes |
| `description` | String | Yes |
| `content` | String | Yes |
| `isActive` | Boolean | Yes |
| `tags` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingDistance` | Float | Yes |

**Operations:**

```typescript
// List all skill records
const items = await db.skill.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, description: true, content: true, isActive: true, tags: true, embedding: true, embeddingDistance: true } }).execute();

// Get one by id
const item = await db.skill.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, description: true, content: true, isActive: true, tags: true, embedding: true, embeddingDistance: true } }).execute();

// Create
const created = await db.skill.create({ data: { entityId: '<value>', name: '<value>', description: '<value>', content: '<value>', isActive: '<value>', tags: '<value>', embedding: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.skill.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.skill.delete({ where: { id: '<value>' } }).execute();
```

### `db.expense`

CRUD operations for Expense records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `amount` | BigFloat | Yes |
| `currency` | String | Yes |
| `date` | Date | Yes |
| `category` | String | Yes |
| `description` | String | Yes |
| `merchant` | String | Yes |
| `receiptUrl` | String | Yes |
| `tags` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingDistance` | Float | Yes |

**Operations:**

```typescript
// List all expense records
const items = await db.expense.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, amount: true, currency: true, date: true, category: true, description: true, merchant: true, receiptUrl: true, tags: true, embedding: true, embeddingDistance: true } }).execute();

// Get one by id
const item = await db.expense.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, amount: true, currency: true, date: true, category: true, description: true, merchant: true, receiptUrl: true, tags: true, embedding: true, embeddingDistance: true } }).execute();

// Create
const created = await db.expense.create({ data: { entityId: '<value>', amount: '<value>', currency: '<value>', date: '<value>', category: '<value>', description: '<value>', merchant: '<value>', receiptUrl: '<value>', tags: '<value>', embedding: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.expense.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.expense.delete({ where: { id: '<value>' } }).execute();
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
| `tags` | String | Yes |
| `embedding` | Vector | Yes |
| `contactId` | UUID | Yes |
| `embeddingDistance` | Float | Yes |

**Operations:**

```typescript
// List all note records
const items = await db.note.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, content: true, tags: true, embedding: true, contactId: true, embeddingDistance: true } }).execute();

// Get one by id
const item = await db.note.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, content: true, tags: true, embedding: true, contactId: true, embeddingDistance: true } }).execute();

// Create
const created = await db.note.create({ data: { entityId: '<value>', content: '<value>', tags: '<value>', embedding: '<value>', contactId: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.note.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.note.delete({ where: { id: '<value>' } }).execute();
```

### `db.message`

CRUD operations for Message records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `threadId` | String | Yes |
| `remoteId` | String | Yes |
| `from` | String | Yes |
| `to` | String | Yes |
| `subject` | String | Yes |
| `bodyText` | String | Yes |
| `receivedAt` | Datetime | Yes |
| `tags` | String | Yes |
| `embedding` | Vector | Yes |
| `emailAccountId` | UUID | Yes |
| `embeddingDistance` | Float | Yes |

**Operations:**

```typescript
// List all message records
const items = await db.message.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, threadId: true, remoteId: true, from: true, to: true, subject: true, bodyText: true, receivedAt: true, tags: true, embedding: true, emailAccountId: true, embeddingDistance: true } }).execute();

// Get one by id
const item = await db.message.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, threadId: true, remoteId: true, from: true, to: true, subject: true, bodyText: true, receivedAt: true, tags: true, embedding: true, emailAccountId: true, embeddingDistance: true } }).execute();

// Create
const created = await db.message.create({ data: { entityId: '<value>', threadId: '<value>', remoteId: '<value>', from: '<value>', to: '<value>', subject: '<value>', bodyText: '<value>', receivedAt: '<value>', tags: '<value>', embedding: '<value>', emailAccountId: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.message.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.message.delete({ where: { id: '<value>' } }).execute();
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
| `tags` | String | Yes |
| `embedding` | Vector | Yes |
| `mainImageId` | UUID | Yes |
| `imageId` | UUID | Yes |
| `embeddingDistance` | Float | Yes |

**Operations:**

```typescript
// List all company records
const items = await db.company.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, domain: true, industry: true, description: true, tags: true, embedding: true, mainImageId: true, imageId: true, embeddingDistance: true } }).execute();

// Get one by id
const item = await db.company.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, domain: true, industry: true, description: true, tags: true, embedding: true, mainImageId: true, imageId: true, embeddingDistance: true } }).execute();

// Create
const created = await db.company.create({ data: { entityId: '<value>', name: '<value>', domain: '<value>', industry: '<value>', description: '<value>', tags: '<value>', embedding: '<value>', mainImageId: '<value>', imageId: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.company.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.company.delete({ where: { id: '<value>' } }).execute();
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
| `tags` | String | Yes |
| `embedding` | Vector | Yes |
| `mainImageId` | UUID | Yes |
| `imageId` | UUID | Yes |
| `embeddingDistance` | Float | Yes |

**Operations:**

```typescript
// List all venue records
const items = await db.venue.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, neighborhood: true, city: true, status: true, notes: true, tags: true, embedding: true, mainImageId: true, imageId: true, embeddingDistance: true } }).execute();

// Get one by id
const item = await db.venue.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, neighborhood: true, city: true, status: true, notes: true, tags: true, embedding: true, mainImageId: true, imageId: true, embeddingDistance: true } }).execute();

// Create
const created = await db.venue.create({ data: { entityId: '<value>', name: '<value>', neighborhood: '<value>', city: '<value>', status: '<value>', notes: '<value>', tags: '<value>', embedding: '<value>', mainImageId: '<value>', imageId: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute();

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
| `tags` | String | Yes |
| `embedding` | Vector | Yes |
| `mainImageId` | UUID | Yes |
| `imageId` | UUID | Yes |
| `embeddingDistance` | Float | Yes |

**Operations:**

```typescript
// List all contact records
const items = await db.contact.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, firstName: true, lastName: true, email: true, phone: true, headline: true, bio: true, location: true, tags: true, embedding: true, mainImageId: true, imageId: true, embeddingDistance: true } }).execute();

// Get one by id
const item = await db.contact.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, firstName: true, lastName: true, email: true, phone: true, headline: true, bio: true, location: true, tags: true, embedding: true, mainImageId: true, imageId: true, embeddingDistance: true } }).execute();

// Create
const created = await db.contact.create({ data: { entityId: '<value>', firstName: '<value>', lastName: '<value>', email: '<value>', phone: '<value>', headline: '<value>', bio: '<value>', location: '<value>', tags: '<value>', embedding: '<value>', mainImageId: '<value>', imageId: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute();

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
| `tags` | String | Yes |
| `embedding` | Vector | Yes |
| `mainImageId` | UUID | Yes |
| `imageId` | UUID | Yes |
| `embeddingDistance` | Float | Yes |

**Operations:**

```typescript
// List all event records
const items = await db.event.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, eventType: true, location: true, city: true, startedAt: true, endedAt: true, notes: true, tags: true, embedding: true, mainImageId: true, imageId: true, embeddingDistance: true } }).execute();

// Get one by id
const item = await db.event.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, eventType: true, location: true, city: true, startedAt: true, endedAt: true, notes: true, tags: true, embedding: true, mainImageId: true, imageId: true, embeddingDistance: true } }).execute();

// Create
const created = await db.event.create({ data: { entityId: '<value>', name: '<value>', eventType: '<value>', location: '<value>', city: '<value>', startedAt: '<value>', endedAt: '<value>', notes: '<value>', tags: '<value>', embedding: '<value>', mainImageId: '<value>', imageId: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.event.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.event.delete({ where: { id: '<value>' } }).execute();
```

---

Built by the [Constructive](https://constructive.io) team.

## Disclaimer

AS DESCRIBED IN THE LICENSES, THE SOFTWARE IS PROVIDED "AS IS", AT YOUR OWN RISK, AND WITHOUT WARRANTIES OF ANY KIND.

No developer or entity involved in creating this software will be liable for any claims or damages whatsoever associated with your use, inability to use, or your interaction with other users of the code, including any direct, indirect, incidental, special, exemplary, punitive or consequential damages, or loss of profits, cryptocurrencies, tokens, or anything else of value.
