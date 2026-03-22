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
| `agentChunk` | findMany, findOne, create, update, delete |
| `agentCollaborator` | findMany, findOne, create, update, delete |
| `agent` | findMany, findOne, create, update, delete |
| `agentLogChunk` | findMany, findOne, create, update, delete |
| `agentLog` | findMany, findOne, create, update, delete |
| `agentTaskChunk` | findMany, findOne, create, update, delete |
| `agentTask` | findMany, findOne, create, update, delete |
| `autonomyRecordChunk` | findMany, findOne, create, update, delete |
| `autonomyRecord` | findMany, findOne, create, update, delete |
| `autonomyRecordLink` | findMany, findOne, create, update, delete |
| `codebasChunk` | findMany, findOne, create, update, delete |
| `codebaseDependency` | findMany, findOne, create, update, delete |
| `codebasis` | findMany, findOne, create, update, delete |
| `codeChunk` | findMany, findOne, create, update, delete |
| `companyChunk` | findMany, findOne, create, update, delete |
| `company` | findMany, findOne, create, update, delete |
| `contact` | findMany, findOne, create, update, delete |
| `companyEvent` | findMany, findOne, create, update, delete |
| `event` | findMany, findOne, create, update, delete |
| `companyImage` | findMany, findOne, create, update, delete |
| `image` | findMany, findOne, create, update, delete |
| `companyLink` | findMany, findOne, create, update, delete |
| `memory` | findMany, findOne, create, update, delete |
| `companyMemory` | findMany, findOne, create, update, delete |
| `companyNote` | findMany, findOne, create, update, delete |
| `note` | findMany, findOne, create, update, delete |
| `contactChunk` | findMany, findOne, create, update, delete |
| `contactCompany` | findMany, findOne, create, update, delete |
| `deal` | findMany, findOne, create, update, delete |
| `contactEvent` | findMany, findOne, create, update, delete |
| `contactImage` | findMany, findOne, create, update, delete |
| `contactLink` | findMany, findOne, create, update, delete |
| `contactMemory` | findMany, findOne, create, update, delete |
| `contactNote` | findMany, findOne, create, update, delete |
| `project` | findMany, findOne, create, update, delete |
| `conversationChunk` | findMany, findOne, create, update, delete |
| `conversation` | findMany, findOne, create, update, delete |
| `dealChunk` | findMany, findOne, create, update, delete |
| `dealContact` | findMany, findOne, create, update, delete |
| `dealNote` | findMany, findOne, create, update, delete |
| `eventChunk` | findMany, findOne, create, update, delete |
| `eventImage` | findMany, findOne, create, update, delete |
| `eventLink` | findMany, findOne, create, update, delete |
| `eventNote` | findMany, findOne, create, update, delete |
| `eventVenue` | findMany, findOne, create, update, delete |
| `venue` | findMany, findOne, create, update, delete |
| `goalChunk` | findMany, findOne, create, update, delete |
| `goal` | findMany, findOne, create, update, delete |
| `goalHabit` | findMany, findOne, create, update, delete |
| `habit` | findMany, findOne, create, update, delete |
| `goalProject` | findMany, findOne, create, update, delete |
| `habitChunk` | findMany, findOne, create, update, delete |
| `hikingTrailChunk` | findMany, findOne, create, update, delete |
| `hikingTrail` | findMany, findOne, create, update, delete |
| `trip` | findMany, findOne, create, update, delete |
| `interactionChunk` | findMany, findOne, create, update, delete |
| `interaction` | findMany, findOne, create, update, delete |
| `itineraryItemChunk` | findMany, findOne, create, update, delete |
| `itineraryItem` | findMany, findOne, create, update, delete |
| `memoryChunk` | findMany, findOne, create, update, delete |
| `messageChunk` | findMany, findOne, create, update, delete |
| `message` | findMany, findOne, create, update, delete |
| `noteChunk` | findMany, findOne, create, update, delete |
| `placeChunk` | findMany, findOne, create, update, delete |
| `place` | findMany, findOne, create, update, delete |
| `projectChunk` | findMany, findOne, create, update, delete |
| `projectContact` | findMany, findOne, create, update, delete |
| `ruleChunk` | findMany, findOne, create, update, delete |
| `rule` | findMany, findOne, create, update, delete |
| `runtimeArtifact` | findMany, findOne, create, update, delete |
| `runtimeConfig` | findMany, findOne, create, update, delete |
| `runtimeEvent` | findMany, findOne, create, update, delete |
| `runtimeLogChunk` | findMany, findOne, create, update, delete |
| `runtimeLog` | findMany, findOne, create, update, delete |
| `runtimeMetric` | findMany, findOne, create, update, delete |
| `runtimeSchedule` | findMany, findOne, create, update, delete |
| `runtimeStateChunk` | findMany, findOne, create, update, delete |
| `runtimeState` | findMany, findOne, create, update, delete |
| `runtimeStateDependency` | findMany, findOne, create, update, delete |
| `skillChunk` | findMany, findOne, create, update, delete |
| `skill` | findMany, findOne, create, update, delete |
| `tag` | findMany, findOne, create, update, delete |
| `toolDefinition` | findMany, findOne, create, update, delete |
| `toolExecution` | findMany, findOne, create, update, delete |
| `tripChunk` | findMany, findOne, create, update, delete |
| `tripHikingTrail` | findMany, findOne, create, update, delete |
| `tripPlace` | findMany, findOne, create, update, delete |
| `venueChunk` | findMany, findOne, create, update, delete |
| `venueImage` | findMany, findOne, create, update, delete |
| `venueLink` | findMany, findOne, create, update, delete |

## Table Operations

### `db.agentChunk`

CRUD operations for AgentChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `agentId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all agentChunk records
const items = await db.agentChunk.findMany({ select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, agentId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.agentChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, agentId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.agentChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', agentId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.agentChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.agentChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.agentCollaborator`

CRUD operations for AgentCollaborator records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `agentId` | UUID | Yes |
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all agentCollaborator records
const items = await db.agentCollaborator.findMany({ select: { agentId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.agentCollaborator.findOne({ id: '<UUID>', select: { agentId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.agentCollaborator.create({ data: { agentId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.agentCollaborator.update({ where: { id: '<UUID>' }, data: { agentId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.agentCollaborator.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.agent`

CRUD operations for Agent records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `name` | String | Yes |
| `description` | String | Yes |
| `systemPrompt` | String | Yes |
| `model` | String | Yes |
| `temperature` | BigFloat | Yes |
| `status` | String | Yes |
| `config` | JSON | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
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
const items = await db.agent.findMany({ select: { id: true, entityId: true, name: true, description: true, systemPrompt: true, model: true, temperature: true, status: true, config: true, tags: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, systemPromptTrgmSimilarity: true, modelTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.agent.findOne({ id: '<UUID>', select: { id: true, entityId: true, name: true, description: true, systemPrompt: true, model: true, temperature: true, status: true, config: true, tags: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, systemPromptTrgmSimilarity: true, modelTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.agent.create({ data: { entityId: '<UUID>', name: '<String>', description: '<String>', systemPrompt: '<String>', model: '<String>', temperature: '<BigFloat>', status: '<String>', config: '<JSON>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', systemPromptTrgmSimilarity: '<Float>', modelTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.agent.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.agent.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.agentLogChunk`

CRUD operations for AgentLogChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `agentLogId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all agentLogChunk records
const items = await db.agentLogChunk.findMany({ select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, agentLogId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.agentLogChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, agentLogId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.agentLogChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', agentLogId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.agentLogChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.agentLogChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.agentLog`

CRUD operations for AgentLog records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `agentId` | UUID | Yes |
| `level` | String | Yes |
| `message` | String | Yes |
| `context` | JSON | Yes |
| `taskId` | UUID | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
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
const items = await db.agentLog.findMany({ select: { id: true, entityId: true, agentId: true, level: true, message: true, context: true, taskId: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, levelTrgmSimilarity: true, messageTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.agentLog.findOne({ id: '<UUID>', select: { id: true, entityId: true, agentId: true, level: true, message: true, context: true, taskId: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, levelTrgmSimilarity: true, messageTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.agentLog.create({ data: { entityId: '<UUID>', agentId: '<UUID>', level: '<String>', message: '<String>', context: '<JSON>', taskId: '<UUID>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', levelTrgmSimilarity: '<Float>', messageTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.agentLog.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.agentLog.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.agentTaskChunk`

CRUD operations for AgentTaskChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `agentTaskId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all agentTaskChunk records
const items = await db.agentTaskChunk.findMany({ select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, agentTaskId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.agentTaskChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, agentTaskId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.agentTaskChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', agentTaskId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.agentTaskChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.agentTaskChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.agentTask`

CRUD operations for AgentTask records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `agentId` | UUID | Yes |
| `title` | String | Yes |
| `description` | String | Yes |
| `status` | String | Yes |
| `priority` | Int | Yes |
| `result` | String | Yes |
| `startedAt` | Datetime | Yes |
| `completedAt` | Datetime | Yes |
| `meta` | JSON | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
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
// List all agentTask records
const items = await db.agentTask.findMany({ select: { id: true, entityId: true, agentId: true, title: true, description: true, status: true, priority: true, result: true, startedAt: true, completedAt: true, meta: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, descriptionTrgmSimilarity: true, statusTrgmSimilarity: true, resultTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.agentTask.findOne({ id: '<UUID>', select: { id: true, entityId: true, agentId: true, title: true, description: true, status: true, priority: true, result: true, startedAt: true, completedAt: true, meta: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, descriptionTrgmSimilarity: true, statusTrgmSimilarity: true, resultTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.agentTask.create({ data: { entityId: '<UUID>', agentId: '<UUID>', title: '<String>', description: '<String>', status: '<String>', priority: '<Int>', result: '<String>', startedAt: '<Datetime>', completedAt: '<Datetime>', meta: '<JSON>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', resultTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.agentTask.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.agentTask.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.autonomyRecordChunk`

CRUD operations for AutonomyRecordChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `autonomyRecordId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all autonomyRecordChunk records
const items = await db.autonomyRecordChunk.findMany({ select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, autonomyRecordId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.autonomyRecordChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, autonomyRecordId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.autonomyRecordChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', autonomyRecordId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.autonomyRecordChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.autonomyRecordChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.autonomyRecord`

CRUD operations for AutonomyRecord records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `title` | String | Yes |
| `recordType` | String | Yes |
| `content` | String | Yes |
| `status` | String | Yes |
| `priority` | Int | Yes |
| `source` | String | Yes |
| `context` | JSON | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
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
const items = await db.autonomyRecord.findMany({ select: { id: true, entityId: true, title: true, recordType: true, content: true, status: true, priority: true, source: true, context: true, tags: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, recordTypeTrgmSimilarity: true, contentTrgmSimilarity: true, statusTrgmSimilarity: true, sourceTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.autonomyRecord.findOne({ id: '<UUID>', select: { id: true, entityId: true, title: true, recordType: true, content: true, status: true, priority: true, source: true, context: true, tags: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, recordTypeTrgmSimilarity: true, contentTrgmSimilarity: true, statusTrgmSimilarity: true, sourceTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.autonomyRecord.create({ data: { entityId: '<UUID>', title: '<String>', recordType: '<String>', content: '<String>', status: '<String>', priority: '<Int>', source: '<String>', context: '<JSON>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', recordTypeTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', sourceTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.autonomyRecord.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.autonomyRecord.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.autonomyRecordLink`

CRUD operations for AutonomyRecordLink records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `autonomyRecordId` | UUID | Yes |
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all autonomyRecordLink records
const items = await db.autonomyRecordLink.findMany({ select: { autonomyRecordId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.autonomyRecordLink.findOne({ id: '<UUID>', select: { autonomyRecordId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.autonomyRecordLink.create({ data: { autonomyRecordId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.autonomyRecordLink.update({ where: { id: '<UUID>' }, data: { autonomyRecordId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.autonomyRecordLink.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.codebasChunk`

CRUD operations for CodebasChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `codebasisId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all codebasChunk records
const items = await db.codebasChunk.findMany({ select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, codebasisId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.codebasChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, codebasisId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.codebasChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', codebasisId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.codebasChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.codebasChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.codebaseDependency`

CRUD operations for CodebaseDependency records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `codebasisId` | UUID | Yes |
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all codebaseDependency records
const items = await db.codebaseDependency.findMany({ select: { codebasisId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.codebaseDependency.findOne({ id: '<UUID>', select: { codebasisId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.codebaseDependency.create({ data: { codebasisId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.codebaseDependency.update({ where: { id: '<UUID>' }, data: { codebasisId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.codebaseDependency.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.codebasis`

CRUD operations for Codebasis records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `name` | String | Yes |
| `description` | String | Yes |
| `repositoryUrl` | String | Yes |
| `defaultBranch` | String | Yes |
| `language` | String | Yes |
| `framework` | String | Yes |
| `lastSyncedAt` | Datetime | Yes |
| `config` | JSON | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `nameTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `repositoryUrlTrgmSimilarity` | Float | Yes |
| `defaultBranchTrgmSimilarity` | Float | Yes |
| `languageTrgmSimilarity` | Float | Yes |
| `frameworkTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all codebasis records
const items = await db.codebasis.findMany({ select: { id: true, entityId: true, name: true, description: true, repositoryUrl: true, defaultBranch: true, language: true, framework: true, lastSyncedAt: true, config: true, tags: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, repositoryUrlTrgmSimilarity: true, defaultBranchTrgmSimilarity: true, languageTrgmSimilarity: true, frameworkTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.codebasis.findOne({ id: '<UUID>', select: { id: true, entityId: true, name: true, description: true, repositoryUrl: true, defaultBranch: true, language: true, framework: true, lastSyncedAt: true, config: true, tags: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, repositoryUrlTrgmSimilarity: true, defaultBranchTrgmSimilarity: true, languageTrgmSimilarity: true, frameworkTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.codebasis.create({ data: { entityId: '<UUID>', name: '<String>', description: '<String>', repositoryUrl: '<String>', defaultBranch: '<String>', language: '<String>', framework: '<String>', lastSyncedAt: '<Datetime>', config: '<JSON>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', repositoryUrlTrgmSimilarity: '<Float>', defaultBranchTrgmSimilarity: '<Float>', languageTrgmSimilarity: '<Float>', frameworkTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.codebasis.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.codebasis.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.codeChunk`

CRUD operations for CodeChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `codebaseId` | UUID | Yes |
| `filePath` | String | Yes |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `language` | String | Yes |
| `startLine` | Int | Yes |
| `endLine` | Int | Yes |
| `symbolName` | String | Yes |
| `symbolType` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `codebasisId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `filePathTrgmSimilarity` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `languageTrgmSimilarity` | Float | Yes |
| `symbolNameTrgmSimilarity` | Float | Yes |
| `symbolTypeTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all codeChunk records
const items = await db.codeChunk.findMany({ select: { id: true, entityId: true, codebaseId: true, filePath: true, chunkIndex: true, content: true, language: true, startLine: true, endLine: true, symbolName: true, symbolType: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, codebasisId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, filePathTrgmSimilarity: true, contentTrgmSimilarity: true, languageTrgmSimilarity: true, symbolNameTrgmSimilarity: true, symbolTypeTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.codeChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, codebaseId: true, filePath: true, chunkIndex: true, content: true, language: true, startLine: true, endLine: true, symbolName: true, symbolType: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, codebasisId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, filePathTrgmSimilarity: true, contentTrgmSimilarity: true, languageTrgmSimilarity: true, symbolNameTrgmSimilarity: true, symbolTypeTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.codeChunk.create({ data: { entityId: '<UUID>', codebaseId: '<UUID>', filePath: '<String>', chunkIndex: '<Int>', content: '<String>', language: '<String>', startLine: '<Int>', endLine: '<Int>', symbolName: '<String>', symbolType: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', codebasisId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', filePathTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', languageTrgmSimilarity: '<Float>', symbolNameTrgmSimilarity: '<Float>', symbolTypeTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.codeChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.codeChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.companyChunk`

CRUD operations for CompanyChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `companyId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all companyChunk records
const items = await db.companyChunk.findMany({ select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, companyId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.companyChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, companyId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.companyChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', companyId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.companyChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.companyChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.company`

CRUD operations for Company records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `name` | String | Yes |
| `domain` | String | Yes |
| `industry` | String | Yes |
| `description` | String | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `mainImageId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
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
const items = await db.company.findMany({ select: { id: true, entityId: true, name: true, domain: true, industry: true, description: true, tags: true, embeddingText: true, mainImageId: true, createdAt: true, updatedAt: true, searchTsv: true, embedding: true, embeddingStale: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, domainTrgmSimilarity: true, industryTrgmSimilarity: true, descriptionTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.company.findOne({ id: '<UUID>', select: { id: true, entityId: true, name: true, domain: true, industry: true, description: true, tags: true, embeddingText: true, mainImageId: true, createdAt: true, updatedAt: true, searchTsv: true, embedding: true, embeddingStale: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, domainTrgmSimilarity: true, industryTrgmSimilarity: true, descriptionTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.company.create({ data: { entityId: '<UUID>', name: '<String>', domain: '<String>', industry: '<String>', description: '<String>', tags: '<String>', embeddingText: '<String>', mainImageId: '<UUID>', searchTsv: '<FullText>', embedding: '<Vector>', embeddingStale: '<Boolean>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', domainTrgmSimilarity: '<Float>', industryTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.company.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.company.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.contact`

CRUD operations for Contact records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `firstName` | String | Yes |
| `lastName` | String | Yes |
| `email` | String | Yes |
| `phone` | String | Yes |
| `headline` | String | Yes |
| `bio` | String | Yes |
| `location` | String | Yes |
| `birthday` | Date | Yes |
| `relationshipType` | String | Yes |
| `howWeMet` | String | Yes |
| `twitterHandle` | String | Yes |
| `linkedinUrl` | String | Yes |
| `githubUsername` | String | Yes |
| `instagramHandle` | String | Yes |
| `website` | String | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `mainImageId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `searchTsv` | FullText | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
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
| `relationshipTypeTrgmSimilarity` | Float | Yes |
| `howWeMetTrgmSimilarity` | Float | Yes |
| `twitterHandleTrgmSimilarity` | Float | Yes |
| `linkedinUrlTrgmSimilarity` | Float | Yes |
| `githubUsernameTrgmSimilarity` | Float | Yes |
| `instagramHandleTrgmSimilarity` | Float | Yes |
| `websiteTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all contact records
const items = await db.contact.findMany({ select: { id: true, entityId: true, firstName: true, lastName: true, email: true, phone: true, headline: true, bio: true, location: true, birthday: true, relationshipType: true, howWeMet: true, twitterHandle: true, linkedinUrl: true, githubUsername: true, instagramHandle: true, website: true, tags: true, embeddingText: true, mainImageId: true, createdAt: true, updatedAt: true, searchTsv: true, embedding: true, embeddingStale: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, firstNameTrgmSimilarity: true, lastNameTrgmSimilarity: true, emailTrgmSimilarity: true, phoneTrgmSimilarity: true, headlineTrgmSimilarity: true, bioTrgmSimilarity: true, locationTrgmSimilarity: true, relationshipTypeTrgmSimilarity: true, howWeMetTrgmSimilarity: true, twitterHandleTrgmSimilarity: true, linkedinUrlTrgmSimilarity: true, githubUsernameTrgmSimilarity: true, instagramHandleTrgmSimilarity: true, websiteTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.contact.findOne({ id: '<UUID>', select: { id: true, entityId: true, firstName: true, lastName: true, email: true, phone: true, headline: true, bio: true, location: true, birthday: true, relationshipType: true, howWeMet: true, twitterHandle: true, linkedinUrl: true, githubUsername: true, instagramHandle: true, website: true, tags: true, embeddingText: true, mainImageId: true, createdAt: true, updatedAt: true, searchTsv: true, embedding: true, embeddingStale: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, firstNameTrgmSimilarity: true, lastNameTrgmSimilarity: true, emailTrgmSimilarity: true, phoneTrgmSimilarity: true, headlineTrgmSimilarity: true, bioTrgmSimilarity: true, locationTrgmSimilarity: true, relationshipTypeTrgmSimilarity: true, howWeMetTrgmSimilarity: true, twitterHandleTrgmSimilarity: true, linkedinUrlTrgmSimilarity: true, githubUsernameTrgmSimilarity: true, instagramHandleTrgmSimilarity: true, websiteTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.contact.create({ data: { entityId: '<UUID>', firstName: '<String>', lastName: '<String>', email: '<String>', phone: '<String>', headline: '<String>', bio: '<String>', location: '<String>', birthday: '<Date>', relationshipType: '<String>', howWeMet: '<String>', twitterHandle: '<String>', linkedinUrl: '<String>', githubUsername: '<String>', instagramHandle: '<String>', website: '<String>', tags: '<String>', embeddingText: '<String>', mainImageId: '<UUID>', searchTsv: '<FullText>', embedding: '<Vector>', embeddingStale: '<Boolean>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', firstNameTrgmSimilarity: '<Float>', lastNameTrgmSimilarity: '<Float>', emailTrgmSimilarity: '<Float>', phoneTrgmSimilarity: '<Float>', headlineTrgmSimilarity: '<Float>', bioTrgmSimilarity: '<Float>', locationTrgmSimilarity: '<Float>', relationshipTypeTrgmSimilarity: '<Float>', howWeMetTrgmSimilarity: '<Float>', twitterHandleTrgmSimilarity: '<Float>', linkedinUrlTrgmSimilarity: '<Float>', githubUsernameTrgmSimilarity: '<Float>', instagramHandleTrgmSimilarity: '<Float>', websiteTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.contact.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.contact.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.companyEvent`

CRUD operations for CompanyEvent records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `companyId` | UUID | Yes |
| `eventId` | UUID | Yes |
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all companyEvent records
const items = await db.companyEvent.findMany({ select: { companyId: true, eventId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.companyEvent.findOne({ id: '<UUID>', select: { companyId: true, eventId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.companyEvent.create({ data: { companyId: '<UUID>', eventId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

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
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `name` | String | Yes |
| `eventType` | String | Yes |
| `location` | String | Yes |
| `city` | String | Yes |
| `startedAt` | Datetime | Yes |
| `endedAt` | Datetime | Yes |
| `notesText` | String | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `mainImageId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `searchTsv` | FullText | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
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
const items = await db.event.findMany({ select: { id: true, entityId: true, name: true, eventType: true, location: true, city: true, startedAt: true, endedAt: true, notesText: true, tags: true, embeddingText: true, mainImageId: true, createdAt: true, updatedAt: true, searchTsv: true, embedding: true, embeddingStale: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, eventTypeTrgmSimilarity: true, locationTrgmSimilarity: true, cityTrgmSimilarity: true, notesTextTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.event.findOne({ id: '<UUID>', select: { id: true, entityId: true, name: true, eventType: true, location: true, city: true, startedAt: true, endedAt: true, notesText: true, tags: true, embeddingText: true, mainImageId: true, createdAt: true, updatedAt: true, searchTsv: true, embedding: true, embeddingStale: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, eventTypeTrgmSimilarity: true, locationTrgmSimilarity: true, cityTrgmSimilarity: true, notesTextTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.event.create({ data: { entityId: '<UUID>', name: '<String>', eventType: '<String>', location: '<String>', city: '<String>', startedAt: '<Datetime>', endedAt: '<Datetime>', notesText: '<String>', tags: '<String>', embeddingText: '<String>', mainImageId: '<UUID>', searchTsv: '<FullText>', embedding: '<Vector>', embeddingStale: '<Boolean>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', eventTypeTrgmSimilarity: '<Float>', locationTrgmSimilarity: '<Float>', cityTrgmSimilarity: '<Float>', notesTextTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.event.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.event.delete({ where: { id: '<UUID>' } }).execute();
```

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
const item = await db.companyImage.findOne({ id: '<UUID>', select: { companyId: true, imageId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.companyImage.create({ data: { companyId: '<UUID>', imageId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

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
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `url` | String | Yes |
| `meta` | JSON | Yes |
| `altText` | String | Yes |
| `caption` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all image records
const items = await db.image.findMany({ select: { id: true, entityId: true, url: true, meta: true, altText: true, caption: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.image.findOne({ id: '<UUID>', select: { id: true, entityId: true, url: true, meta: true, altText: true, caption: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.image.create({ data: { entityId: '<UUID>', url: '<String>', meta: '<JSON>', altText: '<String>', caption: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.image.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.image.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.companyLink`

CRUD operations for CompanyLink records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `title` | String | Yes |
| `url` | String | Yes |
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
const items = await db.companyLink.findMany({ select: { id: true, entityId: true, title: true, url: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, companyId: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.companyLink.findOne({ id: '<UUID>', select: { id: true, entityId: true, title: true, url: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, companyId: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.companyLink.create({ data: { entityId: '<UUID>', title: '<String>', url: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', companyId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.companyLink.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.companyLink.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.memory`

CRUD operations for Memory records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `title` | String | Yes |
| `content` | String | Yes |
| `occurredAt` | Datetime | Yes |
| `location` | String | Yes |
| `mood` | String | Yes |
| `importance` | Int | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
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
const items = await db.memory.findMany({ select: { id: true, entityId: true, title: true, content: true, occurredAt: true, location: true, mood: true, importance: true, tags: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, agentId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, contentTrgmSimilarity: true, locationTrgmSimilarity: true, moodTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.memory.findOne({ id: '<UUID>', select: { id: true, entityId: true, title: true, content: true, occurredAt: true, location: true, mood: true, importance: true, tags: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, agentId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, contentTrgmSimilarity: true, locationTrgmSimilarity: true, moodTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.memory.create({ data: { entityId: '<UUID>', title: '<String>', content: '<String>', occurredAt: '<Datetime>', location: '<String>', mood: '<String>', importance: '<Int>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', agentId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', locationTrgmSimilarity: '<Float>', moodTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.memory.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.memory.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.companyMemory`

CRUD operations for CompanyMemory records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `companyId` | UUID | Yes |
| `memoryId` | UUID | Yes |
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all companyMemory records
const items = await db.companyMemory.findMany({ select: { companyId: true, memoryId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.companyMemory.findOne({ id: '<UUID>', select: { companyId: true, memoryId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.companyMemory.create({ data: { companyId: '<UUID>', memoryId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

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
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all companyNote records
const items = await db.companyNote.findMany({ select: { companyId: true, noteId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.companyNote.findOne({ id: '<UUID>', select: { companyId: true, noteId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.companyNote.create({ data: { companyId: '<UUID>', noteId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.companyNote.update({ where: { id: '<UUID>' }, data: { companyId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.companyNote.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.note`

CRUD operations for Note records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `content` | String | Yes |
| `abstract` | String | Yes |
| `overview` | String | Yes |
| `activeCount` | Int | Yes |
| `lastAccessedAt` | Datetime | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
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
const items = await db.note.findMany({ select: { id: true, entityId: true, content: true, abstract: true, overview: true, activeCount: true, lastAccessedAt: true, tags: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, contentBm25Score: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, abstractTrgmSimilarity: true, overviewTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.note.findOne({ id: '<UUID>', select: { id: true, entityId: true, content: true, abstract: true, overview: true, activeCount: true, lastAccessedAt: true, tags: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, contentBm25Score: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, abstractTrgmSimilarity: true, overviewTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.note.create({ data: { entityId: '<UUID>', content: '<String>', abstract: '<String>', overview: '<String>', activeCount: '<Int>', lastAccessedAt: '<Datetime>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', contentBm25Score: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', abstractTrgmSimilarity: '<Float>', overviewTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.note.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.note.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.contactChunk`

CRUD operations for ContactChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `contactId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all contactChunk records
const items = await db.contactChunk.findMany({ select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, contactId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.contactChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, contactId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.contactChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', contactId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.contactChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.contactChunk.delete({ where: { id: '<UUID>' } }).execute();
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
const item = await db.contactCompany.findOne({ id: '<UUID>', select: { contactId: true, companyId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.contactCompany.create({ data: { contactId: '<UUID>', companyId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.contactCompany.update({ where: { id: '<UUID>' }, data: { contactId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.contactCompany.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.deal`

CRUD operations for Deal records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `name` | String | Yes |
| `stage` | String | Yes |
| `value` | BigFloat | Yes |
| `currency` | String | Yes |
| `expectedCloseDate` | Datetime | Yes |
| `notesText` | String | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
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
const items = await db.deal.findMany({ select: { id: true, entityId: true, name: true, stage: true, value: true, currency: true, expectedCloseDate: true, notesText: true, tags: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, stageTrgmSimilarity: true, currencyTrgmSimilarity: true, notesTextTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.deal.findOne({ id: '<UUID>', select: { id: true, entityId: true, name: true, stage: true, value: true, currency: true, expectedCloseDate: true, notesText: true, tags: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, stageTrgmSimilarity: true, currencyTrgmSimilarity: true, notesTextTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.deal.create({ data: { entityId: '<UUID>', name: '<String>', stage: '<String>', value: '<BigFloat>', currency: '<String>', expectedCloseDate: '<Datetime>', notesText: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', stageTrgmSimilarity: '<Float>', currencyTrgmSimilarity: '<Float>', notesTextTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.deal.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.deal.delete({ where: { id: '<UUID>' } }).execute();
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
const item = await db.contactEvent.findOne({ id: '<UUID>', select: { contactId: true, eventId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.contactEvent.create({ data: { contactId: '<UUID>', eventId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.contactEvent.update({ where: { id: '<UUID>' }, data: { contactId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.contactEvent.delete({ where: { id: '<UUID>' } }).execute();
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
const item = await db.contactImage.findOne({ id: '<UUID>', select: { contactId: true, imageId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.contactImage.create({ data: { contactId: '<UUID>', imageId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

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
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `title` | String | Yes |
| `url` | String | Yes |
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
const items = await db.contactLink.findMany({ select: { id: true, entityId: true, title: true, url: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, contactId: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.contactLink.findOne({ id: '<UUID>', select: { id: true, entityId: true, title: true, url: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, contactId: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.contactLink.create({ data: { entityId: '<UUID>', title: '<String>', url: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', contactId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.contactLink.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.contactLink.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.contactMemory`

CRUD operations for ContactMemory records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `contactId` | UUID | Yes |
| `memoryId` | UUID | Yes |
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all contactMemory records
const items = await db.contactMemory.findMany({ select: { contactId: true, memoryId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.contactMemory.findOne({ id: '<UUID>', select: { contactId: true, memoryId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.contactMemory.create({ data: { contactId: '<UUID>', memoryId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

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
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all contactNote records
const items = await db.contactNote.findMany({ select: { contactId: true, noteId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.contactNote.findOne({ id: '<UUID>', select: { contactId: true, noteId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.contactNote.create({ data: { contactId: '<UUID>', noteId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.contactNote.update({ where: { id: '<UUID>' }, data: { contactId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.contactNote.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.project`

CRUD operations for Project records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
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
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
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
const items = await db.project.findMany({ select: { id: true, entityId: true, name: true, description: true, status: true, projectType: true, priority: true, startedAt: true, targetDate: true, completedAt: true, config: true, tags: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, statusTrgmSimilarity: true, projectTypeTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.project.findOne({ id: '<UUID>', select: { id: true, entityId: true, name: true, description: true, status: true, projectType: true, priority: true, startedAt: true, targetDate: true, completedAt: true, config: true, tags: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, statusTrgmSimilarity: true, projectTypeTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.project.create({ data: { entityId: '<UUID>', name: '<String>', description: '<String>', status: '<String>', projectType: '<String>', priority: '<Int>', startedAt: '<Datetime>', targetDate: '<Datetime>', completedAt: '<Datetime>', config: '<JSON>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', projectTypeTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.project.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.project.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.conversationChunk`

CRUD operations for ConversationChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `conversationId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all conversationChunk records
const items = await db.conversationChunk.findMany({ select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, conversationId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.conversationChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, conversationId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.conversationChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', conversationId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.conversationChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.conversationChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.conversation`

CRUD operations for Conversation records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `title` | String | Yes |
| `agentId` | UUID | Yes |
| `status` | String | Yes |
| `meta` | JSON | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
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
const items = await db.conversation.findMany({ select: { id: true, entityId: true, title: true, agentId: true, status: true, meta: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.conversation.findOne({ id: '<UUID>', select: { id: true, entityId: true, title: true, agentId: true, status: true, meta: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.conversation.create({ data: { entityId: '<UUID>', title: '<String>', agentId: '<UUID>', status: '<String>', meta: '<JSON>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.conversation.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.conversation.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.dealChunk`

CRUD operations for DealChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `dealId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all dealChunk records
const items = await db.dealChunk.findMany({ select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, dealId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.dealChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, dealId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.dealChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', dealId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.dealChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.dealChunk.delete({ where: { id: '<UUID>' } }).execute();
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
const item = await db.dealContact.findOne({ id: '<UUID>', select: { dealId: true, contactId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.dealContact.create({ data: { dealId: '<UUID>', contactId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

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
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all dealNote records
const items = await db.dealNote.findMany({ select: { dealId: true, noteId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.dealNote.findOne({ id: '<UUID>', select: { dealId: true, noteId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.dealNote.create({ data: { dealId: '<UUID>', noteId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.dealNote.update({ where: { id: '<UUID>' }, data: { dealId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.dealNote.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.eventChunk`

CRUD operations for EventChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `eventId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all eventChunk records
const items = await db.eventChunk.findMany({ select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, eventId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.eventChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, eventId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.eventChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', eventId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.eventChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.eventChunk.delete({ where: { id: '<UUID>' } }).execute();
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
const item = await db.eventImage.findOne({ id: '<UUID>', select: { eventId: true, imageId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.eventImage.create({ data: { eventId: '<UUID>', imageId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

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
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `title` | String | Yes |
| `url` | String | Yes |
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
const items = await db.eventLink.findMany({ select: { id: true, entityId: true, title: true, url: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, eventId: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.eventLink.findOne({ id: '<UUID>', select: { id: true, entityId: true, title: true, url: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, eventId: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.eventLink.create({ data: { entityId: '<UUID>', title: '<String>', url: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', eventId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.eventLink.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.eventLink.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.eventNote`

CRUD operations for EventNote records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `eventId` | UUID | Yes |
| `noteId` | UUID | Yes |
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all eventNote records
const items = await db.eventNote.findMany({ select: { eventId: true, noteId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.eventNote.findOne({ id: '<UUID>', select: { eventId: true, noteId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.eventNote.create({ data: { eventId: '<UUID>', noteId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

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
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all eventVenue records
const items = await db.eventVenue.findMany({ select: { eventId: true, venueId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.eventVenue.findOne({ id: '<UUID>', select: { eventId: true, venueId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.eventVenue.create({ data: { eventId: '<UUID>', venueId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

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
| `id` | UUID | No |
| `entityId` | UUID | Yes |
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
| `embeddingText` | String | Yes |
| `mainImageId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `searchTsv` | FullText | Yes |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
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
const items = await db.venue.findMany({ select: { id: true, entityId: true, name: true, address: true, neighborhood: true, city: true, category: true, status: true, googlePlaceId: true, rating: true, priceLevel: true, isFavorite: true, notes: true, tags: true, embeddingText: true, mainImageId: true, createdAt: true, updatedAt: true, searchTsv: true, embedding: true, embeddingStale: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, addressTrgmSimilarity: true, neighborhoodTrgmSimilarity: true, cityTrgmSimilarity: true, categoryTrgmSimilarity: true, statusTrgmSimilarity: true, googlePlaceIdTrgmSimilarity: true, priceLevelTrgmSimilarity: true, notesTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.venue.findOne({ id: '<UUID>', select: { id: true, entityId: true, name: true, address: true, neighborhood: true, city: true, category: true, status: true, googlePlaceId: true, rating: true, priceLevel: true, isFavorite: true, notes: true, tags: true, embeddingText: true, mainImageId: true, createdAt: true, updatedAt: true, searchTsv: true, embedding: true, embeddingStale: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, addressTrgmSimilarity: true, neighborhoodTrgmSimilarity: true, cityTrgmSimilarity: true, categoryTrgmSimilarity: true, statusTrgmSimilarity: true, googlePlaceIdTrgmSimilarity: true, priceLevelTrgmSimilarity: true, notesTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.venue.create({ data: { entityId: '<UUID>', name: '<String>', address: '<String>', neighborhood: '<String>', city: '<String>', category: '<String>', status: '<String>', googlePlaceId: '<String>', rating: '<BigFloat>', priceLevel: '<String>', isFavorite: '<Boolean>', notes: '<String>', tags: '<String>', embeddingText: '<String>', mainImageId: '<UUID>', searchTsv: '<FullText>', embedding: '<Vector>', embeddingStale: '<Boolean>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', addressTrgmSimilarity: '<Float>', neighborhoodTrgmSimilarity: '<Float>', cityTrgmSimilarity: '<Float>', categoryTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', googlePlaceIdTrgmSimilarity: '<Float>', priceLevelTrgmSimilarity: '<Float>', notesTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.venue.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.venue.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.goalChunk`

CRUD operations for GoalChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `goalId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all goalChunk records
const items = await db.goalChunk.findMany({ select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, goalId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.goalChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, goalId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.goalChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', goalId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.goalChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.goalChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.goal`

CRUD operations for Goal records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `title` | String | Yes |
| `description` | String | Yes |
| `category` | String | Yes |
| `status` | String | Yes |
| `priority` | Int | Yes |
| `targetDate` | Datetime | Yes |
| `completedAt` | Datetime | Yes |
| `progress` | BigFloat | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `titleTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `categoryTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all goal records
const items = await db.goal.findMany({ select: { id: true, entityId: true, title: true, description: true, category: true, status: true, priority: true, targetDate: true, completedAt: true, progress: true, tags: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, descriptionTrgmSimilarity: true, categoryTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.goal.findOne({ id: '<UUID>', select: { id: true, entityId: true, title: true, description: true, category: true, status: true, priority: true, targetDate: true, completedAt: true, progress: true, tags: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, descriptionTrgmSimilarity: true, categoryTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.goal.create({ data: { entityId: '<UUID>', title: '<String>', description: '<String>', category: '<String>', status: '<String>', priority: '<Int>', targetDate: '<Datetime>', completedAt: '<Datetime>', progress: '<BigFloat>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', categoryTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.goal.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.goal.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.goalHabit`

CRUD operations for GoalHabit records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `goalId` | UUID | Yes |
| `habitId` | UUID | Yes |
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all goalHabit records
const items = await db.goalHabit.findMany({ select: { goalId: true, habitId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.goalHabit.findOne({ id: '<UUID>', select: { goalId: true, habitId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.goalHabit.create({ data: { goalId: '<UUID>', habitId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

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
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `name` | String | Yes |
| `description` | String | Yes |
| `frequency` | String | Yes |
| `targetCount` | Int | Yes |
| `currentStreak` | Int | Yes |
| `bestStreak` | Int | Yes |
| `isActive` | Boolean | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `nameTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `frequencyTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all habit records
const items = await db.habit.findMany({ select: { id: true, entityId: true, name: true, description: true, frequency: true, targetCount: true, currentStreak: true, bestStreak: true, isActive: true, tags: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, frequencyTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.habit.findOne({ id: '<UUID>', select: { id: true, entityId: true, name: true, description: true, frequency: true, targetCount: true, currentStreak: true, bestStreak: true, isActive: true, tags: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, frequencyTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.habit.create({ data: { entityId: '<UUID>', name: '<String>', description: '<String>', frequency: '<String>', targetCount: '<Int>', currentStreak: '<Int>', bestStreak: '<Int>', isActive: '<Boolean>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', frequencyTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.habit.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

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
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all goalProject records
const items = await db.goalProject.findMany({ select: { goalId: true, projectId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.goalProject.findOne({ id: '<UUID>', select: { goalId: true, projectId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.goalProject.create({ data: { goalId: '<UUID>', projectId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.goalProject.update({ where: { id: '<UUID>' }, data: { goalId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.goalProject.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.habitChunk`

CRUD operations for HabitChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `habitId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all habitChunk records
const items = await db.habitChunk.findMany({ select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, habitId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.habitChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, habitId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.habitChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', habitId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.habitChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.habitChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.hikingTrailChunk`

CRUD operations for HikingTrailChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `hikingTrailId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all hikingTrailChunk records
const items = await db.hikingTrailChunk.findMany({ select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, hikingTrailId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.hikingTrailChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, hikingTrailId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.hikingTrailChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', hikingTrailId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.hikingTrailChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.hikingTrailChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.hikingTrail`

CRUD operations for HikingTrail records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `name` | String | Yes |
| `description` | String | Yes |
| `difficulty` | String | Yes |
| `distanceKm` | BigFloat | Yes |
| `elevationGainm` | BigFloat | Yes |
| `estimatedTimeHours` | BigFloat | Yes |
| `trailType` | String | Yes |
| `region` | String | Yes |
| `notes` | String | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `nameTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `difficultyTrgmSimilarity` | Float | Yes |
| `trailTypeTrgmSimilarity` | Float | Yes |
| `regionTrgmSimilarity` | Float | Yes |
| `notesTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all hikingTrail records
const items = await db.hikingTrail.findMany({ select: { id: true, entityId: true, name: true, description: true, difficulty: true, distanceKm: true, elevationGainm: true, estimatedTimeHours: true, trailType: true, region: true, notes: true, tags: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, difficultyTrgmSimilarity: true, trailTypeTrgmSimilarity: true, regionTrgmSimilarity: true, notesTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.hikingTrail.findOne({ id: '<UUID>', select: { id: true, entityId: true, name: true, description: true, difficulty: true, distanceKm: true, elevationGainm: true, estimatedTimeHours: true, trailType: true, region: true, notes: true, tags: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, difficultyTrgmSimilarity: true, trailTypeTrgmSimilarity: true, regionTrgmSimilarity: true, notesTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.hikingTrail.create({ data: { entityId: '<UUID>', name: '<String>', description: '<String>', difficulty: '<String>', distanceKm: '<BigFloat>', elevationGainm: '<BigFloat>', estimatedTimeHours: '<BigFloat>', trailType: '<String>', region: '<String>', notes: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', difficultyTrgmSimilarity: '<Float>', trailTypeTrgmSimilarity: '<Float>', regionTrgmSimilarity: '<Float>', notesTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.hikingTrail.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.hikingTrail.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.trip`

CRUD operations for Trip records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `name` | String | Yes |
| `description` | String | Yes |
| `destination` | String | Yes |
| `startedAt` | Datetime | Yes |
| `endedAt` | Datetime | Yes |
| `status` | String | Yes |
| `budget` | BigFloat | Yes |
| `currency` | String | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `nameTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `destinationTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `currencyTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all trip records
const items = await db.trip.findMany({ select: { id: true, entityId: true, name: true, description: true, destination: true, startedAt: true, endedAt: true, status: true, budget: true, currency: true, tags: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, destinationTrgmSimilarity: true, statusTrgmSimilarity: true, currencyTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.trip.findOne({ id: '<UUID>', select: { id: true, entityId: true, name: true, description: true, destination: true, startedAt: true, endedAt: true, status: true, budget: true, currency: true, tags: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, destinationTrgmSimilarity: true, statusTrgmSimilarity: true, currencyTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.trip.create({ data: { entityId: '<UUID>', name: '<String>', description: '<String>', destination: '<String>', startedAt: '<Datetime>', endedAt: '<Datetime>', status: '<String>', budget: '<BigFloat>', currency: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', destinationTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', currencyTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.trip.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.trip.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.interactionChunk`

CRUD operations for InteractionChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `interactionId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all interactionChunk records
const items = await db.interactionChunk.findMany({ select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, interactionId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.interactionChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, interactionId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.interactionChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', interactionId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.interactionChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.interactionChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.interaction`

CRUD operations for Interaction records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `contactId` | UUID | Yes |
| `type` | String | Yes |
| `occurredAt` | Datetime | Yes |
| `summary` | String | Yes |
| `sentiment` | String | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
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
const items = await db.interaction.findMany({ select: { id: true, entityId: true, contactId: true, type: true, occurredAt: true, summary: true, sentiment: true, tags: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, typeTrgmSimilarity: true, summaryTrgmSimilarity: true, sentimentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.interaction.findOne({ id: '<UUID>', select: { id: true, entityId: true, contactId: true, type: true, occurredAt: true, summary: true, sentiment: true, tags: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, typeTrgmSimilarity: true, summaryTrgmSimilarity: true, sentimentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.interaction.create({ data: { entityId: '<UUID>', contactId: '<UUID>', type: '<String>', occurredAt: '<Datetime>', summary: '<String>', sentiment: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', typeTrgmSimilarity: '<Float>', summaryTrgmSimilarity: '<Float>', sentimentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.interaction.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.interaction.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.itineraryItemChunk`

CRUD operations for ItineraryItemChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `itineraryItemId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all itineraryItemChunk records
const items = await db.itineraryItemChunk.findMany({ select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, itineraryItemId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.itineraryItemChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, itineraryItemId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.itineraryItemChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', itineraryItemId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.itineraryItemChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.itineraryItemChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.itineraryItem`

CRUD operations for ItineraryItem records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `tripId` | UUID | Yes |
| `name` | String | Yes |
| `description` | String | Yes |
| `dayNumber` | Int | Yes |
| `startTime` | Datetime | Yes |
| `endTime` | Datetime | Yes |
| `placeId` | UUID | Yes |
| `category` | String | Yes |
| `cost` | BigFloat | Yes |
| `notes` | String | Yes |
| `sortOrder` | Int | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `nameTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `categoryTrgmSimilarity` | Float | Yes |
| `notesTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all itineraryItem records
const items = await db.itineraryItem.findMany({ select: { id: true, entityId: true, tripId: true, name: true, description: true, dayNumber: true, startTime: true, endTime: true, placeId: true, category: true, cost: true, notes: true, sortOrder: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, categoryTrgmSimilarity: true, notesTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.itineraryItem.findOne({ id: '<UUID>', select: { id: true, entityId: true, tripId: true, name: true, description: true, dayNumber: true, startTime: true, endTime: true, placeId: true, category: true, cost: true, notes: true, sortOrder: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, categoryTrgmSimilarity: true, notesTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.itineraryItem.create({ data: { entityId: '<UUID>', tripId: '<UUID>', name: '<String>', description: '<String>', dayNumber: '<Int>', startTime: '<Datetime>', endTime: '<Datetime>', placeId: '<UUID>', category: '<String>', cost: '<BigFloat>', notes: '<String>', sortOrder: '<Int>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', categoryTrgmSimilarity: '<Float>', notesTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.itineraryItem.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.itineraryItem.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.memoryChunk`

CRUD operations for MemoryChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `memoryId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all memoryChunk records
const items = await db.memoryChunk.findMany({ select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, memoryId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.memoryChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, memoryId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.memoryChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', memoryId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.memoryChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.memoryChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.messageChunk`

CRUD operations for MessageChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `messageId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all messageChunk records
const items = await db.messageChunk.findMany({ select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, messageId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.messageChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, messageId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.messageChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', messageId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.messageChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.messageChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.message`

CRUD operations for Message records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `conversationId` | UUID | Yes |
| `role` | String | Yes |
| `content` | String | Yes |
| `tokenCount` | Int | Yes |
| `meta` | JSON | Yes |
| `toolCalls` | JSON | Yes |
| `toolResults` | JSON | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
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
const items = await db.message.findMany({ select: { id: true, entityId: true, conversationId: true, role: true, content: true, tokenCount: true, meta: true, toolCalls: true, toolResults: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, roleTrgmSimilarity: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.message.findOne({ id: '<UUID>', select: { id: true, entityId: true, conversationId: true, role: true, content: true, tokenCount: true, meta: true, toolCalls: true, toolResults: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, roleTrgmSimilarity: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.message.create({ data: { entityId: '<UUID>', conversationId: '<UUID>', role: '<String>', content: '<String>', tokenCount: '<Int>', meta: '<JSON>', toolCalls: '<JSON>', toolResults: '<JSON>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', roleTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.message.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.message.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.noteChunk`

CRUD operations for NoteChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `noteId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all noteChunk records
const items = await db.noteChunk.findMany({ select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, noteId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.noteChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, noteId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.noteChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', noteId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.noteChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.noteChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.placeChunk`

CRUD operations for PlaceChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `placeId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all placeChunk records
const items = await db.placeChunk.findMany({ select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, placeId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.placeChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, placeId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.placeChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', placeId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.placeChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.placeChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.place`

CRUD operations for Place records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `name` | String | Yes |
| `description` | String | Yes |
| `address` | String | Yes |
| `city` | String | Yes |
| `country` | String | Yes |
| `category` | String | Yes |
| `rating` | BigFloat | Yes |
| `notes` | String | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `nameTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `addressTrgmSimilarity` | Float | Yes |
| `cityTrgmSimilarity` | Float | Yes |
| `countryTrgmSimilarity` | Float | Yes |
| `categoryTrgmSimilarity` | Float | Yes |
| `notesTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all place records
const items = await db.place.findMany({ select: { id: true, entityId: true, name: true, description: true, address: true, city: true, country: true, category: true, rating: true, notes: true, tags: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, addressTrgmSimilarity: true, cityTrgmSimilarity: true, countryTrgmSimilarity: true, categoryTrgmSimilarity: true, notesTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.place.findOne({ id: '<UUID>', select: { id: true, entityId: true, name: true, description: true, address: true, city: true, country: true, category: true, rating: true, notes: true, tags: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, addressTrgmSimilarity: true, cityTrgmSimilarity: true, countryTrgmSimilarity: true, categoryTrgmSimilarity: true, notesTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.place.create({ data: { entityId: '<UUID>', name: '<String>', description: '<String>', address: '<String>', city: '<String>', country: '<String>', category: '<String>', rating: '<BigFloat>', notes: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', addressTrgmSimilarity: '<Float>', cityTrgmSimilarity: '<Float>', countryTrgmSimilarity: '<Float>', categoryTrgmSimilarity: '<Float>', notesTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.place.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.place.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.projectChunk`

CRUD operations for ProjectChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `projectId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all projectChunk records
const items = await db.projectChunk.findMany({ select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, projectId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.projectChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, projectId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.projectChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', projectId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.projectChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.projectChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.projectContact`

CRUD operations for ProjectContact records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `projectId` | UUID | Yes |
| `contactId` | UUID | Yes |
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all projectContact records
const items = await db.projectContact.findMany({ select: { projectId: true, contactId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.projectContact.findOne({ id: '<UUID>', select: { projectId: true, contactId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.projectContact.create({ data: { projectId: '<UUID>', contactId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.projectContact.update({ where: { id: '<UUID>' }, data: { projectId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.projectContact.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.ruleChunk`

CRUD operations for RuleChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `ruleId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all ruleChunk records
const items = await db.ruleChunk.findMany({ select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, ruleId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.ruleChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, ruleId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.ruleChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', ruleId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.ruleChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.ruleChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.rule`

CRUD operations for Rule records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `name` | String | Yes |
| `description` | String | Yes |
| `triggerType` | String | Yes |
| `triggerConfig` | JSON | Yes |
| `actionType` | String | Yes |
| `actionConfig` | JSON | Yes |
| `isActive` | Boolean | Yes |
| `priority` | Int | Yes |
| `triggerConcept` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
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
const items = await db.rule.findMany({ select: { id: true, entityId: true, name: true, description: true, triggerType: true, triggerConfig: true, actionType: true, actionConfig: true, isActive: true, priority: true, triggerConcept: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, triggerConceptEmbedding: true, agentId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, triggerConceptEmbeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, triggerTypeTrgmSimilarity: true, actionTypeTrgmSimilarity: true, triggerConceptTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.rule.findOne({ id: '<UUID>', select: { id: true, entityId: true, name: true, description: true, triggerType: true, triggerConfig: true, actionType: true, actionConfig: true, isActive: true, priority: true, triggerConcept: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, triggerConceptEmbedding: true, agentId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, triggerConceptEmbeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, triggerTypeTrgmSimilarity: true, actionTypeTrgmSimilarity: true, triggerConceptTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.rule.create({ data: { entityId: '<UUID>', name: '<String>', description: '<String>', triggerType: '<String>', triggerConfig: '<JSON>', actionType: '<String>', actionConfig: '<JSON>', isActive: '<Boolean>', priority: '<Int>', triggerConcept: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', triggerConceptEmbedding: '<Vector>', agentId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', triggerConceptEmbeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', triggerTypeTrgmSimilarity: '<Float>', actionTypeTrgmSimilarity: '<Float>', triggerConceptTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.rule.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.rule.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.runtimeArtifact`

CRUD operations for RuntimeArtifact records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `runtimeStateId` | UUID | Yes |
| `name` | String | Yes |
| `artifactType` | String | Yes |
| `content` | String | Yes |
| `meta` | JSON | Yes |
| `sizeBytes` | Int | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |

**Operations:**

```typescript
// List all runtimeArtifact records
const items = await db.runtimeArtifact.findMany({ select: { id: true, entityId: true, runtimeStateId: true, name: true, artifactType: true, content: true, meta: true, sizeBytes: true, createdAt: true, updatedAt: true } }).execute();

// Get one by id
const item = await db.runtimeArtifact.findOne({ id: '<UUID>', select: { id: true, entityId: true, runtimeStateId: true, name: true, artifactType: true, content: true, meta: true, sizeBytes: true, createdAt: true, updatedAt: true } }).execute();

// Create
const created = await db.runtimeArtifact.create({ data: { entityId: '<UUID>', runtimeStateId: '<UUID>', name: '<String>', artifactType: '<String>', content: '<String>', meta: '<JSON>', sizeBytes: '<Int>' }, select: { id: true } }).execute();

// Update
const updated = await db.runtimeArtifact.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.runtimeArtifact.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.runtimeConfig`

CRUD operations for RuntimeConfig records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `key` | String | Yes |
| `value` | JSON | Yes |
| `description` | String | Yes |
| `isSecret` | Boolean | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |

**Operations:**

```typescript
// List all runtimeConfig records
const items = await db.runtimeConfig.findMany({ select: { id: true, entityId: true, key: true, value: true, description: true, isSecret: true, createdAt: true, updatedAt: true } }).execute();

// Get one by id
const item = await db.runtimeConfig.findOne({ id: '<UUID>', select: { id: true, entityId: true, key: true, value: true, description: true, isSecret: true, createdAt: true, updatedAt: true } }).execute();

// Create
const created = await db.runtimeConfig.create({ data: { entityId: '<UUID>', key: '<String>', value: '<JSON>', description: '<String>', isSecret: '<Boolean>' }, select: { id: true } }).execute();

// Update
const updated = await db.runtimeConfig.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.runtimeConfig.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.runtimeEvent`

CRUD operations for RuntimeEvent records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `eventType` | String | Yes |
| `payload` | JSON | Yes |
| `source` | String | Yes |
| `processedAt` | Datetime | Yes |
| `status` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |

**Operations:**

```typescript
// List all runtimeEvent records
const items = await db.runtimeEvent.findMany({ select: { id: true, entityId: true, eventType: true, payload: true, source: true, processedAt: true, status: true, createdAt: true, updatedAt: true } }).execute();

// Get one by id
const item = await db.runtimeEvent.findOne({ id: '<UUID>', select: { id: true, entityId: true, eventType: true, payload: true, source: true, processedAt: true, status: true, createdAt: true, updatedAt: true } }).execute();

// Create
const created = await db.runtimeEvent.create({ data: { entityId: '<UUID>', eventType: '<String>', payload: '<JSON>', source: '<String>', processedAt: '<Datetime>', status: '<String>' }, select: { id: true } }).execute();

// Update
const updated = await db.runtimeEvent.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.runtimeEvent.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.runtimeLogChunk`

CRUD operations for RuntimeLogChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `runtimeLogId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all runtimeLogChunk records
const items = await db.runtimeLogChunk.findMany({ select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, runtimeLogId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.runtimeLogChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, runtimeLogId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.runtimeLogChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', runtimeLogId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.runtimeLogChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.runtimeLogChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.runtimeLog`

CRUD operations for RuntimeLog records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `runtimeStateId` | UUID | Yes |
| `level` | String | Yes |
| `message` | String | Yes |
| `context` | JSON | Yes |
| `stepIndex` | Int | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
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
const items = await db.runtimeLog.findMany({ select: { id: true, entityId: true, runtimeStateId: true, level: true, message: true, context: true, stepIndex: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, levelTrgmSimilarity: true, messageTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.runtimeLog.findOne({ id: '<UUID>', select: { id: true, entityId: true, runtimeStateId: true, level: true, message: true, context: true, stepIndex: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, levelTrgmSimilarity: true, messageTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.runtimeLog.create({ data: { entityId: '<UUID>', runtimeStateId: '<UUID>', level: '<String>', message: '<String>', context: '<JSON>', stepIndex: '<Int>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', levelTrgmSimilarity: '<Float>', messageTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.runtimeLog.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.runtimeLog.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.runtimeMetric`

CRUD operations for RuntimeMetric records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `runtimeStateId` | UUID | Yes |
| `metricName` | String | Yes |
| `metricValue` | BigFloat | Yes |
| `unit` | String | Yes |
| `meta` | JSON | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |

**Operations:**

```typescript
// List all runtimeMetric records
const items = await db.runtimeMetric.findMany({ select: { id: true, entityId: true, runtimeStateId: true, metricName: true, metricValue: true, unit: true, meta: true, createdAt: true, updatedAt: true } }).execute();

// Get one by id
const item = await db.runtimeMetric.findOne({ id: '<UUID>', select: { id: true, entityId: true, runtimeStateId: true, metricName: true, metricValue: true, unit: true, meta: true, createdAt: true, updatedAt: true } }).execute();

// Create
const created = await db.runtimeMetric.create({ data: { entityId: '<UUID>', runtimeStateId: '<UUID>', metricName: '<String>', metricValue: '<BigFloat>', unit: '<String>', meta: '<JSON>' }, select: { id: true } }).execute();

// Update
const updated = await db.runtimeMetric.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.runtimeMetric.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.runtimeSchedule`

CRUD operations for RuntimeSchedule records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `name` | String | Yes |
| `cronExpression` | String | Yes |
| `nextRunAt` | Datetime | Yes |
| `lastRunAt` | Datetime | Yes |
| `isActive` | Boolean | Yes |
| `config` | JSON | Yes |
| `timezone` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |

**Operations:**

```typescript
// List all runtimeSchedule records
const items = await db.runtimeSchedule.findMany({ select: { id: true, entityId: true, name: true, cronExpression: true, nextRunAt: true, lastRunAt: true, isActive: true, config: true, timezone: true, createdAt: true, updatedAt: true } }).execute();

// Get one by id
const item = await db.runtimeSchedule.findOne({ id: '<UUID>', select: { id: true, entityId: true, name: true, cronExpression: true, nextRunAt: true, lastRunAt: true, isActive: true, config: true, timezone: true, createdAt: true, updatedAt: true } }).execute();

// Create
const created = await db.runtimeSchedule.create({ data: { entityId: '<UUID>', name: '<String>', cronExpression: '<String>', nextRunAt: '<Datetime>', lastRunAt: '<Datetime>', isActive: '<Boolean>', config: '<JSON>', timezone: '<String>' }, select: { id: true } }).execute();

// Update
const updated = await db.runtimeSchedule.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.runtimeSchedule.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.runtimeStateChunk`

CRUD operations for RuntimeStateChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `runtimeStateId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all runtimeStateChunk records
const items = await db.runtimeStateChunk.findMany({ select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, runtimeStateId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.runtimeStateChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, runtimeStateId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.runtimeStateChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', runtimeStateId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.runtimeStateChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.runtimeStateChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.runtimeState`

CRUD operations for RuntimeState records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `name` | String | Yes |
| `stateType` | String | Yes |
| `status` | String | Yes |
| `data` | JSON | Yes |
| `parentId` | UUID | Yes |
| `startedAt` | Datetime | Yes |
| `endedAt` | Datetime | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
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
const items = await db.runtimeState.findMany({ select: { id: true, entityId: true, name: true, stateType: true, status: true, data: true, parentId: true, startedAt: true, endedAt: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, stateTypeTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.runtimeState.findOne({ id: '<UUID>', select: { id: true, entityId: true, name: true, stateType: true, status: true, data: true, parentId: true, startedAt: true, endedAt: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, stateTypeTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.runtimeState.create({ data: { entityId: '<UUID>', name: '<String>', stateType: '<String>', status: '<String>', data: '<JSON>', parentId: '<UUID>', startedAt: '<Datetime>', endedAt: '<Datetime>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', stateTypeTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.runtimeState.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.runtimeState.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.runtimeStateDependency`

CRUD operations for RuntimeStateDependency records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `runtimeStateId` | UUID | Yes |
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all runtimeStateDependency records
const items = await db.runtimeStateDependency.findMany({ select: { runtimeStateId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.runtimeStateDependency.findOne({ id: '<UUID>', select: { runtimeStateId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.runtimeStateDependency.create({ data: { runtimeStateId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.runtimeStateDependency.update({ where: { id: '<UUID>' }, data: { runtimeStateId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.runtimeStateDependency.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.skillChunk`

CRUD operations for SkillChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `skillId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all skillChunk records
const items = await db.skillChunk.findMany({ select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, skillId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.skillChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, skillId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.skillChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', skillId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.skillChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.skillChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.skill`

CRUD operations for Skill records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `name` | String | Yes |
| `description` | String | Yes |
| `category` | String | Yes |
| `implementation` | String | Yes |
| `config` | JSON | Yes |
| `isActive` | Boolean | Yes |
| `intentTrigger` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
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
const items = await db.skill.findMany({ select: { id: true, entityId: true, name: true, description: true, category: true, implementation: true, config: true, isActive: true, intentTrigger: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, intentTriggerEmbedding: true, agentId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, intentTriggerEmbeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, categoryTrgmSimilarity: true, implementationTrgmSimilarity: true, intentTriggerTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.skill.findOne({ id: '<UUID>', select: { id: true, entityId: true, name: true, description: true, category: true, implementation: true, config: true, isActive: true, intentTrigger: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, intentTriggerEmbedding: true, agentId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, intentTriggerEmbeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, categoryTrgmSimilarity: true, implementationTrgmSimilarity: true, intentTriggerTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.skill.create({ data: { entityId: '<UUID>', name: '<String>', description: '<String>', category: '<String>', implementation: '<String>', config: '<JSON>', isActive: '<Boolean>', intentTrigger: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', intentTriggerEmbedding: '<Vector>', agentId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', intentTriggerEmbeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', categoryTrgmSimilarity: '<Float>', implementationTrgmSimilarity: '<Float>', intentTriggerTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.skill.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.skill.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.tag`

CRUD operations for Tag records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `name` | String | Yes |
| `color` | String | Yes |
| `category` | String | Yes |
| `usageCount` | Int | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |

**Operations:**

```typescript
// List all tag records
const items = await db.tag.findMany({ select: { id: true, entityId: true, name: true, color: true, category: true, usageCount: true, createdAt: true, updatedAt: true } }).execute();

// Get one by id
const item = await db.tag.findOne({ id: '<UUID>', select: { id: true, entityId: true, name: true, color: true, category: true, usageCount: true, createdAt: true, updatedAt: true } }).execute();

// Create
const created = await db.tag.create({ data: { entityId: '<UUID>', name: '<String>', color: '<String>', category: '<String>', usageCount: '<Int>' }, select: { id: true } }).execute();

// Update
const updated = await db.tag.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.tag.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.toolDefinition`

CRUD operations for ToolDefinition records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `name` | String | Yes |
| `description` | String | Yes |
| `inputSchema` | JSON | Yes |
| `outputSchema` | JSON | Yes |
| `implementation` | String | Yes |
| `isActive` | Boolean | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |

**Operations:**

```typescript
// List all toolDefinition records
const items = await db.toolDefinition.findMany({ select: { id: true, entityId: true, name: true, description: true, inputSchema: true, outputSchema: true, implementation: true, isActive: true, createdAt: true, updatedAt: true } }).execute();

// Get one by id
const item = await db.toolDefinition.findOne({ id: '<UUID>', select: { id: true, entityId: true, name: true, description: true, inputSchema: true, outputSchema: true, implementation: true, isActive: true, createdAt: true, updatedAt: true } }).execute();

// Create
const created = await db.toolDefinition.create({ data: { entityId: '<UUID>', name: '<String>', description: '<String>', inputSchema: '<JSON>', outputSchema: '<JSON>', implementation: '<String>', isActive: '<Boolean>' }, select: { id: true } }).execute();

// Update
const updated = await db.toolDefinition.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.toolDefinition.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.toolExecution`

CRUD operations for ToolExecution records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `toolDefinitionId` | UUID | Yes |
| `messageId` | UUID | Yes |
| `input` | JSON | Yes |
| `output` | JSON | Yes |
| `status` | String | Yes |
| `startedAt` | Datetime | Yes |
| `completedAt` | Datetime | Yes |
| `error` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |

**Operations:**

```typescript
// List all toolExecution records
const items = await db.toolExecution.findMany({ select: { id: true, entityId: true, toolDefinitionId: true, messageId: true, input: true, output: true, status: true, startedAt: true, completedAt: true, error: true, createdAt: true, updatedAt: true } }).execute();

// Get one by id
const item = await db.toolExecution.findOne({ id: '<UUID>', select: { id: true, entityId: true, toolDefinitionId: true, messageId: true, input: true, output: true, status: true, startedAt: true, completedAt: true, error: true, createdAt: true, updatedAt: true } }).execute();

// Create
const created = await db.toolExecution.create({ data: { entityId: '<UUID>', toolDefinitionId: '<UUID>', messageId: '<UUID>', input: '<JSON>', output: '<JSON>', status: '<String>', startedAt: '<Datetime>', completedAt: '<Datetime>', error: '<String>' }, select: { id: true } }).execute();

// Update
const updated = await db.toolExecution.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.toolExecution.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.tripChunk`

CRUD operations for TripChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `tripId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all tripChunk records
const items = await db.tripChunk.findMany({ select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, tripId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.tripChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, tripId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.tripChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', tripId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.tripChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.tripChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.tripHikingTrail`

CRUD operations for TripHikingTrail records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `tripId` | UUID | Yes |
| `hikingTrailId` | UUID | Yes |
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all tripHikingTrail records
const items = await db.tripHikingTrail.findMany({ select: { tripId: true, hikingTrailId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.tripHikingTrail.findOne({ id: '<UUID>', select: { tripId: true, hikingTrailId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.tripHikingTrail.create({ data: { tripId: '<UUID>', hikingTrailId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.tripHikingTrail.update({ where: { id: '<UUID>' }, data: { tripId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.tripHikingTrail.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.tripPlace`

CRUD operations for TripPlace records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `tripId` | UUID | Yes |
| `placeId` | UUID | Yes |
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all tripPlace records
const items = await db.tripPlace.findMany({ select: { tripId: true, placeId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.tripPlace.findOne({ id: '<UUID>', select: { tripId: true, placeId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.tripPlace.create({ data: { tripId: '<UUID>', placeId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.tripPlace.update({ where: { id: '<UUID>' }, data: { tripId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.tripPlace.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.venueChunk`

CRUD operations for VenueChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `embedding` | Vector | Yes |
| `embeddingStale` | Boolean | Yes |
| `venueId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all venueChunk records
const items = await db.venueChunk.findMany({ select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, venueId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.venueChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, chunkIndex: true, content: true, embeddingText: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, venueId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.venueChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', venueId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.venueChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.venueChunk.delete({ where: { id: '<UUID>' } }).execute();
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
const item = await db.venueImage.findOne({ id: '<UUID>', select: { venueId: true, imageId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.venueImage.create({ data: { venueId: '<UUID>', imageId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

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
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `title` | String | Yes |
| `url` | String | Yes |
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
const items = await db.venueLink.findMany({ select: { id: true, entityId: true, title: true, url: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, venueId: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.venueLink.findOne({ id: '<UUID>', select: { id: true, entityId: true, title: true, url: true, createdAt: true, updatedAt: true, embedding: true, embeddingStale: true, venueId: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.venueLink.create({ data: { entityId: '<UUID>', title: '<String>', url: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', venueId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.venueLink.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.venueLink.delete({ where: { id: '<UUID>' } }).execute();
```

---

Built by the [Constructive](https://constructive.io) team.

## Disclaimer

AS DESCRIBED IN THE LICENSES, THE SOFTWARE IS PROVIDED "AS IS", AT YOUR OWN RISK, AND WITHOUT WARRANTIES OF ANY KIND.

No developer or entity involved in creating this software will be liable for any claims or damages whatsoever associated with your use, inability to use, or your interaction with other users of the code, including any direct, indirect, incidental, special, exemplary, punitive or consequential damages, or loss of profits, cryptocurrencies, tokens, or anything else of value.
