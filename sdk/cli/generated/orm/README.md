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
| `activityLog` | findMany, findOne, create, update, delete |
| `agent` | findMany, findOne, create, update, delete |
| `agentCollaborator` | findMany, findOne, create, update, delete |
| `agentLog` | findMany, findOne, create, update, delete |
| `agentPrompt` | findMany, findOne, create, update, delete |
| `prompt` | findMany, findOne, create, update, delete |
| `autonomyRecord` | findMany, findOne, create, update, delete |
| `autonomyRecordLink` | findMany, findOne, create, update, delete |
| `calendarAttendee` | findMany, findOne, create, update, delete |
| `calendar` | findMany, findOne, create, update, delete |
| `calendarEvent` | findMany, findOne, create, update, delete |
| `calendarEventContact` | findMany, findOne, create, update, delete |
| `contact` | findMany, findOne, create, update, delete |
| `calendarEventNote` | findMany, findOne, create, update, delete |
| `note` | findMany, findOne, create, update, delete |
| `calendarEventTask` | findMany, findOne, create, update, delete |
| `task` | findMany, findOne, create, update, delete |
| `company` | findMany, findOne, create, update, delete |
| `deal` | findMany, findOne, create, update, delete |
| `companyEvent` | findMany, findOne, create, update, delete |
| `event` | findMany, findOne, create, update, delete |
| `companyImage` | findMany, findOne, create, update, delete |
| `image` | findMany, findOne, create, update, delete |
| `companyLink` | findMany, findOne, create, update, delete |
| `memory` | findMany, findOne, create, update, delete |
| `companyMemory` | findMany, findOne, create, update, delete |
| `companyNote` | findMany, findOne, create, update, delete |
| `contactAddress` | findMany, findOne, create, update, delete |
| `contactCompany` | findMany, findOne, create, update, delete |
| `contactEmail` | findMany, findOne, create, update, delete |
| `email` | findMany, findOne, create, update, delete |
| `emailThread` | findMany, findOne, create, update, delete |
| `contactEvent` | findMany, findOne, create, update, delete |
| `expense` | findMany, findOne, create, update, delete |
| `contactImage` | findMany, findOne, create, update, delete |
| `contactLink` | findMany, findOne, create, update, delete |
| `contactMemory` | findMany, findOne, create, update, delete |
| `contactNote` | findMany, findOne, create, update, delete |
| `contactPhone` | findMany, findOne, create, update, delete |
| `project` | findMany, findOne, create, update, delete |
| `contactRelationship` | findMany, findOne, create, update, delete |
| `contactsChunk` | findMany, findOne, create, update, delete |
| `conversation` | findMany, findOne, create, update, delete |
| `dealCompany` | findMany, findOne, create, update, delete |
| `dealContact` | findMany, findOne, create, update, delete |
| `dealNote` | findMany, findOne, create, update, delete |
| `emailAttachment` | findMany, findOne, create, update, delete |
| `emailNote` | findMany, findOne, create, update, delete |
| `emailRecipient` | findMany, findOne, create, update, delete |
| `eventImage` | findMany, findOne, create, update, delete |
| `eventLink` | findMany, findOne, create, update, delete |
| `eventNote` | findMany, findOne, create, update, delete |
| `eventVenue` | findMany, findOne, create, update, delete |
| `venue` | findMany, findOne, create, update, delete |
| `expenseContact` | findMany, findOne, create, update, delete |
| `goal` | findMany, findOne, create, update, delete |
| `goalHabit` | findMany, findOne, create, update, delete |
| `habit` | findMany, findOne, create, update, delete |
| `goalProject` | findMany, findOne, create, update, delete |
| `interaction` | findMany, findOne, create, update, delete |
| `message` | findMany, findOne, create, update, delete |
| `notesChunk` | findMany, findOne, create, update, delete |
| `place` | findMany, findOne, create, update, delete |
| `projectContact` | findMany, findOne, create, update, delete |
| `providerSyncState` | findMany, findOne, create, update, delete |
| `rawContact` | findMany, findOne, create, update, delete |
| `rawContactEmail` | findMany, findOne, create, update, delete |
| `rawContactPhone` | findMany, findOne, create, update, delete |
| `rawContactUrl` | findMany, findOne, create, update, delete |
| `rule` | findMany, findOne, create, update, delete |
| `runtimeArtifact` | findMany, findOne, create, update, delete |
| `runtimeConfig` | findMany, findOne, create, update, delete |
| `runtimeEvent` | findMany, findOne, create, update, delete |
| `runtimeLog` | findMany, findOne, create, update, delete |
| `runtimeMetric` | findMany, findOne, create, update, delete |
| `runtimeSchedule` | findMany, findOne, create, update, delete |
| `runtimeState` | findMany, findOne, create, update, delete |
| `runtimeStateDependency` | findMany, findOne, create, update, delete |
| `skill` | findMany, findOne, create, update, delete |
| `skillTool` | findMany, findOne, create, update, delete |
| `toolDefinition` | findMany, findOne, create, update, delete |
| `tag` | findMany, findOne, create, update, delete |
| `taskContact` | findMany, findOne, create, update, delete |
| `taskNote` | findMany, findOne, create, update, delete |
| `taskProject` | findMany, findOne, create, update, delete |
| `threadParticipant` | findMany, findOne, create, update, delete |
| `toolExecution` | findMany, findOne, create, update, delete |
| `touchpoint` | findMany, findOne, create, update, delete |
| `trip` | findMany, findOne, create, update, delete |
| `venueImage` | findMany, findOne, create, update, delete |
| `venueLink` | findMany, findOne, create, update, delete |

## Table Operations

### `db.activityLog`

CRUD operations for ActivityLog records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `activityType` | String | Yes |
| `completedAt` | Datetime | Yes |
| `durationMinutes` | Int | Yes |
| `quantity` | BigFloat | Yes |
| `quantityUnit` | String | Yes |
| `intensity` | String | Yes |
| `notes` | String | Yes |
| `meta` | JSON | Yes |
| `tags` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `habitId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `activityTypeTrgmSimilarity` | Float | Yes |
| `quantityUnitTrgmSimilarity` | Float | Yes |
| `intensityTrgmSimilarity` | Float | Yes |
| `notesTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all activityLog records
const items = await db.activityLog.findMany({ select: { activityType: true, completedAt: true, durationMinutes: true, quantity: true, quantityUnit: true, intensity: true, notes: true, meta: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, habitId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, activityTypeTrgmSimilarity: true, quantityUnitTrgmSimilarity: true, intensityTrgmSimilarity: true, notesTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.activityLog.findOne({ id: '<UUID>', select: { activityType: true, completedAt: true, durationMinutes: true, quantity: true, quantityUnit: true, intensity: true, notes: true, meta: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, habitId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, activityTypeTrgmSimilarity: true, quantityUnitTrgmSimilarity: true, intensityTrgmSimilarity: true, notesTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.activityLog.create({ data: { activityType: '<String>', completedAt: '<Datetime>', durationMinutes: '<Int>', quantity: '<BigFloat>', quantityUnit: '<String>', intensity: '<String>', notes: '<String>', meta: '<JSON>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', habitId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', activityTypeTrgmSimilarity: '<Float>', quantityUnitTrgmSimilarity: '<Float>', intensityTrgmSimilarity: '<Float>', notesTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.activityLog.update({ where: { id: '<UUID>' }, data: { activityType: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.activityLog.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

### `db.agent`

CRUD operations for Agent records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `name` | String | Yes |
| `description` | String | Yes |
| `systemPrompt` | String | Yes |
| `model` | String | Yes |
| `temperature` | BigFloat | Yes |
| `status` | String | Yes |
| `config` | JSON | Yes |
| `tags` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `nameTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `systemPromptTrgmSimilarity` | Float | Yes |
| `modelTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all agent records
const items = await db.agent.findMany({ select: { name: true, description: true, systemPrompt: true, model: true, temperature: true, status: true, config: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, systemPromptTrgmSimilarity: true, modelTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.agent.findOne({ id: '<UUID>', select: { name: true, description: true, systemPrompt: true, model: true, temperature: true, status: true, config: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, systemPromptTrgmSimilarity: true, modelTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.agent.create({ data: { name: '<String>', description: '<String>', systemPrompt: '<String>', model: '<String>', temperature: '<BigFloat>', status: '<String>', config: '<JSON>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', systemPromptTrgmSimilarity: '<Float>', modelTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.agent.update({ where: { id: '<UUID>' }, data: { name: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.agent.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

### `db.agentCollaborator`

CRUD operations for AgentCollaborator records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `agentId` | UUID | Yes |
| `collaboratorId` | UUID | Yes |

**Operations:**

```typescript
// List all agentCollaborator records
const items = await db.agentCollaborator.findMany({ select: { agentId: true, collaboratorId: true } }).execute();

// Get one by id
const item = await db.agentCollaborator.findOne({ id: '<UUID>', select: { agentId: true, collaboratorId: true } }).execute();

// Create
const created = await db.agentCollaborator.create({ data: { agentId: '<UUID>', collaboratorId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.agentCollaborator.update({ where: { id: '<UUID>' }, data: { agentId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.agentCollaborator.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.agentLog`

CRUD operations for AgentLog records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `agentId` | UUID | Yes |
| `level` | String | Yes |
| `message` | String | Yes |
| `context` | JSON | Yes |
| `taskId` | UUID | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `levelTrgmSimilarity` | Float | Yes |
| `messageTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all agentLog records
const items = await db.agentLog.findMany({ select: { agentId: true, level: true, message: true, context: true, taskId: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, levelTrgmSimilarity: true, messageTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.agentLog.findOne({ id: '<UUID>', select: { agentId: true, level: true, message: true, context: true, taskId: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, levelTrgmSimilarity: true, messageTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.agentLog.create({ data: { agentId: '<UUID>', level: '<String>', message: '<String>', context: '<JSON>', taskId: '<UUID>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', levelTrgmSimilarity: '<Float>', messageTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.agentLog.update({ where: { id: '<UUID>' }, data: { agentId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.agentLog.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

### `db.agentPrompt`

CRUD operations for AgentPrompt records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `agentId` | UUID | Yes |
| `promptId` | UUID | Yes |

**Operations:**

```typescript
// List all agentPrompt records
const items = await db.agentPrompt.findMany({ select: { agentId: true, promptId: true } }).execute();

// Get one by id
const item = await db.agentPrompt.findOne({ id: '<UUID>', select: { agentId: true, promptId: true } }).execute();

// Create
const created = await db.agentPrompt.create({ data: { agentId: '<UUID>', promptId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.agentPrompt.update({ where: { id: '<UUID>' }, data: { agentId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.agentPrompt.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.prompt`

CRUD operations for Prompt records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `name` | String | Yes |
| `content` | String | Yes |
| `category` | String | Yes |
| `version` | Int | Yes |
| `isActive` | Boolean | Yes |
| `tags` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `nameTrgmSimilarity` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `categoryTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all prompt records
const items = await db.prompt.findMany({ select: { name: true, content: true, category: true, version: true, isActive: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, contentTrgmSimilarity: true, categoryTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.prompt.findOne({ id: '<UUID>', select: { name: true, content: true, category: true, version: true, isActive: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, contentTrgmSimilarity: true, categoryTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.prompt.create({ data: { name: '<String>', content: '<String>', category: '<String>', version: '<Int>', isActive: '<Boolean>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', categoryTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.prompt.update({ where: { id: '<UUID>' }, data: { name: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.prompt.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

### `db.autonomyRecord`

CRUD operations for AutonomyRecord records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `title` | String | Yes |
| `recordType` | String | Yes |
| `content` | String | Yes |
| `status` | String | Yes |
| `priority` | Int | Yes |
| `source` | String | Yes |
| `context` | JSON | Yes |
| `tags` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `titleTrgmSimilarity` | Float | Yes |
| `recordTypeTrgmSimilarity` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `sourceTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all autonomyRecord records
const items = await db.autonomyRecord.findMany({ select: { title: true, recordType: true, content: true, status: true, priority: true, source: true, context: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, recordTypeTrgmSimilarity: true, contentTrgmSimilarity: true, statusTrgmSimilarity: true, sourceTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.autonomyRecord.findOne({ id: '<UUID>', select: { title: true, recordType: true, content: true, status: true, priority: true, source: true, context: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, recordTypeTrgmSimilarity: true, contentTrgmSimilarity: true, statusTrgmSimilarity: true, sourceTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.autonomyRecord.create({ data: { title: '<String>', recordType: '<String>', content: '<String>', status: '<String>', priority: '<Int>', source: '<String>', context: '<JSON>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', recordTypeTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', sourceTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.autonomyRecord.update({ where: { id: '<UUID>' }, data: { title: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.autonomyRecord.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

### `db.autonomyRecordLink`

CRUD operations for AutonomyRecordLink records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `sourceRecordId` | UUID | Yes |
| `targetRecordId` | UUID | Yes |

**Operations:**

```typescript
// List all autonomyRecordLink records
const items = await db.autonomyRecordLink.findMany({ select: { sourceRecordId: true, targetRecordId: true } }).execute();

// Get one by id
const item = await db.autonomyRecordLink.findOne({ id: '<UUID>', select: { sourceRecordId: true, targetRecordId: true } }).execute();

// Create
const created = await db.autonomyRecordLink.create({ data: { sourceRecordId: '<UUID>', targetRecordId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.autonomyRecordLink.update({ where: { id: '<UUID>' }, data: { sourceRecordId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.autonomyRecordLink.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.calendarAttendee`

CRUD operations for CalendarAttendee records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `contactId` | UUID | Yes |
| `responseStatus` | String | Yes |
| `role` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `calendarEventId` | UUID | Yes |

**Operations:**

```typescript
// List all calendarAttendee records
const items = await db.calendarAttendee.findMany({ select: { contactId: true, responseStatus: true, role: true, id: true, createdAt: true, updatedAt: true, calendarEventId: true } }).execute();

// Get one by id
const item = await db.calendarAttendee.findOne({ id: '<UUID>', select: { contactId: true, responseStatus: true, role: true, id: true, createdAt: true, updatedAt: true, calendarEventId: true } }).execute();

// Create
const created = await db.calendarAttendee.create({ data: { contactId: '<UUID>', responseStatus: '<String>', role: '<String>', calendarEventId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.calendarAttendee.update({ where: { id: '<UUID>' }, data: { contactId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.calendarAttendee.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.calendar`

CRUD operations for Calendar records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `providerAccountId` | String | Yes |
| `providerCalendarId` | String | Yes |
| `name` | String | Yes |
| `color` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |

**Operations:**

```typescript
// List all calendar records
const items = await db.calendar.findMany({ select: { providerAccountId: true, providerCalendarId: true, name: true, color: true, id: true, createdAt: true, updatedAt: true } }).execute();

// Get one by id
const item = await db.calendar.findOne({ id: '<UUID>', select: { providerAccountId: true, providerCalendarId: true, name: true, color: true, id: true, createdAt: true, updatedAt: true } }).execute();

// Create
const created = await db.calendar.create({ data: { providerAccountId: '<String>', providerCalendarId: '<String>', name: '<String>', color: '<String>' }, select: { id: true } }).execute();

// Update
const updated = await db.calendar.update({ where: { id: '<UUID>' }, data: { providerAccountId: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.calendar.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.calendarEvent`

CRUD operations for CalendarEvent records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `providerEventId` | String | Yes |
| `title` | String | Yes |
| `description` | String | Yes |
| `startTime` | Datetime | Yes |
| `endTime` | Datetime | Yes |
| `meetingUrl` | String | Yes |
| `organizerContactId` | UUID | Yes |
| `tags` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingText` | String | Yes |
| `searchTsv` | FullText | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `calendarId` | UUID | Yes |
| `searchTsvRank` | Float | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `providerEventIdTrgmSimilarity` | Float | Yes |
| `titleTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `meetingUrlTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all calendarEvent records
const items = await db.calendarEvent.findMany({ select: { providerEventId: true, title: true, description: true, startTime: true, endTime: true, meetingUrl: true, organizerContactId: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, searchTsv: true, embedding: true, embeddingStale: true, calendarId: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, providerEventIdTrgmSimilarity: true, titleTrgmSimilarity: true, descriptionTrgmSimilarity: true, meetingUrlTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.calendarEvent.findOne({ id: '<UUID>', select: { providerEventId: true, title: true, description: true, startTime: true, endTime: true, meetingUrl: true, organizerContactId: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, searchTsv: true, embedding: true, embeddingStale: true, calendarId: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, providerEventIdTrgmSimilarity: true, titleTrgmSimilarity: true, descriptionTrgmSimilarity: true, meetingUrlTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.calendarEvent.create({ data: { providerEventId: '<String>', title: '<String>', description: '<String>', startTime: '<Datetime>', endTime: '<Datetime>', meetingUrl: '<String>', organizerContactId: '<UUID>', tags: '<String>', embeddingText: '<String>', searchTsv: '<FullText>', embedding: '<Vector>', embeddingStale: '<Boolean>', calendarId: '<UUID>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', providerEventIdTrgmSimilarity: '<Float>', titleTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', meetingUrlTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.calendarEvent.update({ where: { id: '<UUID>' }, data: { providerEventId: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.calendarEvent.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

> **Unified Search API fields:** `searchTsv`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

### `db.calendarEventContact`

CRUD operations for CalendarEventContact records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `calendarEventId` | UUID | Yes |
| `contactId` | UUID | Yes |

**Operations:**

```typescript
// List all calendarEventContact records
const items = await db.calendarEventContact.findMany({ select: { calendarEventId: true, contactId: true } }).execute();

// Get one by id
const item = await db.calendarEventContact.findOne({ id: '<UUID>', select: { calendarEventId: true, contactId: true } }).execute();

// Create
const created = await db.calendarEventContact.create({ data: { calendarEventId: '<UUID>', contactId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.calendarEventContact.update({ where: { id: '<UUID>' }, data: { calendarEventId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.calendarEventContact.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.contact`

CRUD operations for Contact records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `firstName` | String | Yes |
| `lastName` | String | Yes |
| `email` | String | Yes |
| `phone` | String | Yes |
| `headline` | String | Yes |
| `bio` | String | Yes |
| `location` | String | Yes |
| `birthday` | Date | Yes |
| `relationshipTypes` | String | Yes |
| `howWeMet` | String | Yes |
| `tags` | String | Yes |
| `mainImageId` | UUID | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingText` | String | Yes |
| `searchTsv` | FullText | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `locationGeo` | GeographyInterface | Yes |
| `searchTsvRank` | Float | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `firstNameTrgmSimilarity` | Float | Yes |
| `lastNameTrgmSimilarity` | Float | Yes |
| `emailTrgmSimilarity` | Float | Yes |
| `phoneTrgmSimilarity` | Float | Yes |
| `headlineTrgmSimilarity` | Float | Yes |
| `bioTrgmSimilarity` | Float | Yes |
| `locationTrgmSimilarity` | Float | Yes |
| `howWeMetTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all contact records
const items = await db.contact.findMany({ select: { firstName: true, lastName: true, email: true, phone: true, headline: true, bio: true, location: true, birthday: true, relationshipTypes: true, howWeMet: true, tags: true, mainImageId: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, searchTsv: true, embedding: true, embeddingStale: true, locationGeo: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, firstNameTrgmSimilarity: true, lastNameTrgmSimilarity: true, emailTrgmSimilarity: true, phoneTrgmSimilarity: true, headlineTrgmSimilarity: true, bioTrgmSimilarity: true, locationTrgmSimilarity: true, howWeMetTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.contact.findOne({ id: '<UUID>', select: { firstName: true, lastName: true, email: true, phone: true, headline: true, bio: true, location: true, birthday: true, relationshipTypes: true, howWeMet: true, tags: true, mainImageId: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, searchTsv: true, embedding: true, embeddingStale: true, locationGeo: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, firstNameTrgmSimilarity: true, lastNameTrgmSimilarity: true, emailTrgmSimilarity: true, phoneTrgmSimilarity: true, headlineTrgmSimilarity: true, bioTrgmSimilarity: true, locationTrgmSimilarity: true, howWeMetTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.contact.create({ data: { firstName: '<String>', lastName: '<String>', email: '<String>', phone: '<String>', headline: '<String>', bio: '<String>', location: '<String>', birthday: '<Date>', relationshipTypes: '<String>', howWeMet: '<String>', tags: '<String>', mainImageId: '<UUID>', embeddingText: '<String>', searchTsv: '<FullText>', embedding: '<Vector>', embeddingStale: '<Boolean>', locationGeo: '<GeographyInterface>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', firstNameTrgmSimilarity: '<Float>', lastNameTrgmSimilarity: '<Float>', emailTrgmSimilarity: '<Float>', phoneTrgmSimilarity: '<Float>', headlineTrgmSimilarity: '<Float>', bioTrgmSimilarity: '<Float>', locationTrgmSimilarity: '<Float>', howWeMetTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.contact.update({ where: { id: '<UUID>' }, data: { firstName: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.contact.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

> **Unified Search API fields:** `searchTsv`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

### `db.calendarEventNote`

CRUD operations for CalendarEventNote records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `calendarEventId` | UUID | Yes |
| `noteId` | UUID | Yes |

**Operations:**

```typescript
// List all calendarEventNote records
const items = await db.calendarEventNote.findMany({ select: { calendarEventId: true, noteId: true } }).execute();

// Get one by id
const item = await db.calendarEventNote.findOne({ id: '<UUID>', select: { calendarEventId: true, noteId: true } }).execute();

// Create
const created = await db.calendarEventNote.create({ data: { calendarEventId: '<UUID>', noteId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.calendarEventNote.update({ where: { id: '<UUID>' }, data: { calendarEventId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.calendarEventNote.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.note`

CRUD operations for Note records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `content` | String | Yes |
| `abstract` | String | Yes |
| `overview` | String | Yes |
| `activeCount` | Int | Yes |
| `lastAccessedAt` | Datetime | Yes |
| `tags` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `contentBm25Score` | Float | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `abstractTrgmSimilarity` | Float | Yes |
| `overviewTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all note records
const items = await db.note.findMany({ select: { content: true, abstract: true, overview: true, activeCount: true, lastAccessedAt: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, contentBm25Score: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, abstractTrgmSimilarity: true, overviewTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.note.findOne({ id: '<UUID>', select: { content: true, abstract: true, overview: true, activeCount: true, lastAccessedAt: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, contentBm25Score: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, abstractTrgmSimilarity: true, overviewTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.note.create({ data: { content: '<String>', abstract: '<String>', overview: '<String>', activeCount: '<Int>', lastAccessedAt: '<Datetime>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', contentBm25Score: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', abstractTrgmSimilarity: '<Float>', overviewTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.note.update({ where: { id: '<UUID>' }, data: { content: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.note.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

### `db.calendarEventTask`

CRUD operations for CalendarEventTask records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `calendarEventId` | UUID | Yes |
| `taskId` | UUID | Yes |

**Operations:**

```typescript
// List all calendarEventTask records
const items = await db.calendarEventTask.findMany({ select: { calendarEventId: true, taskId: true } }).execute();

// Get one by id
const item = await db.calendarEventTask.findOne({ id: '<UUID>', select: { calendarEventId: true, taskId: true } }).execute();

// Create
const created = await db.calendarEventTask.create({ data: { calendarEventId: '<UUID>', taskId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.calendarEventTask.update({ where: { id: '<UUID>' }, data: { calendarEventId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.calendarEventTask.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.task`

CRUD operations for Task records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `agentId` | UUID | Yes |
| `title` | String | Yes |
| `description` | String | Yes |
| `status` | String | Yes |
| `priority` | Int | Yes |
| `result` | String | Yes |
| `startedAt` | Datetime | Yes |
| `completedAt` | Datetime | Yes |
| `meta` | JSON | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `titleTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `resultTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all task records
const items = await db.task.findMany({ select: { agentId: true, title: true, description: true, status: true, priority: true, result: true, startedAt: true, completedAt: true, meta: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, descriptionTrgmSimilarity: true, statusTrgmSimilarity: true, resultTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.task.findOne({ id: '<UUID>', select: { agentId: true, title: true, description: true, status: true, priority: true, result: true, startedAt: true, completedAt: true, meta: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, descriptionTrgmSimilarity: true, statusTrgmSimilarity: true, resultTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.task.create({ data: { agentId: '<UUID>', title: '<String>', description: '<String>', status: '<String>', priority: '<Int>', result: '<String>', startedAt: '<Datetime>', completedAt: '<Datetime>', meta: '<JSON>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', resultTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.task.update({ where: { id: '<UUID>' }, data: { agentId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.task.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

### `db.company`

CRUD operations for Company records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `name` | String | Yes |
| `domain` | String | Yes |
| `industry` | String | Yes |
| `description` | String | Yes |
| `tags` | String | Yes |
| `mainImageId` | UUID | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingText` | String | Yes |
| `searchTsv` | FullText | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `searchTsvRank` | Float | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `nameTrgmSimilarity` | Float | Yes |
| `domainTrgmSimilarity` | Float | Yes |
| `industryTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all company records
const items = await db.company.findMany({ select: { name: true, domain: true, industry: true, description: true, tags: true, mainImageId: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, searchTsv: true, embedding: true, embeddingStale: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, domainTrgmSimilarity: true, industryTrgmSimilarity: true, descriptionTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.company.findOne({ id: '<UUID>', select: { name: true, domain: true, industry: true, description: true, tags: true, mainImageId: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, searchTsv: true, embedding: true, embeddingStale: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, domainTrgmSimilarity: true, industryTrgmSimilarity: true, descriptionTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.company.create({ data: { name: '<String>', domain: '<String>', industry: '<String>', description: '<String>', tags: '<String>', mainImageId: '<UUID>', embeddingText: '<String>', searchTsv: '<FullText>', embedding: '<Vector>', embeddingStale: '<Boolean>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', domainTrgmSimilarity: '<Float>', industryTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.company.update({ where: { id: '<UUID>' }, data: { name: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.company.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

> **Unified Search API fields:** `searchTsv`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

### `db.deal`

CRUD operations for Deal records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `name` | String | Yes |
| `stage` | String | Yes |
| `value` | BigFloat | Yes |
| `currency` | String | Yes |
| `expectedCloseDate` | Datetime | Yes |
| `notesText` | String | Yes |
| `tags` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `nameTrgmSimilarity` | Float | Yes |
| `stageTrgmSimilarity` | Float | Yes |
| `currencyTrgmSimilarity` | Float | Yes |
| `notesTextTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all deal records
const items = await db.deal.findMany({ select: { name: true, stage: true, value: true, currency: true, expectedCloseDate: true, notesText: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, stageTrgmSimilarity: true, currencyTrgmSimilarity: true, notesTextTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.deal.findOne({ id: '<UUID>', select: { name: true, stage: true, value: true, currency: true, expectedCloseDate: true, notesText: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, stageTrgmSimilarity: true, currencyTrgmSimilarity: true, notesTextTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.deal.create({ data: { name: '<String>', stage: '<String>', value: '<BigFloat>', currency: '<String>', expectedCloseDate: '<Datetime>', notesText: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', stageTrgmSimilarity: '<Float>', currencyTrgmSimilarity: '<Float>', notesTextTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.deal.update({ where: { id: '<UUID>' }, data: { name: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.deal.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

### `db.companyEvent`

CRUD operations for CompanyEvent records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `companyId` | UUID | Yes |
| `eventId` | UUID | Yes |

**Operations:**

```typescript
// List all companyEvent records
const items = await db.companyEvent.findMany({ select: { companyId: true, eventId: true } }).execute();

// Get one by id
const item = await db.companyEvent.findOne({ id: '<UUID>', select: { companyId: true, eventId: true } }).execute();

// Create
const created = await db.companyEvent.create({ data: { companyId: '<UUID>', eventId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.companyEvent.update({ where: { id: '<UUID>' }, data: { companyId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.companyEvent.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.event`

CRUD operations for Event records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `name` | String | Yes |
| `eventType` | String | Yes |
| `location` | String | Yes |
| `city` | String | Yes |
| `startedAt` | Datetime | Yes |
| `endedAt` | Datetime | Yes |
| `notesText` | String | Yes |
| `tags` | String | Yes |
| `mainImageId` | UUID | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingText` | String | Yes |
| `searchTsv` | FullText | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `locationGeo` | GeographyInterface | Yes |
| `searchTsvRank` | Float | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `nameTrgmSimilarity` | Float | Yes |
| `eventTypeTrgmSimilarity` | Float | Yes |
| `locationTrgmSimilarity` | Float | Yes |
| `cityTrgmSimilarity` | Float | Yes |
| `notesTextTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all event records
const items = await db.event.findMany({ select: { name: true, eventType: true, location: true, city: true, startedAt: true, endedAt: true, notesText: true, tags: true, mainImageId: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, searchTsv: true, embedding: true, embeddingStale: true, locationGeo: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, eventTypeTrgmSimilarity: true, locationTrgmSimilarity: true, cityTrgmSimilarity: true, notesTextTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.event.findOne({ id: '<UUID>', select: { name: true, eventType: true, location: true, city: true, startedAt: true, endedAt: true, notesText: true, tags: true, mainImageId: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, searchTsv: true, embedding: true, embeddingStale: true, locationGeo: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, eventTypeTrgmSimilarity: true, locationTrgmSimilarity: true, cityTrgmSimilarity: true, notesTextTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.event.create({ data: { name: '<String>', eventType: '<String>', location: '<String>', city: '<String>', startedAt: '<Datetime>', endedAt: '<Datetime>', notesText: '<String>', tags: '<String>', mainImageId: '<UUID>', embeddingText: '<String>', searchTsv: '<FullText>', embedding: '<Vector>', embeddingStale: '<Boolean>', locationGeo: '<GeographyInterface>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', eventTypeTrgmSimilarity: '<Float>', locationTrgmSimilarity: '<Float>', cityTrgmSimilarity: '<Float>', notesTextTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.event.update({ where: { id: '<UUID>' }, data: { name: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.event.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

> **Unified Search API fields:** `searchTsv`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

### `db.companyImage`

CRUD operations for CompanyImage records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `companyId` | UUID | Yes |
| `imageId` | UUID | Yes |

**Operations:**

```typescript
// List all companyImage records
const items = await db.companyImage.findMany({ select: { companyId: true, imageId: true } }).execute();

// Get one by id
const item = await db.companyImage.findOne({ id: '<UUID>', select: { companyId: true, imageId: true } }).execute();

// Create
const created = await db.companyImage.create({ data: { companyId: '<UUID>', imageId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.companyImage.update({ where: { id: '<UUID>' }, data: { companyId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.companyImage.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.image`

CRUD operations for Image records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `url` | String | Yes |
| `meta` | JSON | Yes |
| `altText` | String | Yes |
| `caption` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all image records
const items = await db.image.findMany({ select: { url: true, meta: true, altText: true, caption: true, id: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.image.findOne({ id: '<UUID>', select: { url: true, meta: true, altText: true, caption: true, id: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.image.create({ data: { url: '<String>', meta: '<JSON>', altText: '<String>', caption: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.image.update({ where: { id: '<UUID>' }, data: { url: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.image.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

### `db.companyLink`

CRUD operations for CompanyLink records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `title` | String | Yes |
| `url` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `companyId` | UUID | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all companyLink records
const items = await db.companyLink.findMany({ select: { title: true, url: true, id: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, companyId: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.companyLink.findOne({ id: '<UUID>', select: { title: true, url: true, id: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, companyId: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.companyLink.create({ data: { title: '<String>', url: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', companyId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.companyLink.update({ where: { id: '<UUID>' }, data: { title: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.companyLink.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

### `db.memory`

CRUD operations for Memory records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `title` | String | Yes |
| `content` | String | Yes |
| `location` | String | Yes |
| `occurredAt` | Datetime | Yes |
| `mood` | String | Yes |
| `tags` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `locationGeo` | GeographyInterface | Yes |
| `agentId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `titleTrgmSimilarity` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `locationTrgmSimilarity` | Float | Yes |
| `moodTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all memory records
const items = await db.memory.findMany({ select: { title: true, content: true, location: true, occurredAt: true, mood: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, locationGeo: true, agentId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, contentTrgmSimilarity: true, locationTrgmSimilarity: true, moodTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.memory.findOne({ id: '<UUID>', select: { title: true, content: true, location: true, occurredAt: true, mood: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, locationGeo: true, agentId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, contentTrgmSimilarity: true, locationTrgmSimilarity: true, moodTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.memory.create({ data: { title: '<String>', content: '<String>', location: '<String>', occurredAt: '<Datetime>', mood: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', locationGeo: '<GeographyInterface>', agentId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', locationTrgmSimilarity: '<Float>', moodTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.memory.update({ where: { id: '<UUID>' }, data: { title: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.memory.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

### `db.companyMemory`

CRUD operations for CompanyMemory records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `companyId` | UUID | Yes |
| `memoryId` | UUID | Yes |

**Operations:**

```typescript
// List all companyMemory records
const items = await db.companyMemory.findMany({ select: { companyId: true, memoryId: true } }).execute();

// Get one by id
const item = await db.companyMemory.findOne({ id: '<UUID>', select: { companyId: true, memoryId: true } }).execute();

// Create
const created = await db.companyMemory.create({ data: { companyId: '<UUID>', memoryId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.companyMemory.update({ where: { id: '<UUID>' }, data: { companyId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.companyMemory.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.companyNote`

CRUD operations for CompanyNote records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `companyId` | UUID | Yes |
| `noteId` | UUID | Yes |

**Operations:**

```typescript
// List all companyNote records
const items = await db.companyNote.findMany({ select: { companyId: true, noteId: true } }).execute();

// Get one by id
const item = await db.companyNote.findOne({ id: '<UUID>', select: { companyId: true, noteId: true } }).execute();

// Create
const created = await db.companyNote.create({ data: { companyId: '<UUID>', noteId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.companyNote.update({ where: { id: '<UUID>' }, data: { companyId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.companyNote.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.contactAddress`

CRUD operations for ContactAddress records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `street` | String | Yes |
| `city` | String | Yes |
| `state` | String | Yes |
| `postalCode` | String | Yes |
| `country` | String | Yes |
| `addressType` | String | Yes |
| `isPrimary` | Boolean | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `contactId` | UUID | Yes |

**Operations:**

```typescript
// List all contactAddress records
const items = await db.contactAddress.findMany({ select: { street: true, city: true, state: true, postalCode: true, country: true, addressType: true, isPrimary: true, id: true, createdAt: true, updatedAt: true, contactId: true } }).execute();

// Get one by id
const item = await db.contactAddress.findOne({ id: '<UUID>', select: { street: true, city: true, state: true, postalCode: true, country: true, addressType: true, isPrimary: true, id: true, createdAt: true, updatedAt: true, contactId: true } }).execute();

// Create
const created = await db.contactAddress.create({ data: { street: '<String>', city: '<String>', state: '<String>', postalCode: '<String>', country: '<String>', addressType: '<String>', isPrimary: '<Boolean>', contactId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.contactAddress.update({ where: { id: '<UUID>' }, data: { street: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.contactAddress.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.contactCompany`

CRUD operations for ContactCompany records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `contactId` | UUID | Yes |
| `companyId` | UUID | Yes |

**Operations:**

```typescript
// List all contactCompany records
const items = await db.contactCompany.findMany({ select: { contactId: true, companyId: true } }).execute();

// Get one by id
const item = await db.contactCompany.findOne({ id: '<UUID>', select: { contactId: true, companyId: true } }).execute();

// Create
const created = await db.contactCompany.create({ data: { contactId: '<UUID>', companyId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.contactCompany.update({ where: { id: '<UUID>' }, data: { contactId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.contactCompany.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.contactEmail`

CRUD operations for ContactEmail records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `email` | String | Yes |
| `emailType` | String | Yes |
| `isPrimary` | Boolean | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `contactId` | UUID | Yes |

**Operations:**

```typescript
// List all contactEmail records
const items = await db.contactEmail.findMany({ select: { email: true, emailType: true, isPrimary: true, id: true, createdAt: true, updatedAt: true, contactId: true } }).execute();

// Get one by id
const item = await db.contactEmail.findOne({ id: '<UUID>', select: { email: true, emailType: true, isPrimary: true, id: true, createdAt: true, updatedAt: true, contactId: true } }).execute();

// Create
const created = await db.contactEmail.create({ data: { email: '<String>', emailType: '<String>', isPrimary: '<Boolean>', contactId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.contactEmail.update({ where: { id: '<UUID>' }, data: { email: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.contactEmail.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.email`

CRUD operations for Email records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `providerMessageId` | String | Yes |
| `fromContactId` | UUID | Yes |
| `to` | JSON | Yes |
| `cc` | JSON | Yes |
| `bcc` | JSON | Yes |
| `subject` | String | Yes |
| `bodyText` | String | Yes |
| `bodyHtml` | String | Yes |
| `sentAt` | Datetime | Yes |
| `tags` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingText` | String | Yes |
| `searchTsv` | FullText | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `emailThreadId` | UUID | Yes |
| `searchTsvRank` | Float | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `providerMessageIdTrgmSimilarity` | Float | Yes |
| `subjectTrgmSimilarity` | Float | Yes |
| `bodyTextTrgmSimilarity` | Float | Yes |
| `bodyHtmlTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all email records
const items = await db.email.findMany({ select: { providerMessageId: true, fromContactId: true, to: true, cc: true, bcc: true, subject: true, bodyText: true, bodyHtml: true, sentAt: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, searchTsv: true, embedding: true, embeddingStale: true, emailThreadId: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, providerMessageIdTrgmSimilarity: true, subjectTrgmSimilarity: true, bodyTextTrgmSimilarity: true, bodyHtmlTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.email.findOne({ id: '<UUID>', select: { providerMessageId: true, fromContactId: true, to: true, cc: true, bcc: true, subject: true, bodyText: true, bodyHtml: true, sentAt: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, searchTsv: true, embedding: true, embeddingStale: true, emailThreadId: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, providerMessageIdTrgmSimilarity: true, subjectTrgmSimilarity: true, bodyTextTrgmSimilarity: true, bodyHtmlTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.email.create({ data: { providerMessageId: '<String>', fromContactId: '<UUID>', to: '<JSON>', cc: '<JSON>', bcc: '<JSON>', subject: '<String>', bodyText: '<String>', bodyHtml: '<String>', sentAt: '<Datetime>', tags: '<String>', embeddingText: '<String>', searchTsv: '<FullText>', embedding: '<Vector>', embeddingStale: '<Boolean>', emailThreadId: '<UUID>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', providerMessageIdTrgmSimilarity: '<Float>', subjectTrgmSimilarity: '<Float>', bodyTextTrgmSimilarity: '<Float>', bodyHtmlTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.email.update({ where: { id: '<UUID>' }, data: { providerMessageId: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.email.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

> **Unified Search API fields:** `searchTsv`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

### `db.emailThread`

CRUD operations for EmailThread records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `providerThreadId` | String | Yes |
| `subject` | String | Yes |
| `lastMessageAt` | Datetime | Yes |
| `summary` | String | Yes |
| `status` | String | Yes |
| `tags` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingText` | String | Yes |
| `searchTsv` | FullText | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `searchTsvRank` | Float | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `providerThreadIdTrgmSimilarity` | Float | Yes |
| `subjectTrgmSimilarity` | Float | Yes |
| `summaryTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all emailThread records
const items = await db.emailThread.findMany({ select: { providerThreadId: true, subject: true, lastMessageAt: true, summary: true, status: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, searchTsv: true, embedding: true, embeddingStale: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, providerThreadIdTrgmSimilarity: true, subjectTrgmSimilarity: true, summaryTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.emailThread.findOne({ id: '<UUID>', select: { providerThreadId: true, subject: true, lastMessageAt: true, summary: true, status: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, searchTsv: true, embedding: true, embeddingStale: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, providerThreadIdTrgmSimilarity: true, subjectTrgmSimilarity: true, summaryTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.emailThread.create({ data: { providerThreadId: '<String>', subject: '<String>', lastMessageAt: '<Datetime>', summary: '<String>', status: '<String>', tags: '<String>', embeddingText: '<String>', searchTsv: '<FullText>', embedding: '<Vector>', embeddingStale: '<Boolean>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', providerThreadIdTrgmSimilarity: '<Float>', subjectTrgmSimilarity: '<Float>', summaryTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.emailThread.update({ where: { id: '<UUID>' }, data: { providerThreadId: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.emailThread.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

> **Unified Search API fields:** `searchTsv`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

### `db.contactEvent`

CRUD operations for ContactEvent records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `contactId` | UUID | Yes |
| `eventId` | UUID | Yes |

**Operations:**

```typescript
// List all contactEvent records
const items = await db.contactEvent.findMany({ select: { contactId: true, eventId: true } }).execute();

// Get one by id
const item = await db.contactEvent.findOne({ id: '<UUID>', select: { contactId: true, eventId: true } }).execute();

// Create
const created = await db.contactEvent.create({ data: { contactId: '<UUID>', eventId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.contactEvent.update({ where: { id: '<UUID>' }, data: { contactId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.contactEvent.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.expense`

CRUD operations for Expense records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `description` | String | Yes |
| `amount` | BigFloat | Yes |
| `currency` | String | Yes |
| `category` | String | Yes |
| `occurredAt` | Datetime | Yes |
| `vendor` | String | Yes |
| `notes` | String | Yes |
| `tags` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `tripId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `currencyTrgmSimilarity` | Float | Yes |
| `categoryTrgmSimilarity` | Float | Yes |
| `vendorTrgmSimilarity` | Float | Yes |
| `notesTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all expense records
const items = await db.expense.findMany({ select: { description: true, amount: true, currency: true, category: true, occurredAt: true, vendor: true, notes: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, tripId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, descriptionTrgmSimilarity: true, currencyTrgmSimilarity: true, categoryTrgmSimilarity: true, vendorTrgmSimilarity: true, notesTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.expense.findOne({ id: '<UUID>', select: { description: true, amount: true, currency: true, category: true, occurredAt: true, vendor: true, notes: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, tripId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, descriptionTrgmSimilarity: true, currencyTrgmSimilarity: true, categoryTrgmSimilarity: true, vendorTrgmSimilarity: true, notesTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.expense.create({ data: { description: '<String>', amount: '<BigFloat>', currency: '<String>', category: '<String>', occurredAt: '<Datetime>', vendor: '<String>', notes: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', tripId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', descriptionTrgmSimilarity: '<Float>', currencyTrgmSimilarity: '<Float>', categoryTrgmSimilarity: '<Float>', vendorTrgmSimilarity: '<Float>', notesTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.expense.update({ where: { id: '<UUID>' }, data: { description: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.expense.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

### `db.contactImage`

CRUD operations for ContactImage records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `contactId` | UUID | Yes |
| `imageId` | UUID | Yes |

**Operations:**

```typescript
// List all contactImage records
const items = await db.contactImage.findMany({ select: { contactId: true, imageId: true } }).execute();

// Get one by id
const item = await db.contactImage.findOne({ id: '<UUID>', select: { contactId: true, imageId: true } }).execute();

// Create
const created = await db.contactImage.create({ data: { contactId: '<UUID>', imageId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.contactImage.update({ where: { id: '<UUID>' }, data: { contactId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.contactImage.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.contactLink`

CRUD operations for ContactLink records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `title` | String | Yes |
| `url` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `contactId` | UUID | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all contactLink records
const items = await db.contactLink.findMany({ select: { title: true, url: true, id: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, contactId: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.contactLink.findOne({ id: '<UUID>', select: { title: true, url: true, id: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, contactId: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.contactLink.create({ data: { title: '<String>', url: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', contactId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.contactLink.update({ where: { id: '<UUID>' }, data: { title: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.contactLink.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

### `db.contactMemory`

CRUD operations for ContactMemory records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `contactId` | UUID | Yes |
| `memoryId` | UUID | Yes |

**Operations:**

```typescript
// List all contactMemory records
const items = await db.contactMemory.findMany({ select: { contactId: true, memoryId: true } }).execute();

// Get one by id
const item = await db.contactMemory.findOne({ id: '<UUID>', select: { contactId: true, memoryId: true } }).execute();

// Create
const created = await db.contactMemory.create({ data: { contactId: '<UUID>', memoryId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.contactMemory.update({ where: { id: '<UUID>' }, data: { contactId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.contactMemory.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.contactNote`

CRUD operations for ContactNote records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `contactId` | UUID | Yes |
| `noteId` | UUID | Yes |

**Operations:**

```typescript
// List all contactNote records
const items = await db.contactNote.findMany({ select: { contactId: true, noteId: true } }).execute();

// Get one by id
const item = await db.contactNote.findOne({ id: '<UUID>', select: { contactId: true, noteId: true } }).execute();

// Create
const created = await db.contactNote.create({ data: { contactId: '<UUID>', noteId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.contactNote.update({ where: { id: '<UUID>' }, data: { contactId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.contactNote.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.contactPhone`

CRUD operations for ContactPhone records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `phone` | String | Yes |
| `phoneType` | String | Yes |
| `isPrimary` | Boolean | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `contactId` | UUID | Yes |

**Operations:**

```typescript
// List all contactPhone records
const items = await db.contactPhone.findMany({ select: { phone: true, phoneType: true, isPrimary: true, id: true, createdAt: true, updatedAt: true, contactId: true } }).execute();

// Get one by id
const item = await db.contactPhone.findOne({ id: '<UUID>', select: { phone: true, phoneType: true, isPrimary: true, id: true, createdAt: true, updatedAt: true, contactId: true } }).execute();

// Create
const created = await db.contactPhone.create({ data: { phone: '<String>', phoneType: '<String>', isPrimary: '<Boolean>', contactId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.contactPhone.update({ where: { id: '<UUID>' }, data: { phone: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.contactPhone.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.project`

CRUD operations for Project records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `name` | String | Yes |
| `description` | String | Yes |
| `status` | String | Yes |
| `projectType` | String | Yes |
| `priority` | Int | Yes |
| `startedAt` | Datetime | Yes |
| `targetDate` | Datetime | Yes |
| `completedAt` | Datetime | Yes |
| `config` | JSON | Yes |
| `tags` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `nameTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `projectTypeTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all project records
const items = await db.project.findMany({ select: { name: true, description: true, status: true, projectType: true, priority: true, startedAt: true, targetDate: true, completedAt: true, config: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, statusTrgmSimilarity: true, projectTypeTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.project.findOne({ id: '<UUID>', select: { name: true, description: true, status: true, projectType: true, priority: true, startedAt: true, targetDate: true, completedAt: true, config: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, statusTrgmSimilarity: true, projectTypeTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.project.create({ data: { name: '<String>', description: '<String>', status: '<String>', projectType: '<String>', priority: '<Int>', startedAt: '<Datetime>', targetDate: '<Datetime>', completedAt: '<Datetime>', config: '<JSON>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', projectTypeTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.project.update({ where: { id: '<UUID>' }, data: { name: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.project.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

### `db.contactRelationship`

CRUD operations for ContactRelationship records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `contactId` | UUID | Yes |
| `relatedContactId` | UUID | Yes |

**Operations:**

```typescript
// List all contactRelationship records
const items = await db.contactRelationship.findMany({ select: { contactId: true, relatedContactId: true } }).execute();

// Get one by id
const item = await db.contactRelationship.findOne({ id: '<UUID>', select: { contactId: true, relatedContactId: true } }).execute();

// Create
const created = await db.contactRelationship.create({ data: { contactId: '<UUID>', relatedContactId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.contactRelationship.update({ where: { id: '<UUID>' }, data: { contactId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.contactRelationship.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.contactsChunk`

CRUD operations for ContactsChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `contactsId` | UUID | Yes |
| `content` | String | Yes |
| `chunkIndex` | Int | Yes |
| `embedding` | Vector | Yes |
| `metadata` | JSON | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all contactsChunk records
const items = await db.contactsChunk.findMany({ select: { id: true, contactsId: true, content: true, chunkIndex: true, embedding: true, metadata: true, createdAt: true, updatedAt: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.contactsChunk.findOne({ id: '<UUID>', select: { id: true, contactsId: true, content: true, chunkIndex: true, embedding: true, metadata: true, createdAt: true, updatedAt: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.contactsChunk.create({ data: { contactsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.contactsChunk.update({ where: { id: '<UUID>' }, data: { contactsId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.contactsChunk.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

### `db.conversation`

CRUD operations for Conversation records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `title` | String | Yes |
| `agentId` | UUID | Yes |
| `status` | String | Yes |
| `meta` | JSON | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `titleTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all conversation records
const items = await db.conversation.findMany({ select: { title: true, agentId: true, status: true, meta: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.conversation.findOne({ id: '<UUID>', select: { title: true, agentId: true, status: true, meta: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.conversation.create({ data: { title: '<String>', agentId: '<UUID>', status: '<String>', meta: '<JSON>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.conversation.update({ where: { id: '<UUID>' }, data: { title: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.conversation.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

### `db.dealCompany`

CRUD operations for DealCompany records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `dealId` | UUID | Yes |
| `companyId` | UUID | Yes |

**Operations:**

```typescript
// List all dealCompany records
const items = await db.dealCompany.findMany({ select: { dealId: true, companyId: true } }).execute();

// Get one by id
const item = await db.dealCompany.findOne({ id: '<UUID>', select: { dealId: true, companyId: true } }).execute();

// Create
const created = await db.dealCompany.create({ data: { dealId: '<UUID>', companyId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.dealCompany.update({ where: { id: '<UUID>' }, data: { dealId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.dealCompany.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.dealContact`

CRUD operations for DealContact records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `dealId` | UUID | Yes |
| `contactId` | UUID | Yes |

**Operations:**

```typescript
// List all dealContact records
const items = await db.dealContact.findMany({ select: { dealId: true, contactId: true } }).execute();

// Get one by id
const item = await db.dealContact.findOne({ id: '<UUID>', select: { dealId: true, contactId: true } }).execute();

// Create
const created = await db.dealContact.create({ data: { dealId: '<UUID>', contactId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.dealContact.update({ where: { id: '<UUID>' }, data: { dealId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.dealContact.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.dealNote`

CRUD operations for DealNote records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `dealId` | UUID | Yes |
| `noteId` | UUID | Yes |

**Operations:**

```typescript
// List all dealNote records
const items = await db.dealNote.findMany({ select: { dealId: true, noteId: true } }).execute();

// Get one by id
const item = await db.dealNote.findOne({ id: '<UUID>', select: { dealId: true, noteId: true } }).execute();

// Create
const created = await db.dealNote.create({ data: { dealId: '<UUID>', noteId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.dealNote.update({ where: { id: '<UUID>' }, data: { dealId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.dealNote.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.emailAttachment`

CRUD operations for EmailAttachment records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `filename` | String | Yes |
| `contentType` | String | Yes |
| `sizeBytes` | Int | Yes |
| `storageUrl` | String | Yes |
| `providerAttachmentId` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `emailId` | UUID | Yes |

**Operations:**

```typescript
// List all emailAttachment records
const items = await db.emailAttachment.findMany({ select: { filename: true, contentType: true, sizeBytes: true, storageUrl: true, providerAttachmentId: true, id: true, createdAt: true, updatedAt: true, emailId: true } }).execute();

// Get one by id
const item = await db.emailAttachment.findOne({ id: '<UUID>', select: { filename: true, contentType: true, sizeBytes: true, storageUrl: true, providerAttachmentId: true, id: true, createdAt: true, updatedAt: true, emailId: true } }).execute();

// Create
const created = await db.emailAttachment.create({ data: { filename: '<String>', contentType: '<String>', sizeBytes: '<Int>', storageUrl: '<String>', providerAttachmentId: '<String>', emailId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.emailAttachment.update({ where: { id: '<UUID>' }, data: { filename: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.emailAttachment.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.emailNote`

CRUD operations for EmailNote records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `emailId` | UUID | Yes |
| `noteId` | UUID | Yes |

**Operations:**

```typescript
// List all emailNote records
const items = await db.emailNote.findMany({ select: { emailId: true, noteId: true } }).execute();

// Get one by id
const item = await db.emailNote.findOne({ id: '<UUID>', select: { emailId: true, noteId: true } }).execute();

// Create
const created = await db.emailNote.create({ data: { emailId: '<UUID>', noteId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.emailNote.update({ where: { id: '<UUID>' }, data: { emailId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.emailNote.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.emailRecipient`

CRUD operations for EmailRecipient records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `emailId` | UUID | Yes |
| `contactId` | UUID | Yes |

**Operations:**

```typescript
// List all emailRecipient records
const items = await db.emailRecipient.findMany({ select: { emailId: true, contactId: true } }).execute();

// Get one by id
const item = await db.emailRecipient.findOne({ id: '<UUID>', select: { emailId: true, contactId: true } }).execute();

// Create
const created = await db.emailRecipient.create({ data: { emailId: '<UUID>', contactId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.emailRecipient.update({ where: { id: '<UUID>' }, data: { emailId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.emailRecipient.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.eventImage`

CRUD operations for EventImage records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `eventId` | UUID | Yes |
| `imageId` | UUID | Yes |

**Operations:**

```typescript
// List all eventImage records
const items = await db.eventImage.findMany({ select: { eventId: true, imageId: true } }).execute();

// Get one by id
const item = await db.eventImage.findOne({ id: '<UUID>', select: { eventId: true, imageId: true } }).execute();

// Create
const created = await db.eventImage.create({ data: { eventId: '<UUID>', imageId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.eventImage.update({ where: { id: '<UUID>' }, data: { eventId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.eventImage.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.eventLink`

CRUD operations for EventLink records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `title` | String | Yes |
| `url` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `eventId` | UUID | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all eventLink records
const items = await db.eventLink.findMany({ select: { title: true, url: true, id: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, eventId: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.eventLink.findOne({ id: '<UUID>', select: { title: true, url: true, id: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, eventId: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.eventLink.create({ data: { title: '<String>', url: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', eventId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.eventLink.update({ where: { id: '<UUID>' }, data: { title: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.eventLink.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

### `db.eventNote`

CRUD operations for EventNote records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `eventId` | UUID | Yes |
| `noteId` | UUID | Yes |

**Operations:**

```typescript
// List all eventNote records
const items = await db.eventNote.findMany({ select: { eventId: true, noteId: true } }).execute();

// Get one by id
const item = await db.eventNote.findOne({ id: '<UUID>', select: { eventId: true, noteId: true } }).execute();

// Create
const created = await db.eventNote.create({ data: { eventId: '<UUID>', noteId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.eventNote.update({ where: { id: '<UUID>' }, data: { eventId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.eventNote.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.eventVenue`

CRUD operations for EventVenue records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `eventId` | UUID | Yes |
| `venueId` | UUID | Yes |

**Operations:**

```typescript
// List all eventVenue records
const items = await db.eventVenue.findMany({ select: { eventId: true, venueId: true } }).execute();

// Get one by id
const item = await db.eventVenue.findOne({ id: '<UUID>', select: { eventId: true, venueId: true } }).execute();

// Create
const created = await db.eventVenue.create({ data: { eventId: '<UUID>', venueId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.eventVenue.update({ where: { id: '<UUID>' }, data: { eventId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.eventVenue.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.venue`

CRUD operations for Venue records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `name` | String | Yes |
| `address` | String | Yes |
| `neighborhood` | String | Yes |
| `city` | String | Yes |
| `category` | String | Yes |
| `status` | String | Yes |
| `googlePlaceId` | String | Yes |
| `rating` | BigFloat | Yes |
| `priceLevel` | String | Yes |
| `isFavorite` | Boolean | Yes |
| `notes` | String | Yes |
| `tags` | String | Yes |
| `mainImageId` | UUID | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingText` | String | Yes |
| `searchTsv` | FullText | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `location` | GeographyInterface | Yes |
| `searchTsvRank` | Float | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `nameTrgmSimilarity` | Float | Yes |
| `addressTrgmSimilarity` | Float | Yes |
| `neighborhoodTrgmSimilarity` | Float | Yes |
| `cityTrgmSimilarity` | Float | Yes |
| `categoryTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `googlePlaceIdTrgmSimilarity` | Float | Yes |
| `priceLevelTrgmSimilarity` | Float | Yes |
| `notesTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all venue records
const items = await db.venue.findMany({ select: { name: true, address: true, neighborhood: true, city: true, category: true, status: true, googlePlaceId: true, rating: true, priceLevel: true, isFavorite: true, notes: true, tags: true, mainImageId: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, searchTsv: true, embedding: true, embeddingStale: true, location: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, addressTrgmSimilarity: true, neighborhoodTrgmSimilarity: true, cityTrgmSimilarity: true, categoryTrgmSimilarity: true, statusTrgmSimilarity: true, googlePlaceIdTrgmSimilarity: true, priceLevelTrgmSimilarity: true, notesTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.venue.findOne({ id: '<UUID>', select: { name: true, address: true, neighborhood: true, city: true, category: true, status: true, googlePlaceId: true, rating: true, priceLevel: true, isFavorite: true, notes: true, tags: true, mainImageId: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, searchTsv: true, embedding: true, embeddingStale: true, location: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, addressTrgmSimilarity: true, neighborhoodTrgmSimilarity: true, cityTrgmSimilarity: true, categoryTrgmSimilarity: true, statusTrgmSimilarity: true, googlePlaceIdTrgmSimilarity: true, priceLevelTrgmSimilarity: true, notesTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.venue.create({ data: { name: '<String>', address: '<String>', neighborhood: '<String>', city: '<String>', category: '<String>', status: '<String>', googlePlaceId: '<String>', rating: '<BigFloat>', priceLevel: '<String>', isFavorite: '<Boolean>', notes: '<String>', tags: '<String>', mainImageId: '<UUID>', embeddingText: '<String>', searchTsv: '<FullText>', embedding: '<Vector>', embeddingStale: '<Boolean>', location: '<GeographyInterface>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', addressTrgmSimilarity: '<Float>', neighborhoodTrgmSimilarity: '<Float>', cityTrgmSimilarity: '<Float>', categoryTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', googlePlaceIdTrgmSimilarity: '<Float>', priceLevelTrgmSimilarity: '<Float>', notesTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.venue.update({ where: { id: '<UUID>' }, data: { name: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.venue.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

> **Unified Search API fields:** `searchTsv`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

### `db.expenseContact`

CRUD operations for ExpenseContact records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `expenseId` | UUID | Yes |
| `contactId` | UUID | Yes |

**Operations:**

```typescript
// List all expenseContact records
const items = await db.expenseContact.findMany({ select: { expenseId: true, contactId: true } }).execute();

// Get one by id
const item = await db.expenseContact.findOne({ id: '<UUID>', select: { expenseId: true, contactId: true } }).execute();

// Create
const created = await db.expenseContact.create({ data: { expenseId: '<UUID>', contactId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.expenseContact.update({ where: { id: '<UUID>' }, data: { expenseId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.expenseContact.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.goal`

CRUD operations for Goal records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `title` | String | Yes |
| `description` | String | Yes |
| `status` | String | Yes |
| `targetDate` | Datetime | Yes |
| `progress` | BigFloat | Yes |
| `tags` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `titleTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all goal records
const items = await db.goal.findMany({ select: { title: true, description: true, status: true, targetDate: true, progress: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, descriptionTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.goal.findOne({ id: '<UUID>', select: { title: true, description: true, status: true, targetDate: true, progress: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, descriptionTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.goal.create({ data: { title: '<String>', description: '<String>', status: '<String>', targetDate: '<Datetime>', progress: '<BigFloat>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.goal.update({ where: { id: '<UUID>' }, data: { title: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.goal.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

### `db.goalHabit`

CRUD operations for GoalHabit records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `goalId` | UUID | Yes |
| `habitId` | UUID | Yes |

**Operations:**

```typescript
// List all goalHabit records
const items = await db.goalHabit.findMany({ select: { goalId: true, habitId: true } }).execute();

// Get one by id
const item = await db.goalHabit.findOne({ id: '<UUID>', select: { goalId: true, habitId: true } }).execute();

// Create
const created = await db.goalHabit.create({ data: { goalId: '<UUID>', habitId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.goalHabit.update({ where: { id: '<UUID>' }, data: { goalId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.goalHabit.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.habit`

CRUD operations for Habit records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `name` | String | Yes |
| `frequency` | String | Yes |
| `streak` | Int | Yes |
| `lastCompletedAt` | Datetime | Yes |
| `tags` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |

**Operations:**

```typescript
// List all habit records
const items = await db.habit.findMany({ select: { name: true, frequency: true, streak: true, lastCompletedAt: true, tags: true, id: true, createdAt: true, updatedAt: true } }).execute();

// Get one by id
const item = await db.habit.findOne({ id: '<UUID>', select: { name: true, frequency: true, streak: true, lastCompletedAt: true, tags: true, id: true, createdAt: true, updatedAt: true } }).execute();

// Create
const created = await db.habit.create({ data: { name: '<String>', frequency: '<String>', streak: '<Int>', lastCompletedAt: '<Datetime>', tags: '<String>' }, select: { id: true } }).execute();

// Update
const updated = await db.habit.update({ where: { id: '<UUID>' }, data: { name: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.habit.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.goalProject`

CRUD operations for GoalProject records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `goalId` | UUID | Yes |
| `projectId` | UUID | Yes |

**Operations:**

```typescript
// List all goalProject records
const items = await db.goalProject.findMany({ select: { goalId: true, projectId: true } }).execute();

// Get one by id
const item = await db.goalProject.findOne({ id: '<UUID>', select: { goalId: true, projectId: true } }).execute();

// Create
const created = await db.goalProject.create({ data: { goalId: '<UUID>', projectId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.goalProject.update({ where: { id: '<UUID>' }, data: { goalId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.goalProject.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.interaction`

CRUD operations for Interaction records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `contactId` | UUID | Yes |
| `type` | String | Yes |
| `occurredAt` | Datetime | Yes |
| `summary` | String | Yes |
| `sentiment` | String | Yes |
| `tags` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `typeTrgmSimilarity` | Float | Yes |
| `summaryTrgmSimilarity` | Float | Yes |
| `sentimentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all interaction records
const items = await db.interaction.findMany({ select: { contactId: true, type: true, occurredAt: true, summary: true, sentiment: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, typeTrgmSimilarity: true, summaryTrgmSimilarity: true, sentimentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.interaction.findOne({ id: '<UUID>', select: { contactId: true, type: true, occurredAt: true, summary: true, sentiment: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, typeTrgmSimilarity: true, summaryTrgmSimilarity: true, sentimentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.interaction.create({ data: { contactId: '<UUID>', type: '<String>', occurredAt: '<Datetime>', summary: '<String>', sentiment: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', typeTrgmSimilarity: '<Float>', summaryTrgmSimilarity: '<Float>', sentimentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.interaction.update({ where: { id: '<UUID>' }, data: { contactId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.interaction.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

### `db.message`

CRUD operations for Message records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `conversationId` | UUID | Yes |
| `role` | String | Yes |
| `content` | String | Yes |
| `tokenCount` | Int | Yes |
| `meta` | JSON | Yes |
| `toolCalls` | JSON | Yes |
| `toolResults` | JSON | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `roleTrgmSimilarity` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all message records
const items = await db.message.findMany({ select: { conversationId: true, role: true, content: true, tokenCount: true, meta: true, toolCalls: true, toolResults: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, roleTrgmSimilarity: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.message.findOne({ id: '<UUID>', select: { conversationId: true, role: true, content: true, tokenCount: true, meta: true, toolCalls: true, toolResults: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, roleTrgmSimilarity: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.message.create({ data: { conversationId: '<UUID>', role: '<String>', content: '<String>', tokenCount: '<Int>', meta: '<JSON>', toolCalls: '<JSON>', toolResults: '<JSON>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', roleTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.message.update({ where: { id: '<UUID>' }, data: { conversationId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.message.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

### `db.notesChunk`

CRUD operations for NotesChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `notesId` | UUID | Yes |
| `content` | String | Yes |
| `chunkIndex` | Int | Yes |
| `embedding` | Vector | Yes |
| `metadata` | JSON | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all notesChunk records
const items = await db.notesChunk.findMany({ select: { id: true, notesId: true, content: true, chunkIndex: true, embedding: true, metadata: true, createdAt: true, updatedAt: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.notesChunk.findOne({ id: '<UUID>', select: { id: true, notesId: true, content: true, chunkIndex: true, embedding: true, metadata: true, createdAt: true, updatedAt: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.notesChunk.create({ data: { notesId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.notesChunk.update({ where: { id: '<UUID>' }, data: { notesId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.notesChunk.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

### `db.place`

CRUD operations for Place records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `name` | String | Yes |
| `address` | String | Yes |
| `description` | String | Yes |
| `category` | String | Yes |
| `rating` | BigFloat | Yes |
| `tags` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `locationGeo` | GeographyInterface | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `nameTrgmSimilarity` | Float | Yes |
| `addressTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `categoryTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all place records
const items = await db.place.findMany({ select: { name: true, address: true, description: true, category: true, rating: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, locationGeo: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, addressTrgmSimilarity: true, descriptionTrgmSimilarity: true, categoryTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.place.findOne({ id: '<UUID>', select: { name: true, address: true, description: true, category: true, rating: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, locationGeo: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, addressTrgmSimilarity: true, descriptionTrgmSimilarity: true, categoryTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.place.create({ data: { name: '<String>', address: '<String>', description: '<String>', category: '<String>', rating: '<BigFloat>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', locationGeo: '<GeographyInterface>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', addressTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', categoryTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.place.update({ where: { id: '<UUID>' }, data: { name: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.place.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

### `db.projectContact`

CRUD operations for ProjectContact records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `projectId` | UUID | Yes |
| `contactId` | UUID | Yes |

**Operations:**

```typescript
// List all projectContact records
const items = await db.projectContact.findMany({ select: { projectId: true, contactId: true } }).execute();

// Get one by id
const item = await db.projectContact.findOne({ id: '<UUID>', select: { projectId: true, contactId: true } }).execute();

// Create
const created = await db.projectContact.create({ data: { projectId: '<UUID>', contactId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.projectContact.update({ where: { id: '<UUID>' }, data: { projectId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.projectContact.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.providerSyncState`

CRUD operations for ProviderSyncState records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `provider` | String | Yes |
| `resourceType` | String | Yes |
| `syncCursor` | String | Yes |
| `historyId` | String | Yes |
| `lastSyncAt` | Datetime | Yes |
| `status` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |

**Operations:**

```typescript
// List all providerSyncState records
const items = await db.providerSyncState.findMany({ select: { provider: true, resourceType: true, syncCursor: true, historyId: true, lastSyncAt: true, status: true, id: true, createdAt: true, updatedAt: true } }).execute();

// Get one by id
const item = await db.providerSyncState.findOne({ id: '<UUID>', select: { provider: true, resourceType: true, syncCursor: true, historyId: true, lastSyncAt: true, status: true, id: true, createdAt: true, updatedAt: true } }).execute();

// Create
const created = await db.providerSyncState.create({ data: { provider: '<String>', resourceType: '<String>', syncCursor: '<String>', historyId: '<String>', lastSyncAt: '<Datetime>', status: '<String>' }, select: { id: true } }).execute();

// Update
const updated = await db.providerSyncState.update({ where: { id: '<UUID>' }, data: { provider: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.providerSyncState.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.rawContact`

CRUD operations for RawContact records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `externalId` | String | Yes |
| `source` | String | Yes |
| `firstName` | String | Yes |
| `lastName` | String | Yes |
| `fullName` | String | Yes |
| `headline` | String | Yes |
| `bio` | String | Yes |
| `location` | String | Yes |
| `company` | String | Yes |
| `jobTitle` | String | Yes |
| `rawData` | JSON | Yes |
| `confidence` | BigFloat | Yes |
| `ingestedAt` | Datetime | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |

**Operations:**

```typescript
// List all rawContact records
const items = await db.rawContact.findMany({ select: { externalId: true, source: true, firstName: true, lastName: true, fullName: true, headline: true, bio: true, location: true, company: true, jobTitle: true, rawData: true, confidence: true, ingestedAt: true, id: true, createdAt: true, updatedAt: true } }).execute();

// Get one by id
const item = await db.rawContact.findOne({ id: '<UUID>', select: { externalId: true, source: true, firstName: true, lastName: true, fullName: true, headline: true, bio: true, location: true, company: true, jobTitle: true, rawData: true, confidence: true, ingestedAt: true, id: true, createdAt: true, updatedAt: true } }).execute();

// Create
const created = await db.rawContact.create({ data: { externalId: '<String>', source: '<String>', firstName: '<String>', lastName: '<String>', fullName: '<String>', headline: '<String>', bio: '<String>', location: '<String>', company: '<String>', jobTitle: '<String>', rawData: '<JSON>', confidence: '<BigFloat>', ingestedAt: '<Datetime>' }, select: { id: true } }).execute();

// Update
const updated = await db.rawContact.update({ where: { id: '<UUID>' }, data: { externalId: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.rawContact.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.rawContactEmail`

CRUD operations for RawContactEmail records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `email` | String | Yes |
| `emailType` | String | Yes |
| `isPrimary` | Boolean | Yes |
| `source` | String | Yes |
| `confidence` | BigFloat | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `rawContactId` | UUID | Yes |

**Operations:**

```typescript
// List all rawContactEmail records
const items = await db.rawContactEmail.findMany({ select: { email: true, emailType: true, isPrimary: true, source: true, confidence: true, id: true, createdAt: true, updatedAt: true, rawContactId: true } }).execute();

// Get one by id
const item = await db.rawContactEmail.findOne({ id: '<UUID>', select: { email: true, emailType: true, isPrimary: true, source: true, confidence: true, id: true, createdAt: true, updatedAt: true, rawContactId: true } }).execute();

// Create
const created = await db.rawContactEmail.create({ data: { email: '<String>', emailType: '<String>', isPrimary: '<Boolean>', source: '<String>', confidence: '<BigFloat>', rawContactId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.rawContactEmail.update({ where: { id: '<UUID>' }, data: { email: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.rawContactEmail.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.rawContactPhone`

CRUD operations for RawContactPhone records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `phone` | String | Yes |
| `phoneType` | String | Yes |
| `isPrimary` | Boolean | Yes |
| `source` | String | Yes |
| `confidence` | BigFloat | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `rawContactId` | UUID | Yes |

**Operations:**

```typescript
// List all rawContactPhone records
const items = await db.rawContactPhone.findMany({ select: { phone: true, phoneType: true, isPrimary: true, source: true, confidence: true, id: true, createdAt: true, updatedAt: true, rawContactId: true } }).execute();

// Get one by id
const item = await db.rawContactPhone.findOne({ id: '<UUID>', select: { phone: true, phoneType: true, isPrimary: true, source: true, confidence: true, id: true, createdAt: true, updatedAt: true, rawContactId: true } }).execute();

// Create
const created = await db.rawContactPhone.create({ data: { phone: '<String>', phoneType: '<String>', isPrimary: '<Boolean>', source: '<String>', confidence: '<BigFloat>', rawContactId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.rawContactPhone.update({ where: { id: '<UUID>' }, data: { phone: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.rawContactPhone.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.rawContactUrl`

CRUD operations for RawContactUrl records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `url` | String | Yes |
| `urlType` | String | Yes |
| `source` | String | Yes |
| `confidence` | BigFloat | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `rawContactId` | UUID | Yes |

**Operations:**

```typescript
// List all rawContactUrl records
const items = await db.rawContactUrl.findMany({ select: { url: true, urlType: true, source: true, confidence: true, id: true, createdAt: true, updatedAt: true, rawContactId: true } }).execute();

// Get one by id
const item = await db.rawContactUrl.findOne({ id: '<UUID>', select: { url: true, urlType: true, source: true, confidence: true, id: true, createdAt: true, updatedAt: true, rawContactId: true } }).execute();

// Create
const created = await db.rawContactUrl.create({ data: { url: '<String>', urlType: '<String>', source: '<String>', confidence: '<BigFloat>', rawContactId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.rawContactUrl.update({ where: { id: '<UUID>' }, data: { url: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.rawContactUrl.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.rule`

CRUD operations for Rule records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `name` | String | Yes |
| `description` | String | Yes |
| `triggerType` | String | Yes |
| `triggerConfig` | JSON | Yes |
| `actionType` | String | Yes |
| `actionConfig` | JSON | Yes |
| `isActive` | Boolean | Yes |
| `priority` | Int | Yes |
| `triggerConcept` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `triggerConceptEmbedding` | Vector | Yes |
| `agentId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `triggerConceptEmbeddingVectorDistance` | Float | Yes |
| `nameTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `triggerTypeTrgmSimilarity` | Float | Yes |
| `actionTypeTrgmSimilarity` | Float | Yes |
| `triggerConceptTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all rule records
const items = await db.rule.findMany({ select: { name: true, description: true, triggerType: true, triggerConfig: true, actionType: true, actionConfig: true, isActive: true, priority: true, triggerConcept: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, triggerConceptEmbedding: true, agentId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, triggerConceptEmbeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, triggerTypeTrgmSimilarity: true, actionTypeTrgmSimilarity: true, triggerConceptTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.rule.findOne({ id: '<UUID>', select: { name: true, description: true, triggerType: true, triggerConfig: true, actionType: true, actionConfig: true, isActive: true, priority: true, triggerConcept: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, triggerConceptEmbedding: true, agentId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, triggerConceptEmbeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, triggerTypeTrgmSimilarity: true, actionTypeTrgmSimilarity: true, triggerConceptTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.rule.create({ data: { name: '<String>', description: '<String>', triggerType: '<String>', triggerConfig: '<JSON>', actionType: '<String>', actionConfig: '<JSON>', isActive: '<Boolean>', priority: '<Int>', triggerConcept: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', triggerConceptEmbedding: '<Vector>', agentId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', triggerConceptEmbeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', triggerTypeTrgmSimilarity: '<Float>', actionTypeTrgmSimilarity: '<Float>', triggerConceptTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.rule.update({ where: { id: '<UUID>' }, data: { name: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.rule.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`, `triggerConceptEmbedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

### `db.runtimeArtifact`

CRUD operations for RuntimeArtifact records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `runtimeStateId` | UUID | Yes |
| `name` | String | Yes |
| `artifactType` | String | Yes |
| `content` | String | Yes |
| `meta` | JSON | Yes |
| `sizeBytes` | Int | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |

**Operations:**

```typescript
// List all runtimeArtifact records
const items = await db.runtimeArtifact.findMany({ select: { runtimeStateId: true, name: true, artifactType: true, content: true, meta: true, sizeBytes: true, id: true, createdAt: true, updatedAt: true } }).execute();

// Get one by id
const item = await db.runtimeArtifact.findOne({ id: '<UUID>', select: { runtimeStateId: true, name: true, artifactType: true, content: true, meta: true, sizeBytes: true, id: true, createdAt: true, updatedAt: true } }).execute();

// Create
const created = await db.runtimeArtifact.create({ data: { runtimeStateId: '<UUID>', name: '<String>', artifactType: '<String>', content: '<String>', meta: '<JSON>', sizeBytes: '<Int>' }, select: { id: true } }).execute();

// Update
const updated = await db.runtimeArtifact.update({ where: { id: '<UUID>' }, data: { runtimeStateId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.runtimeArtifact.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.runtimeConfig`

CRUD operations for RuntimeConfig records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `key` | String | Yes |
| `value` | JSON | Yes |
| `description` | String | Yes |
| `isSecret` | Boolean | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |

**Operations:**

```typescript
// List all runtimeConfig records
const items = await db.runtimeConfig.findMany({ select: { key: true, value: true, description: true, isSecret: true, id: true, createdAt: true, updatedAt: true } }).execute();

// Get one by id
const item = await db.runtimeConfig.findOne({ id: '<UUID>', select: { key: true, value: true, description: true, isSecret: true, id: true, createdAt: true, updatedAt: true } }).execute();

// Create
const created = await db.runtimeConfig.create({ data: { key: '<String>', value: '<JSON>', description: '<String>', isSecret: '<Boolean>' }, select: { id: true } }).execute();

// Update
const updated = await db.runtimeConfig.update({ where: { id: '<UUID>' }, data: { key: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.runtimeConfig.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.runtimeEvent`

CRUD operations for RuntimeEvent records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `eventType` | String | Yes |
| `payload` | JSON | Yes |
| `source` | String | Yes |
| `processedAt` | Datetime | Yes |
| `status` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |

**Operations:**

```typescript
// List all runtimeEvent records
const items = await db.runtimeEvent.findMany({ select: { eventType: true, payload: true, source: true, processedAt: true, status: true, id: true, createdAt: true, updatedAt: true } }).execute();

// Get one by id
const item = await db.runtimeEvent.findOne({ id: '<UUID>', select: { eventType: true, payload: true, source: true, processedAt: true, status: true, id: true, createdAt: true, updatedAt: true } }).execute();

// Create
const created = await db.runtimeEvent.create({ data: { eventType: '<String>', payload: '<JSON>', source: '<String>', processedAt: '<Datetime>', status: '<String>' }, select: { id: true } }).execute();

// Update
const updated = await db.runtimeEvent.update({ where: { id: '<UUID>' }, data: { eventType: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.runtimeEvent.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.runtimeLog`

CRUD operations for RuntimeLog records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `runtimeStateId` | UUID | Yes |
| `level` | String | Yes |
| `message` | String | Yes |
| `context` | JSON | Yes |
| `stepIndex` | Int | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `levelTrgmSimilarity` | Float | Yes |
| `messageTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all runtimeLog records
const items = await db.runtimeLog.findMany({ select: { runtimeStateId: true, level: true, message: true, context: true, stepIndex: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, levelTrgmSimilarity: true, messageTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.runtimeLog.findOne({ id: '<UUID>', select: { runtimeStateId: true, level: true, message: true, context: true, stepIndex: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, levelTrgmSimilarity: true, messageTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.runtimeLog.create({ data: { runtimeStateId: '<UUID>', level: '<String>', message: '<String>', context: '<JSON>', stepIndex: '<Int>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', levelTrgmSimilarity: '<Float>', messageTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.runtimeLog.update({ where: { id: '<UUID>' }, data: { runtimeStateId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.runtimeLog.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

### `db.runtimeMetric`

CRUD operations for RuntimeMetric records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `runtimeStateId` | UUID | Yes |
| `metricName` | String | Yes |
| `metricValue` | BigFloat | Yes |
| `unit` | String | Yes |
| `meta` | JSON | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |

**Operations:**

```typescript
// List all runtimeMetric records
const items = await db.runtimeMetric.findMany({ select: { runtimeStateId: true, metricName: true, metricValue: true, unit: true, meta: true, id: true, createdAt: true, updatedAt: true } }).execute();

// Get one by id
const item = await db.runtimeMetric.findOne({ id: '<UUID>', select: { runtimeStateId: true, metricName: true, metricValue: true, unit: true, meta: true, id: true, createdAt: true, updatedAt: true } }).execute();

// Create
const created = await db.runtimeMetric.create({ data: { runtimeStateId: '<UUID>', metricName: '<String>', metricValue: '<BigFloat>', unit: '<String>', meta: '<JSON>' }, select: { id: true } }).execute();

// Update
const updated = await db.runtimeMetric.update({ where: { id: '<UUID>' }, data: { runtimeStateId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.runtimeMetric.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.runtimeSchedule`

CRUD operations for RuntimeSchedule records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `name` | String | Yes |
| `cronExpression` | String | Yes |
| `nextRunAt` | Datetime | Yes |
| `lastRunAt` | Datetime | Yes |
| `isActive` | Boolean | Yes |
| `config` | JSON | Yes |
| `timezone` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |

**Operations:**

```typescript
// List all runtimeSchedule records
const items = await db.runtimeSchedule.findMany({ select: { name: true, cronExpression: true, nextRunAt: true, lastRunAt: true, isActive: true, config: true, timezone: true, id: true, createdAt: true, updatedAt: true } }).execute();

// Get one by id
const item = await db.runtimeSchedule.findOne({ id: '<UUID>', select: { name: true, cronExpression: true, nextRunAt: true, lastRunAt: true, isActive: true, config: true, timezone: true, id: true, createdAt: true, updatedAt: true } }).execute();

// Create
const created = await db.runtimeSchedule.create({ data: { name: '<String>', cronExpression: '<String>', nextRunAt: '<Datetime>', lastRunAt: '<Datetime>', isActive: '<Boolean>', config: '<JSON>', timezone: '<String>' }, select: { id: true } }).execute();

// Update
const updated = await db.runtimeSchedule.update({ where: { id: '<UUID>' }, data: { name: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.runtimeSchedule.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.runtimeState`

CRUD operations for RuntimeState records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `name` | String | Yes |
| `stateType` | String | Yes |
| `status` | String | Yes |
| `data` | JSON | Yes |
| `parentId` | UUID | Yes |
| `startedAt` | Datetime | Yes |
| `endedAt` | Datetime | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `nameTrgmSimilarity` | Float | Yes |
| `stateTypeTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all runtimeState records
const items = await db.runtimeState.findMany({ select: { name: true, stateType: true, status: true, data: true, parentId: true, startedAt: true, endedAt: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, stateTypeTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.runtimeState.findOne({ id: '<UUID>', select: { name: true, stateType: true, status: true, data: true, parentId: true, startedAt: true, endedAt: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, stateTypeTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.runtimeState.create({ data: { name: '<String>', stateType: '<String>', status: '<String>', data: '<JSON>', parentId: '<UUID>', startedAt: '<Datetime>', endedAt: '<Datetime>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', stateTypeTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.runtimeState.update({ where: { id: '<UUID>' }, data: { name: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.runtimeState.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

### `db.runtimeStateDependency`

CRUD operations for RuntimeStateDependency records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `stateId` | UUID | Yes |
| `dependencyId` | UUID | Yes |

**Operations:**

```typescript
// List all runtimeStateDependency records
const items = await db.runtimeStateDependency.findMany({ select: { stateId: true, dependencyId: true } }).execute();

// Get one by id
const item = await db.runtimeStateDependency.findOne({ id: '<UUID>', select: { stateId: true, dependencyId: true } }).execute();

// Create
const created = await db.runtimeStateDependency.create({ data: { stateId: '<UUID>', dependencyId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.runtimeStateDependency.update({ where: { id: '<UUID>' }, data: { stateId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.runtimeStateDependency.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.skill`

CRUD operations for Skill records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `name` | String | Yes |
| `description` | String | Yes |
| `category` | String | Yes |
| `implementation` | String | Yes |
| `config` | JSON | Yes |
| `isActive` | Boolean | Yes |
| `intentTrigger` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `intentTriggerEmbedding` | Vector | Yes |
| `agentId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `intentTriggerEmbeddingVectorDistance` | Float | Yes |
| `nameTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `categoryTrgmSimilarity` | Float | Yes |
| `implementationTrgmSimilarity` | Float | Yes |
| `intentTriggerTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all skill records
const items = await db.skill.findMany({ select: { name: true, description: true, category: true, implementation: true, config: true, isActive: true, intentTrigger: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, intentTriggerEmbedding: true, agentId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, intentTriggerEmbeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, categoryTrgmSimilarity: true, implementationTrgmSimilarity: true, intentTriggerTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.skill.findOne({ id: '<UUID>', select: { name: true, description: true, category: true, implementation: true, config: true, isActive: true, intentTrigger: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, intentTriggerEmbedding: true, agentId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, intentTriggerEmbeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, categoryTrgmSimilarity: true, implementationTrgmSimilarity: true, intentTriggerTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.skill.create({ data: { name: '<String>', description: '<String>', category: '<String>', implementation: '<String>', config: '<JSON>', isActive: '<Boolean>', intentTrigger: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', intentTriggerEmbedding: '<Vector>', agentId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', intentTriggerEmbeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', categoryTrgmSimilarity: '<Float>', implementationTrgmSimilarity: '<Float>', intentTriggerTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.skill.update({ where: { id: '<UUID>' }, data: { name: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.skill.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`, `intentTriggerEmbedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

### `db.skillTool`

CRUD operations for SkillTool records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `skillId` | UUID | Yes |
| `toolDefinitionId` | UUID | Yes |

**Operations:**

```typescript
// List all skillTool records
const items = await db.skillTool.findMany({ select: { skillId: true, toolDefinitionId: true } }).execute();

// Get one by id
const item = await db.skillTool.findOne({ id: '<UUID>', select: { skillId: true, toolDefinitionId: true } }).execute();

// Create
const created = await db.skillTool.create({ data: { skillId: '<UUID>', toolDefinitionId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.skillTool.update({ where: { id: '<UUID>' }, data: { skillId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.skillTool.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.toolDefinition`

CRUD operations for ToolDefinition records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `name` | String | Yes |
| `description` | String | Yes |
| `toolType` | String | Yes |
| `schema` | JSON | Yes |
| `config` | JSON | Yes |
| `isActive` | Boolean | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `nameTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `toolTypeTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all toolDefinition records
const items = await db.toolDefinition.findMany({ select: { name: true, description: true, toolType: true, schema: true, config: true, isActive: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, toolTypeTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.toolDefinition.findOne({ id: '<UUID>', select: { name: true, description: true, toolType: true, schema: true, config: true, isActive: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, toolTypeTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.toolDefinition.create({ data: { name: '<String>', description: '<String>', toolType: '<String>', schema: '<JSON>', config: '<JSON>', isActive: '<Boolean>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', toolTypeTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.toolDefinition.update({ where: { id: '<UUID>' }, data: { name: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.toolDefinition.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

### `db.tag`

CRUD operations for Tag records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `name` | String | Yes |
| `color` | String | Yes |
| `category` | String | Yes |
| `usageCount` | Int | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |

**Operations:**

```typescript
// List all tag records
const items = await db.tag.findMany({ select: { name: true, color: true, category: true, usageCount: true, id: true, createdAt: true, updatedAt: true } }).execute();

// Get one by id
const item = await db.tag.findOne({ id: '<UUID>', select: { name: true, color: true, category: true, usageCount: true, id: true, createdAt: true, updatedAt: true } }).execute();

// Create
const created = await db.tag.create({ data: { name: '<String>', color: '<String>', category: '<String>', usageCount: '<Int>' }, select: { id: true } }).execute();

// Update
const updated = await db.tag.update({ where: { id: '<UUID>' }, data: { name: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.tag.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.taskContact`

CRUD operations for TaskContact records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `taskId` | UUID | Yes |
| `contactId` | UUID | Yes |

**Operations:**

```typescript
// List all taskContact records
const items = await db.taskContact.findMany({ select: { taskId: true, contactId: true } }).execute();

// Get one by id
const item = await db.taskContact.findOne({ id: '<UUID>', select: { taskId: true, contactId: true } }).execute();

// Create
const created = await db.taskContact.create({ data: { taskId: '<UUID>', contactId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.taskContact.update({ where: { id: '<UUID>' }, data: { taskId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.taskContact.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.taskNote`

CRUD operations for TaskNote records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `taskId` | UUID | Yes |
| `noteId` | UUID | Yes |

**Operations:**

```typescript
// List all taskNote records
const items = await db.taskNote.findMany({ select: { taskId: true, noteId: true } }).execute();

// Get one by id
const item = await db.taskNote.findOne({ id: '<UUID>', select: { taskId: true, noteId: true } }).execute();

// Create
const created = await db.taskNote.create({ data: { taskId: '<UUID>', noteId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.taskNote.update({ where: { id: '<UUID>' }, data: { taskId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.taskNote.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.taskProject`

CRUD operations for TaskProject records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `taskId` | UUID | Yes |
| `projectId` | UUID | Yes |

**Operations:**

```typescript
// List all taskProject records
const items = await db.taskProject.findMany({ select: { taskId: true, projectId: true } }).execute();

// Get one by id
const item = await db.taskProject.findOne({ id: '<UUID>', select: { taskId: true, projectId: true } }).execute();

// Create
const created = await db.taskProject.create({ data: { taskId: '<UUID>', projectId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.taskProject.update({ where: { id: '<UUID>' }, data: { taskId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.taskProject.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.threadParticipant`

CRUD operations for ThreadParticipant records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `emailThreadId` | UUID | Yes |
| `contactId` | UUID | Yes |

**Operations:**

```typescript
// List all threadParticipant records
const items = await db.threadParticipant.findMany({ select: { emailThreadId: true, contactId: true } }).execute();

// Get one by id
const item = await db.threadParticipant.findOne({ id: '<UUID>', select: { emailThreadId: true, contactId: true } }).execute();

// Create
const created = await db.threadParticipant.create({ data: { emailThreadId: '<UUID>', contactId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.threadParticipant.update({ where: { id: '<UUID>' }, data: { emailThreadId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.threadParticipant.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.toolExecution`

CRUD operations for ToolExecution records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `toolDefinitionId` | UUID | Yes |
| `messageId` | UUID | Yes |
| `input` | JSON | Yes |
| `output` | JSON | Yes |
| `status` | String | Yes |
| `startedAt` | Datetime | Yes |
| `completedAt` | Datetime | Yes |
| `error` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |

**Operations:**

```typescript
// List all toolExecution records
const items = await db.toolExecution.findMany({ select: { toolDefinitionId: true, messageId: true, input: true, output: true, status: true, startedAt: true, completedAt: true, error: true, id: true, createdAt: true, updatedAt: true } }).execute();

// Get one by id
const item = await db.toolExecution.findOne({ id: '<UUID>', select: { toolDefinitionId: true, messageId: true, input: true, output: true, status: true, startedAt: true, completedAt: true, error: true, id: true, createdAt: true, updatedAt: true } }).execute();

// Create
const created = await db.toolExecution.create({ data: { toolDefinitionId: '<UUID>', messageId: '<UUID>', input: '<JSON>', output: '<JSON>', status: '<String>', startedAt: '<Datetime>', completedAt: '<Datetime>', error: '<String>' }, select: { id: true } }).execute();

// Update
const updated = await db.toolExecution.update({ where: { id: '<UUID>' }, data: { toolDefinitionId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.toolExecution.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.touchpoint`

CRUD operations for Touchpoint records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `contactId` | UUID | Yes |
| `touchpointType` | String | Yes |
| `occurredAt` | Datetime | Yes |
| `subject` | String | Yes |
| `summary` | String | Yes |
| `sentiment` | String | Yes |
| `direction` | String | Yes |
| `channel` | String | Yes |
| `dealId` | UUID | Yes |
| `companyId` | UUID | Yes |
| `eventId` | UUID | Yes |
| `meta` | JSON | Yes |
| `tags` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `touchpointTypeTrgmSimilarity` | Float | Yes |
| `subjectTrgmSimilarity` | Float | Yes |
| `summaryTrgmSimilarity` | Float | Yes |
| `sentimentTrgmSimilarity` | Float | Yes |
| `directionTrgmSimilarity` | Float | Yes |
| `channelTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all touchpoint records
const items = await db.touchpoint.findMany({ select: { contactId: true, touchpointType: true, occurredAt: true, subject: true, summary: true, sentiment: true, direction: true, channel: true, dealId: true, companyId: true, eventId: true, meta: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, touchpointTypeTrgmSimilarity: true, subjectTrgmSimilarity: true, summaryTrgmSimilarity: true, sentimentTrgmSimilarity: true, directionTrgmSimilarity: true, channelTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.touchpoint.findOne({ id: '<UUID>', select: { contactId: true, touchpointType: true, occurredAt: true, subject: true, summary: true, sentiment: true, direction: true, channel: true, dealId: true, companyId: true, eventId: true, meta: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, touchpointTypeTrgmSimilarity: true, subjectTrgmSimilarity: true, summaryTrgmSimilarity: true, sentimentTrgmSimilarity: true, directionTrgmSimilarity: true, channelTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.touchpoint.create({ data: { contactId: '<UUID>', touchpointType: '<String>', occurredAt: '<Datetime>', subject: '<String>', summary: '<String>', sentiment: '<String>', direction: '<String>', channel: '<String>', dealId: '<UUID>', companyId: '<UUID>', eventId: '<UUID>', meta: '<JSON>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', touchpointTypeTrgmSimilarity: '<Float>', subjectTrgmSimilarity: '<Float>', summaryTrgmSimilarity: '<Float>', sentimentTrgmSimilarity: '<Float>', directionTrgmSimilarity: '<Float>', channelTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.touchpoint.update({ where: { id: '<UUID>' }, data: { contactId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.touchpoint.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

### `db.trip`

CRUD operations for Trip records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `name` | String | Yes |
| `destination` | String | Yes |
| `description` | String | Yes |
| `startDate` | Datetime | Yes |
| `endDate` | Datetime | Yes |
| `tags` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `destinationGeo` | GeographyInterface | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `nameTrgmSimilarity` | Float | Yes |
| `destinationTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all trip records
const items = await db.trip.findMany({ select: { name: true, destination: true, description: true, startDate: true, endDate: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, destinationGeo: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, destinationTrgmSimilarity: true, descriptionTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.trip.findOne({ id: '<UUID>', select: { name: true, destination: true, description: true, startDate: true, endDate: true, tags: true, id: true, createdAt: true, updatedAt: true, embeddingText: true, embedding: true, embeddingStale: true, destinationGeo: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, destinationTrgmSimilarity: true, descriptionTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.trip.create({ data: { name: '<String>', destination: '<String>', description: '<String>', startDate: '<Datetime>', endDate: '<Datetime>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', destinationGeo: '<GeographyInterface>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', destinationTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.trip.update({ where: { id: '<UUID>' }, data: { name: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.trip.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

### `db.venueImage`

CRUD operations for VenueImage records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `venueId` | UUID | Yes |
| `imageId` | UUID | Yes |

**Operations:**

```typescript
// List all venueImage records
const items = await db.venueImage.findMany({ select: { venueId: true, imageId: true } }).execute();

// Get one by id
const item = await db.venueImage.findOne({ id: '<UUID>', select: { venueId: true, imageId: true } }).execute();

// Create
const created = await db.venueImage.create({ data: { venueId: '<UUID>', imageId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.venueImage.update({ where: { id: '<UUID>' }, data: { venueId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.venueImage.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.venueLink`

CRUD operations for VenueLink records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `title` | String | Yes |
| `url` | String | Yes |
| `id` | UUID | No |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `venueId` | UUID | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all venueLink records
const items = await db.venueLink.findMany({ select: { title: true, url: true, id: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, venueId: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.venueLink.findOne({ id: '<UUID>', select: { title: true, url: true, id: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, venueId: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.venueLink.create({ data: { title: '<String>', url: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', venueId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.venueLink.update({ where: { id: '<UUID>' }, data: { title: '<String>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.venueLink.delete({ where: { id: '<UUID>' } }).execute();
```

> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Custom Operations

### `db.mutation.requestUploadUrl`

Request a presigned URL for uploading a file directly to S3.
Client computes SHA-256 of the file content and provides it here.
If a file with the same hash already exists (dedup), returns the
existing file ID and deduplicated=true with no uploadUrl.

- **Type:** mutation
- **Arguments:**

  | Argument | Type |
  |----------|------|
  | `input` | RequestUploadUrlInput (required) |

```typescript
const result = await db.mutation.requestUploadUrl({ input: { bucketKey: '<String>', contentHash: '<String>', contentType: '<String>', size: '<Int>', filename: '<String>' } }).execute();
```

### `db.mutation.confirmUpload`

Confirm that a file has been uploaded to S3.
Verifies the object exists in S3, checks content-type,
and transitions the file status from 'pending' to 'ready'.

- **Type:** mutation
- **Arguments:**

  | Argument | Type |
  |----------|------|
  | `input` | ConfirmUploadInput (required) |

```typescript
const result = await db.mutation.confirmUpload({ input: { fileId: '<UUID>' } }).execute();
```

### `db.mutation.provisionBucket`

Provision an S3 bucket for a logical bucket in the database.
Reads the bucket config via RLS, then creates and configures
the S3 bucket with the appropriate privacy policies, CORS rules,
and lifecycle settings.

- **Type:** mutation
- **Arguments:**

  | Argument | Type |
  |----------|------|
  | `input` | ProvisionBucketInput (required) |

```typescript
const result = await db.mutation.provisionBucket({ input: { bucketKey: '<String>' } }).execute();
```

---

Built by the [Constructive](https://constructive.io) team.

## Disclaimer

AS DESCRIBED IN THE LICENSES, THE SOFTWARE IS PROVIDED "AS IS", AT YOUR OWN RISK, AND WITHOUT WARRANTIES OF ANY KIND.

No developer or entity involved in creating this software will be liable for any claims or damages whatsoever associated with your use, inability to use, or your interaction with other users of the code, including any direct, indirect, incidental, special, exemplary, punitive or consequential damages, or loss of profits, cryptocurrencies, tokens, or anything else of value.
