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
| `activityLogChunk` | findMany, findOne, create, update, delete |
| `activityLog` | findMany, findOne, create, update, delete |
| `agentChunk` | findMany, findOne, create, update, delete |
| `agent` | findMany, findOne, create, update, delete |
| `agentPrompt` | findMany, findOne, create, update, delete |
| `prompt` | findMany, findOne, create, update, delete |
| `agentRule` | findMany, findOne, create, update, delete |
| `rule` | findMany, findOne, create, update, delete |
| `agentSkill` | findMany, findOne, create, update, delete |
| `skill` | findMany, findOne, create, update, delete |
| `agentSpawn` | findMany, findOne, create, update, delete |
| `agentTool` | findMany, findOne, create, update, delete |
| `tool` | findMany, findOne, create, update, delete |
| `billingSubscription` | findMany, findOne, create, update, delete |
| `blueprintChunk` | findMany, findOne, create, update, delete |
| `blueprint` | findMany, findOne, create, update, delete |
| `calendarAccount` | findMany, findOne, create, update, delete |
| `calendarEventChunk` | findMany, findOne, create, update, delete |
| `calendarEvent` | findMany, findOne, create, update, delete |
| `calendarEventContact` | findMany, findOne, create, update, delete |
| `contact` | findMany, findOne, create, update, delete |
| `chatChunk` | findMany, findOne, create, update, delete |
| `chat` | findMany, findOne, create, update, delete |
| `chatMessageChunk` | findMany, findOne, create, update, delete |
| `chatMessage` | findMany, findOne, create, update, delete |
| `chunk` | findMany, findOne, create, update, delete |
| `companyChunk` | findMany, findOne, create, update, delete |
| `company` | findMany, findOne, create, update, delete |
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
| `expense` | findMany, findOne, create, update, delete |
| `contactImage` | findMany, findOne, create, update, delete |
| `contactLink` | findMany, findOne, create, update, delete |
| `contactMemory` | findMany, findOne, create, update, delete |
| `contactNote` | findMany, findOne, create, update, delete |
| `project` | findMany, findOne, create, update, delete |
| `task` | findMany, findOne, create, update, delete |
| `dealChunk` | findMany, findOne, create, update, delete |
| `dealContact` | findMany, findOne, create, update, delete |
| `dealNote` | findMany, findOne, create, update, delete |
| `documentChunk` | findMany, findOne, create, update, delete |
| `document` | findMany, findOne, create, update, delete |
| `emailAccount` | findMany, findOne, create, update, delete |
| `eventChunk` | findMany, findOne, create, update, delete |
| `eventImage` | findMany, findOne, create, update, delete |
| `eventLink` | findMany, findOne, create, update, delete |
| `eventNote` | findMany, findOne, create, update, delete |
| `eventVenue` | findMany, findOne, create, update, delete |
| `venue` | findMany, findOne, create, update, delete |
| `executionLog` | findMany, findOne, create, update, delete |
| `expenseContact` | findMany, findOne, create, update, delete |
| `file` | findMany, findOne, create, update, delete |
| `goalChunk` | findMany, findOne, create, update, delete |
| `goal` | findMany, findOne, create, update, delete |
| `goalHabit` | findMany, findOne, create, update, delete |
| `habit` | findMany, findOne, create, update, delete |
| `goalProject` | findMany, findOne, create, update, delete |
| `habitLog` | findMany, findOne, create, update, delete |
| `ideaChunk` | findMany, findOne, create, update, delete |
| `idea` | findMany, findOne, create, update, delete |
| `integration` | findMany, findOne, create, update, delete |
| `interactionChunk` | findMany, findOne, create, update, delete |
| `interaction` | findMany, findOne, create, update, delete |
| `listChunk` | findMany, findOne, create, update, delete |
| `list` | findMany, findOne, create, update, delete |
| `memoryChunk` | findMany, findOne, create, update, delete |
| `messageChunk` | findMany, findOne, create, update, delete |
| `message` | findMany, findOne, create, update, delete |
| `milestone` | findMany, findOne, create, update, delete |
| `noteChunk` | findMany, findOne, create, update, delete |
| `process` | findMany, findOne, create, update, delete |
| `projectChunk` | findMany, findOne, create, update, delete |
| `projectContact` | findMany, findOne, create, update, delete |
| `promptChunk` | findMany, findOne, create, update, delete |
| `recipeChunk` | findMany, findOne, create, update, delete |
| `recipe` | findMany, findOne, create, update, delete |
| `reminderChunk` | findMany, findOne, create, update, delete |
| `reminder` | findMany, findOne, create, update, delete |
| `repositoryChunk` | findMany, findOne, create, update, delete |
| `repository` | findMany, findOne, create, update, delete |
| `ruleChunk` | findMany, findOne, create, update, delete |
| `scheduledJob` | findMany, findOne, create, update, delete |
| `sessionArchiveChunk` | findMany, findOne, create, update, delete |
| `sessionArchive` | findMany, findOne, create, update, delete |
| `sessionChunk` | findMany, findOne, create, update, delete |
| `session` | findMany, findOne, create, update, delete |
| `skillChunk` | findMany, findOne, create, update, delete |
| `skillExecution` | findMany, findOne, create, update, delete |
| `tag` | findMany, findOne, create, update, delete |
| `taskChunk` | findMany, findOne, create, update, delete |
| `taskContact` | findMany, findOne, create, update, delete |
| `taskNote` | findMany, findOne, create, update, delete |
| `templateChunk` | findMany, findOne, create, update, delete |
| `template` | findMany, findOne, create, update, delete |
| `threadChunk` | findMany, findOne, create, update, delete |
| `thread` | findMany, findOne, create, update, delete |
| `toolChunk` | findMany, findOne, create, update, delete |
| `tripChunk` | findMany, findOne, create, update, delete |
| `trip` | findMany, findOne, create, update, delete |
| `userSetting` | findMany, findOne, create, update, delete |
| `venueChunk` | findMany, findOne, create, update, delete |
| `venueImage` | findMany, findOne, create, update, delete |
| `venueLink` | findMany, findOne, create, update, delete |
| `webhook` | findMany, findOne, create, update, delete |
| `workflow` | findMany, findOne, create, update, delete |
| `workflowRun` | findMany, findOne, create, update, delete |
| `workflowStep` | findMany, findOne, create, update, delete |

## Table Operations

### `db.activityLogChunk`

CRUD operations for ActivityLogChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `activityLogId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all activityLogChunk records
const items = await db.activityLogChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, activityLogId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.activityLogChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, activityLogId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.activityLogChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', activityLogId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.activityLogChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.activityLogChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.activityLog`

CRUD operations for ActivityLog records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `activityType` | String | Yes |
| `title` | String | Yes |
| `description` | String | Yes |
| `occurredAt` | Datetime | Yes |
| `durationMinutes` | BigFloat | Yes |
| `data` | JSON | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `descriptionBm25Score` | Float | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `activityTypeTrgmSimilarity` | Float | Yes |
| `titleTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all activityLog records
const items = await db.activityLog.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, activityType: true, title: true, description: true, occurredAt: true, durationMinutes: true, data: true, tags: true, embeddingText: true, embedding: true, descriptionBm25Score: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, activityTypeTrgmSimilarity: true, titleTrgmSimilarity: true, descriptionTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.activityLog.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, activityType: true, title: true, description: true, occurredAt: true, durationMinutes: true, data: true, tags: true, embeddingText: true, embedding: true, descriptionBm25Score: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, activityTypeTrgmSimilarity: true, titleTrgmSimilarity: true, descriptionTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.activityLog.create({ data: { entityId: '<UUID>', activityType: '<String>', title: '<String>', description: '<String>', occurredAt: '<Datetime>', durationMinutes: '<BigFloat>', data: '<JSON>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', descriptionBm25Score: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', activityTypeTrgmSimilarity: '<Float>', titleTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.activityLog.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.activityLog.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.agentChunk`

CRUD operations for AgentChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `agentId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all agentChunk records
const items = await db.agentChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, agentId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.agentChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, agentId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.agentChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', agentId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.agentChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.agentChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.agent`

CRUD operations for Agent records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `name` | String | Yes |
| `role` | String | Yes |
| `capabilities` | JSON | Yes |
| `config` | JSON | Yes |
| `status` | String | Yes |
| `persona` | String | Yes |
| `backstory` | String | Yes |
| `communicationStyle` | String | Yes |
| `systemPrompt` | String | Yes |
| `preferredModel` | String | Yes |
| `fallbackModels` | String | Yes |
| `temperature` | BigFloat | Yes |
| `mood` | String | Yes |
| `focus` | String | Yes |
| `lastActiveAt` | Datetime | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `nameTrgmSimilarity` | Float | Yes |
| `roleTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `personaTrgmSimilarity` | Float | Yes |
| `backstoryTrgmSimilarity` | Float | Yes |
| `communicationStyleTrgmSimilarity` | Float | Yes |
| `systemPromptTrgmSimilarity` | Float | Yes |
| `preferredModelTrgmSimilarity` | Float | Yes |
| `moodTrgmSimilarity` | Float | Yes |
| `focusTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all agent records
const items = await db.agent.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, role: true, capabilities: true, config: true, status: true, persona: true, backstory: true, communicationStyle: true, systemPrompt: true, preferredModel: true, fallbackModels: true, temperature: true, mood: true, focus: true, lastActiveAt: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, roleTrgmSimilarity: true, statusTrgmSimilarity: true, personaTrgmSimilarity: true, backstoryTrgmSimilarity: true, communicationStyleTrgmSimilarity: true, systemPromptTrgmSimilarity: true, preferredModelTrgmSimilarity: true, moodTrgmSimilarity: true, focusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.agent.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, role: true, capabilities: true, config: true, status: true, persona: true, backstory: true, communicationStyle: true, systemPrompt: true, preferredModel: true, fallbackModels: true, temperature: true, mood: true, focus: true, lastActiveAt: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, roleTrgmSimilarity: true, statusTrgmSimilarity: true, personaTrgmSimilarity: true, backstoryTrgmSimilarity: true, communicationStyleTrgmSimilarity: true, systemPromptTrgmSimilarity: true, preferredModelTrgmSimilarity: true, moodTrgmSimilarity: true, focusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.agent.create({ data: { entityId: '<UUID>', name: '<String>', role: '<String>', capabilities: '<JSON>', config: '<JSON>', status: '<String>', persona: '<String>', backstory: '<String>', communicationStyle: '<String>', systemPrompt: '<String>', preferredModel: '<String>', fallbackModels: '<String>', temperature: '<BigFloat>', mood: '<String>', focus: '<String>', lastActiveAt: '<Datetime>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', roleTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', personaTrgmSimilarity: '<Float>', backstoryTrgmSimilarity: '<Float>', communicationStyleTrgmSimilarity: '<Float>', systemPromptTrgmSimilarity: '<Float>', preferredModelTrgmSimilarity: '<Float>', moodTrgmSimilarity: '<Float>', focusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.agent.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.agent.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.agentPrompt`

CRUD operations for AgentPrompt records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `agentId` | UUID | Yes |
| `promptId` | UUID | Yes |
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all agentPrompt records
const items = await db.agentPrompt.findMany({ select: { agentId: true, promptId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.agentPrompt.findOne({ id: '<UUID>', select: { agentId: true, promptId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.agentPrompt.create({ data: { agentId: '<UUID>', promptId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

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
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `name` | String | Yes |
| `content` | String | Yes |
| `type` | String | Yes |
| `model` | String | Yes |
| `version` | Int | Yes |
| `isActive` | Boolean | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `contentBm25Score` | Float | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `nameTrgmSimilarity` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `typeTrgmSimilarity` | Float | Yes |
| `modelTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all prompt records
const items = await db.prompt.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, content: true, type: true, model: true, version: true, isActive: true, tags: true, embeddingText: true, embedding: true, contentBm25Score: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, contentTrgmSimilarity: true, typeTrgmSimilarity: true, modelTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.prompt.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, content: true, type: true, model: true, version: true, isActive: true, tags: true, embeddingText: true, embedding: true, contentBm25Score: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, contentTrgmSimilarity: true, typeTrgmSimilarity: true, modelTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.prompt.create({ data: { entityId: '<UUID>', name: '<String>', content: '<String>', type: '<String>', model: '<String>', version: '<Int>', isActive: '<Boolean>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', contentBm25Score: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', typeTrgmSimilarity: '<Float>', modelTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.prompt.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.prompt.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.agentRule`

CRUD operations for AgentRule records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `agentId` | UUID | Yes |
| `ruleId` | UUID | Yes |
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all agentRule records
const items = await db.agentRule.findMany({ select: { agentId: true, ruleId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.agentRule.findOne({ id: '<UUID>', select: { agentId: true, ruleId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.agentRule.create({ data: { agentId: '<UUID>', ruleId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.agentRule.update({ where: { id: '<UUID>' }, data: { agentId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.agentRule.delete({ where: { id: '<UUID>' } }).execute();
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
| `severity` | String | Yes |
| `isActive` | Boolean | Yes |
| `slug` | String | Yes |
| `verification` | String | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `triggerConcept` | Vector | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `triggerConceptVectorDistance` | Float | Yes |
| `titleTrgmSimilarity` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `kindTrgmSimilarity` | Float | Yes |
| `severityTrgmSimilarity` | Float | Yes |
| `slugTrgmSimilarity` | Float | Yes |
| `verificationTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all rule records
const items = await db.rule.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, content: true, kind: true, severity: true, isActive: true, slug: true, verification: true, tags: true, embeddingText: true, embedding: true, triggerConcept: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, triggerConceptVectorDistance: true, titleTrgmSimilarity: true, contentTrgmSimilarity: true, kindTrgmSimilarity: true, severityTrgmSimilarity: true, slugTrgmSimilarity: true, verificationTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.rule.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, content: true, kind: true, severity: true, isActive: true, slug: true, verification: true, tags: true, embeddingText: true, embedding: true, triggerConcept: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, triggerConceptVectorDistance: true, titleTrgmSimilarity: true, contentTrgmSimilarity: true, kindTrgmSimilarity: true, severityTrgmSimilarity: true, slugTrgmSimilarity: true, verificationTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.rule.create({ data: { entityId: '<UUID>', title: '<String>', content: '<String>', kind: '<String>', severity: '<String>', isActive: '<Boolean>', slug: '<String>', verification: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', triggerConcept: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', triggerConceptVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', kindTrgmSimilarity: '<Float>', severityTrgmSimilarity: '<Float>', slugTrgmSimilarity: '<Float>', verificationTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.rule.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.rule.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.agentSkill`

CRUD operations for AgentSkill records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `agentId` | UUID | Yes |
| `skillId` | UUID | Yes |
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all agentSkill records
const items = await db.agentSkill.findMany({ select: { agentId: true, skillId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.agentSkill.findOne({ id: '<UUID>', select: { agentId: true, skillId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.agentSkill.create({ data: { agentId: '<UUID>', skillId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.agentSkill.update({ where: { id: '<UUID>' }, data: { agentId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.agentSkill.delete({ where: { id: '<UUID>' } }).execute();
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
| `slug` | String | Yes |
| `description` | String | Yes |
| `content` | String | Yes |
| `procedure` | String | Yes |
| `interface` | JSON | Yes |
| `requirements` | JSON | Yes |
| `prerequisites` | JSON | Yes |
| `alwaysLoad` | Boolean | Yes |
| `filePath` | String | Yes |
| `contentHash` | String | Yes |
| `category` | String | Yes |
| `isActive` | Boolean | Yes |
| `abstract` | String | Yes |
| `overview` | String | Yes |
| `activeCount` | Int | Yes |
| `lastAccessedAt` | Datetime | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `intentTrigger` | Vector | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `intentTriggerVectorDistance` | Float | Yes |
| `nameTrgmSimilarity` | Float | Yes |
| `slugTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `procedureTrgmSimilarity` | Float | Yes |
| `filePathTrgmSimilarity` | Float | Yes |
| `contentHashTrgmSimilarity` | Float | Yes |
| `categoryTrgmSimilarity` | Float | Yes |
| `abstractTrgmSimilarity` | Float | Yes |
| `overviewTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all skill records
const items = await db.skill.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, slug: true, description: true, content: true, procedure: true, interface: true, requirements: true, prerequisites: true, alwaysLoad: true, filePath: true, contentHash: true, category: true, isActive: true, abstract: true, overview: true, activeCount: true, lastAccessedAt: true, tags: true, embeddingText: true, embedding: true, intentTrigger: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, intentTriggerVectorDistance: true, nameTrgmSimilarity: true, slugTrgmSimilarity: true, descriptionTrgmSimilarity: true, contentTrgmSimilarity: true, procedureTrgmSimilarity: true, filePathTrgmSimilarity: true, contentHashTrgmSimilarity: true, categoryTrgmSimilarity: true, abstractTrgmSimilarity: true, overviewTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.skill.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, slug: true, description: true, content: true, procedure: true, interface: true, requirements: true, prerequisites: true, alwaysLoad: true, filePath: true, contentHash: true, category: true, isActive: true, abstract: true, overview: true, activeCount: true, lastAccessedAt: true, tags: true, embeddingText: true, embedding: true, intentTrigger: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, intentTriggerVectorDistance: true, nameTrgmSimilarity: true, slugTrgmSimilarity: true, descriptionTrgmSimilarity: true, contentTrgmSimilarity: true, procedureTrgmSimilarity: true, filePathTrgmSimilarity: true, contentHashTrgmSimilarity: true, categoryTrgmSimilarity: true, abstractTrgmSimilarity: true, overviewTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.skill.create({ data: { entityId: '<UUID>', name: '<String>', slug: '<String>', description: '<String>', content: '<String>', procedure: '<String>', interface: '<JSON>', requirements: '<JSON>', prerequisites: '<JSON>', alwaysLoad: '<Boolean>', filePath: '<String>', contentHash: '<String>', category: '<String>', isActive: '<Boolean>', abstract: '<String>', overview: '<String>', activeCount: '<Int>', lastAccessedAt: '<Datetime>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', intentTrigger: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', intentTriggerVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', slugTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', procedureTrgmSimilarity: '<Float>', filePathTrgmSimilarity: '<Float>', contentHashTrgmSimilarity: '<Float>', categoryTrgmSimilarity: '<Float>', abstractTrgmSimilarity: '<Float>', overviewTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.skill.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.skill.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.agentSpawn`

CRUD operations for AgentSpawn records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `parentAgentId` | UUID | Yes |
| `childAgentId` | UUID | Yes |
| `sessionId` | UUID | Yes |
| `task` | String | Yes |
| `status` | String | Yes |
| `result` | JSON | Yes |
| `maxIterations` | Int | Yes |
| `startedAt` | Datetime | Yes |
| `completedAt` | Datetime | Yes |
| `agentId` | UUID | Yes |

**Operations:**

```typescript
// List all agentSpawn records
const items = await db.agentSpawn.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, parentAgentId: true, childAgentId: true, sessionId: true, task: true, status: true, result: true, maxIterations: true, startedAt: true, completedAt: true, agentId: true } }).execute();

// Get one by id
const item = await db.agentSpawn.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, parentAgentId: true, childAgentId: true, sessionId: true, task: true, status: true, result: true, maxIterations: true, startedAt: true, completedAt: true, agentId: true } }).execute();

// Create
const created = await db.agentSpawn.create({ data: { entityId: '<UUID>', parentAgentId: '<UUID>', childAgentId: '<UUID>', sessionId: '<UUID>', task: '<String>', status: '<String>', result: '<JSON>', maxIterations: '<Int>', startedAt: '<Datetime>', completedAt: '<Datetime>', agentId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.agentSpawn.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.agentSpawn.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.agentTool`

CRUD operations for AgentTool records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `agentId` | UUID | Yes |
| `toolId` | UUID | Yes |
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all agentTool records
const items = await db.agentTool.findMany({ select: { agentId: true, toolId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.agentTool.findOne({ id: '<UUID>', select: { agentId: true, toolId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.agentTool.create({ data: { agentId: '<UUID>', toolId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.agentTool.update({ where: { id: '<UUID>' }, data: { agentId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.agentTool.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.tool`

CRUD operations for Tool records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `name` | String | Yes |
| `description` | String | Yes |
| `type` | String | Yes |
| `inputSchema` | JSON | Yes |
| `outputSchema` | JSON | Yes |
| `endpoint` | String | Yes |
| `authMethod` | String | Yes |
| `isActive` | Boolean | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `nameTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `typeTrgmSimilarity` | Float | Yes |
| `endpointTrgmSimilarity` | Float | Yes |
| `authMethodTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all tool records
const items = await db.tool.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, description: true, type: true, inputSchema: true, outputSchema: true, endpoint: true, authMethod: true, isActive: true, tags: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, typeTrgmSimilarity: true, endpointTrgmSimilarity: true, authMethodTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.tool.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, description: true, type: true, inputSchema: true, outputSchema: true, endpoint: true, authMethod: true, isActive: true, tags: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, typeTrgmSimilarity: true, endpointTrgmSimilarity: true, authMethodTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.tool.create({ data: { entityId: '<UUID>', name: '<String>', description: '<String>', type: '<String>', inputSchema: '<JSON>', outputSchema: '<JSON>', endpoint: '<String>', authMethod: '<String>', isActive: '<Boolean>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', typeTrgmSimilarity: '<Float>', endpointTrgmSimilarity: '<Float>', authMethodTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.tool.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.tool.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.billingSubscription`

CRUD operations for BillingSubscription records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `name` | String | Yes |
| `amount` | BigFloat | Yes |
| `currency` | String | Yes |
| `frequency` | String | Yes |
| `provider` | String | Yes |
| `nextBillingDate` | Date | Yes |
| `cancellationDate` | Date | Yes |
| `status` | String | Yes |
| `tags` | String | Yes |
| `notes` | String | Yes |

**Operations:**

```typescript
// List all billingSubscription records
const items = await db.billingSubscription.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, amount: true, currency: true, frequency: true, provider: true, nextBillingDate: true, cancellationDate: true, status: true, tags: true, notes: true } }).execute();

// Get one by id
const item = await db.billingSubscription.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, amount: true, currency: true, frequency: true, provider: true, nextBillingDate: true, cancellationDate: true, status: true, tags: true, notes: true } }).execute();

// Create
const created = await db.billingSubscription.create({ data: { entityId: '<UUID>', name: '<String>', amount: '<BigFloat>', currency: '<String>', frequency: '<String>', provider: '<String>', nextBillingDate: '<Date>', cancellationDate: '<Date>', status: '<String>', tags: '<String>', notes: '<String>' }, select: { id: true } }).execute();

// Update
const updated = await db.billingSubscription.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.billingSubscription.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.blueprintChunk`

CRUD operations for BlueprintChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `blueprintId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all blueprintChunk records
const items = await db.blueprintChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, blueprintId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.blueprintChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, blueprintId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.blueprintChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', blueprintId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.blueprintChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.blueprintChunk.delete({ where: { id: '<UUID>' } }).execute();
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
| `conversationId` | UUID | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `titleTrgmSimilarity` | Float | Yes |
| `triggerConditionsTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all blueprint records
const items = await db.blueprint.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, steps: true, triggerConditions: true, conversationId: true, tags: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, triggerConditionsTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.blueprint.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, steps: true, triggerConditions: true, conversationId: true, tags: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, triggerConditionsTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.blueprint.create({ data: { entityId: '<UUID>', title: '<String>', steps: '<JSON>', triggerConditions: '<String>', conversationId: '<UUID>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', triggerConditionsTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.blueprint.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.blueprint.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.calendarAccount`

CRUD operations for CalendarAccount records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `email` | String | Yes |
| `provider` | String | Yes |
| `syncToken` | String | Yes |
| `lastSyncedAt` | Datetime | Yes |

**Operations:**

```typescript
// List all calendarAccount records
const items = await db.calendarAccount.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, email: true, provider: true, syncToken: true, lastSyncedAt: true } }).execute();

// Get one by id
const item = await db.calendarAccount.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, email: true, provider: true, syncToken: true, lastSyncedAt: true } }).execute();

// Create
const created = await db.calendarAccount.create({ data: { entityId: '<UUID>', email: '<String>', provider: '<String>', syncToken: '<String>', lastSyncedAt: '<Datetime>' }, select: { id: true } }).execute();

// Update
const updated = await db.calendarAccount.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.calendarAccount.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.calendarEventChunk`

CRUD operations for CalendarEventChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `calendarEventId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all calendarEventChunk records
const items = await db.calendarEventChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, calendarEventId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.calendarEventChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, calendarEventId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.calendarEventChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', calendarEventId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.calendarEventChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.calendarEventChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.calendarEvent`

CRUD operations for CalendarEvent records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `calendarAccountId` | UUID | Yes |
| `remoteId` | String | Yes |
| `title` | String | Yes |
| `description` | String | Yes |
| `startAt` | Datetime | Yes |
| `endAt` | Datetime | Yes |
| `allDay` | Boolean | Yes |
| `location` | String | Yes |
| `recurrenceRule` | String | Yes |
| `status` | String | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `remoteIdTrgmSimilarity` | Float | Yes |
| `titleTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `locationTrgmSimilarity` | Float | Yes |
| `recurrenceRuleTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all calendarEvent records
const items = await db.calendarEvent.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, calendarAccountId: true, remoteId: true, title: true, description: true, startAt: true, endAt: true, allDay: true, location: true, recurrenceRule: true, status: true, tags: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, remoteIdTrgmSimilarity: true, titleTrgmSimilarity: true, descriptionTrgmSimilarity: true, locationTrgmSimilarity: true, recurrenceRuleTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.calendarEvent.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, calendarAccountId: true, remoteId: true, title: true, description: true, startAt: true, endAt: true, allDay: true, location: true, recurrenceRule: true, status: true, tags: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, remoteIdTrgmSimilarity: true, titleTrgmSimilarity: true, descriptionTrgmSimilarity: true, locationTrgmSimilarity: true, recurrenceRuleTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.calendarEvent.create({ data: { entityId: '<UUID>', calendarAccountId: '<UUID>', remoteId: '<String>', title: '<String>', description: '<String>', startAt: '<Datetime>', endAt: '<Datetime>', allDay: '<Boolean>', location: '<String>', recurrenceRule: '<String>', status: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', remoteIdTrgmSimilarity: '<Float>', titleTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', locationTrgmSimilarity: '<Float>', recurrenceRuleTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.calendarEvent.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.calendarEvent.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.calendarEventContact`

CRUD operations for CalendarEventContact records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `calendarEventId` | UUID | Yes |
| `contactId` | UUID | Yes |
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all calendarEventContact records
const items = await db.calendarEventContact.findMany({ select: { calendarEventId: true, contactId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.calendarEventContact.findOne({ id: '<UUID>', select: { calendarEventId: true, contactId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.calendarEventContact.create({ data: { calendarEventId: '<UUID>', contactId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

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
| `embedding` | Vector | Yes |
| `searchTsv` | FullText | Yes |
| `mainImageId` | UUID | Yes |
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
const items = await db.contact.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, firstName: true, lastName: true, email: true, phone: true, headline: true, bio: true, location: true, birthday: true, relationshipType: true, howWeMet: true, twitterHandle: true, linkedinUrl: true, githubUsername: true, instagramHandle: true, website: true, tags: true, embeddingText: true, embedding: true, searchTsv: true, mainImageId: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, firstNameTrgmSimilarity: true, lastNameTrgmSimilarity: true, emailTrgmSimilarity: true, phoneTrgmSimilarity: true, headlineTrgmSimilarity: true, bioTrgmSimilarity: true, locationTrgmSimilarity: true, relationshipTypeTrgmSimilarity: true, howWeMetTrgmSimilarity: true, twitterHandleTrgmSimilarity: true, linkedinUrlTrgmSimilarity: true, githubUsernameTrgmSimilarity: true, instagramHandleTrgmSimilarity: true, websiteTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.contact.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, firstName: true, lastName: true, email: true, phone: true, headline: true, bio: true, location: true, birthday: true, relationshipType: true, howWeMet: true, twitterHandle: true, linkedinUrl: true, githubUsername: true, instagramHandle: true, website: true, tags: true, embeddingText: true, embedding: true, searchTsv: true, mainImageId: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, firstNameTrgmSimilarity: true, lastNameTrgmSimilarity: true, emailTrgmSimilarity: true, phoneTrgmSimilarity: true, headlineTrgmSimilarity: true, bioTrgmSimilarity: true, locationTrgmSimilarity: true, relationshipTypeTrgmSimilarity: true, howWeMetTrgmSimilarity: true, twitterHandleTrgmSimilarity: true, linkedinUrlTrgmSimilarity: true, githubUsernameTrgmSimilarity: true, instagramHandleTrgmSimilarity: true, websiteTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.contact.create({ data: { entityId: '<UUID>', firstName: '<String>', lastName: '<String>', email: '<String>', phone: '<String>', headline: '<String>', bio: '<String>', location: '<String>', birthday: '<Date>', relationshipType: '<String>', howWeMet: '<String>', twitterHandle: '<String>', linkedinUrl: '<String>', githubUsername: '<String>', instagramHandle: '<String>', website: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', searchTsv: '<FullText>', mainImageId: '<UUID>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', firstNameTrgmSimilarity: '<Float>', lastNameTrgmSimilarity: '<Float>', emailTrgmSimilarity: '<Float>', phoneTrgmSimilarity: '<Float>', headlineTrgmSimilarity: '<Float>', bioTrgmSimilarity: '<Float>', locationTrgmSimilarity: '<Float>', relationshipTypeTrgmSimilarity: '<Float>', howWeMetTrgmSimilarity: '<Float>', twitterHandleTrgmSimilarity: '<Float>', linkedinUrlTrgmSimilarity: '<Float>', githubUsernameTrgmSimilarity: '<Float>', instagramHandleTrgmSimilarity: '<Float>', websiteTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.contact.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.contact.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.chatChunk`

CRUD operations for ChatChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `chatId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all chatChunk records
const items = await db.chatChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, chatId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.chatChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, chatId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.chatChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', chatId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.chatChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.chatChunk.delete({ where: { id: '<UUID>' } }).execute();
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
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `titleTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all chat records
const items = await db.chat.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, startedAt: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.chat.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, startedAt: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.chat.create({ data: { entityId: '<UUID>', title: '<String>', startedAt: '<Datetime>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.chat.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.chat.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.chatMessageChunk`

CRUD operations for ChatMessageChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `chatMessageId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all chatMessageChunk records
const items = await db.chatMessageChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, chatMessageId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.chatMessageChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, chatMessageId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.chatMessageChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', chatMessageId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.chatMessageChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.chatMessageChunk.delete({ where: { id: '<UUID>' } }).execute();
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
| `chatId` | UUID | Yes |
| `threadId` | UUID | Yes |
| `role` | String | Yes |
| `content` | String | Yes |
| `toolCalls` | JSON | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `contentBm25Score` | Float | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `roleTrgmSimilarity` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all chatMessage records
const items = await db.chatMessage.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chatId: true, threadId: true, role: true, content: true, toolCalls: true, embeddingText: true, embedding: true, contentBm25Score: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, roleTrgmSimilarity: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.chatMessage.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chatId: true, threadId: true, role: true, content: true, toolCalls: true, embeddingText: true, embedding: true, contentBm25Score: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, roleTrgmSimilarity: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.chatMessage.create({ data: { entityId: '<UUID>', chatId: '<UUID>', threadId: '<UUID>', role: '<String>', content: '<String>', toolCalls: '<JSON>', embeddingText: '<String>', embedding: '<Vector>', contentBm25Score: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', roleTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.chatMessage.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.chatMessage.delete({ where: { id: '<UUID>' } }).execute();
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
| `fileId` | UUID | Yes |
| `repositoryId` | UUID | Yes |
| `content` | String | Yes |
| `startLine` | Int | Yes |
| `endLine` | Int | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all chunk records
const items = await db.chunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, fileId: true, repositoryId: true, content: true, startLine: true, endLine: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.chunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, fileId: true, repositoryId: true, content: true, startLine: true, endLine: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.chunk.create({ data: { entityId: '<UUID>', fileId: '<UUID>', repositoryId: '<UUID>', content: '<String>', startLine: '<Int>', endLine: '<Int>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.chunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.chunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.companyChunk`

CRUD operations for CompanyChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `companyId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all companyChunk records
const items = await db.companyChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, companyId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.companyChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, companyId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.companyChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', companyId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

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
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `name` | String | Yes |
| `domain` | String | Yes |
| `industry` | String | Yes |
| `description` | String | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `searchTsv` | FullText | Yes |
| `mainImageId` | UUID | Yes |
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
const items = await db.company.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, domain: true, industry: true, description: true, tags: true, embeddingText: true, embedding: true, searchTsv: true, mainImageId: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, domainTrgmSimilarity: true, industryTrgmSimilarity: true, descriptionTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.company.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, domain: true, industry: true, description: true, tags: true, embeddingText: true, embedding: true, searchTsv: true, mainImageId: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, domainTrgmSimilarity: true, industryTrgmSimilarity: true, descriptionTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.company.create({ data: { entityId: '<UUID>', name: '<String>', domain: '<String>', industry: '<String>', description: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', searchTsv: '<FullText>', mainImageId: '<UUID>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', domainTrgmSimilarity: '<Float>', industryTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.company.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.company.delete({ where: { id: '<UUID>' } }).execute();
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
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `name` | String | Yes |
| `eventType` | String | Yes |
| `location` | String | Yes |
| `city` | String | Yes |
| `startedAt` | Datetime | Yes |
| `endedAt` | Datetime | Yes |
| `notesText` | String | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `searchTsv` | FullText | Yes |
| `mainImageId` | UUID | Yes |
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
const items = await db.event.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, eventType: true, location: true, city: true, startedAt: true, endedAt: true, notesText: true, tags: true, embeddingText: true, embedding: true, searchTsv: true, mainImageId: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, eventTypeTrgmSimilarity: true, locationTrgmSimilarity: true, cityTrgmSimilarity: true, notesTextTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.event.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, eventType: true, location: true, city: true, startedAt: true, endedAt: true, notesText: true, tags: true, embeddingText: true, embedding: true, searchTsv: true, mainImageId: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, eventTypeTrgmSimilarity: true, locationTrgmSimilarity: true, cityTrgmSimilarity: true, notesTextTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.event.create({ data: { entityId: '<UUID>', name: '<String>', eventType: '<String>', location: '<String>', city: '<String>', startedAt: '<Datetime>', endedAt: '<Datetime>', notesText: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', searchTsv: '<FullText>', mainImageId: '<UUID>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', eventTypeTrgmSimilarity: '<Float>', locationTrgmSimilarity: '<Float>', cityTrgmSimilarity: '<Float>', notesTextTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

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
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `url` | String | Yes |
| `meta` | JSON | Yes |
| `altText` | String | Yes |
| `caption` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all image records
const items = await db.image.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, url: true, meta: true, altText: true, caption: true, embedding: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.image.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, url: true, meta: true, altText: true, caption: true, embedding: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.image.create({ data: { entityId: '<UUID>', url: '<String>', meta: '<JSON>', altText: '<String>', caption: '<String>', embedding: '<Vector>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

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
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `title` | String | Yes |
| `url` | String | Yes |
| `embedding` | Vector | Yes |
| `companyId` | UUID | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all companyLink records
const items = await db.companyLink.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, url: true, embedding: true, companyId: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.companyLink.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, url: true, embedding: true, companyId: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.companyLink.create({ data: { entityId: '<UUID>', title: '<String>', url: '<String>', embedding: '<Vector>', companyId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

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
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `content` | String | Yes |
| `memoryType` | String | Yes |
| `memoryCategory` | String | Yes |
| `agentId` | UUID | Yes |
| `importance` | Int | Yes |
| `verified` | Boolean | Yes |
| `source` | String | Yes |
| `abstract` | String | Yes |
| `overview` | String | Yes |
| `activeCount` | Int | Yes |
| `lastAccessedAt` | Datetime | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `memoryTypeTrgmSimilarity` | Float | Yes |
| `memoryCategoryTrgmSimilarity` | Float | Yes |
| `sourceTrgmSimilarity` | Float | Yes |
| `abstractTrgmSimilarity` | Float | Yes |
| `overviewTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all memory records
const items = await db.memory.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, content: true, memoryType: true, memoryCategory: true, agentId: true, importance: true, verified: true, source: true, abstract: true, overview: true, activeCount: true, lastAccessedAt: true, tags: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, memoryTypeTrgmSimilarity: true, memoryCategoryTrgmSimilarity: true, sourceTrgmSimilarity: true, abstractTrgmSimilarity: true, overviewTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.memory.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, content: true, memoryType: true, memoryCategory: true, agentId: true, importance: true, verified: true, source: true, abstract: true, overview: true, activeCount: true, lastAccessedAt: true, tags: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, memoryTypeTrgmSimilarity: true, memoryCategoryTrgmSimilarity: true, sourceTrgmSimilarity: true, abstractTrgmSimilarity: true, overviewTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.memory.create({ data: { entityId: '<UUID>', content: '<String>', memoryType: '<String>', memoryCategory: '<String>', agentId: '<UUID>', importance: '<Int>', verified: '<Boolean>', source: '<String>', abstract: '<String>', overview: '<String>', activeCount: '<Int>', lastAccessedAt: '<Datetime>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', memoryTypeTrgmSimilarity: '<Float>', memoryCategoryTrgmSimilarity: '<Float>', sourceTrgmSimilarity: '<Float>', abstractTrgmSimilarity: '<Float>', overviewTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

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
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `content` | String | Yes |
| `abstract` | String | Yes |
| `overview` | String | Yes |
| `activeCount` | Int | Yes |
| `lastAccessedAt` | Datetime | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
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
const items = await db.note.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, content: true, abstract: true, overview: true, activeCount: true, lastAccessedAt: true, tags: true, embeddingText: true, embedding: true, contentBm25Score: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, abstractTrgmSimilarity: true, overviewTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.note.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, content: true, abstract: true, overview: true, activeCount: true, lastAccessedAt: true, tags: true, embeddingText: true, embedding: true, contentBm25Score: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, abstractTrgmSimilarity: true, overviewTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.note.create({ data: { entityId: '<UUID>', content: '<String>', abstract: '<String>', overview: '<String>', activeCount: '<Int>', lastAccessedAt: '<Datetime>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', contentBm25Score: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', abstractTrgmSimilarity: '<Float>', overviewTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

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
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `contactId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all contactChunk records
const items = await db.contactChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, contactId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.contactChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, contactId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.contactChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', contactId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

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
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `name` | String | Yes |
| `stage` | String | Yes |
| `value` | BigFloat | Yes |
| `currency` | String | Yes |
| `expectedCloseDate` | Datetime | Yes |
| `notesText` | String | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
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
const items = await db.deal.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, stage: true, value: true, currency: true, expectedCloseDate: true, notesText: true, tags: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, stageTrgmSimilarity: true, currencyTrgmSimilarity: true, notesTextTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.deal.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, stage: true, value: true, currency: true, expectedCloseDate: true, notesText: true, tags: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, stageTrgmSimilarity: true, currencyTrgmSimilarity: true, notesTextTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.deal.create({ data: { entityId: '<UUID>', name: '<String>', stage: '<String>', value: '<BigFloat>', currency: '<String>', expectedCloseDate: '<Datetime>', notesText: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', stageTrgmSimilarity: '<Float>', currencyTrgmSimilarity: '<Float>', notesTextTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

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
| `isRecurring` | Boolean | Yes |
| `tags` | String | Yes |

**Operations:**

```typescript
// List all expense records
const items = await db.expense.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, amount: true, currency: true, date: true, category: true, description: true, merchant: true, receiptUrl: true, isRecurring: true, tags: true } }).execute();

// Get one by id
const item = await db.expense.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, amount: true, currency: true, date: true, category: true, description: true, merchant: true, receiptUrl: true, isRecurring: true, tags: true } }).execute();

// Create
const created = await db.expense.create({ data: { entityId: '<UUID>', amount: '<BigFloat>', currency: '<String>', date: '<Date>', category: '<String>', description: '<String>', merchant: '<String>', receiptUrl: '<String>', isRecurring: '<Boolean>', tags: '<String>' }, select: { id: true } }).execute();

// Update
const updated = await db.expense.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.expense.delete({ where: { id: '<UUID>' } }).execute();
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
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `title` | String | Yes |
| `url` | String | Yes |
| `embedding` | Vector | Yes |
| `contactId` | UUID | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all contactLink records
const items = await db.contactLink.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, url: true, embedding: true, contactId: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.contactLink.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, url: true, embedding: true, contactId: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.contactLink.create({ data: { entityId: '<UUID>', title: '<String>', url: '<String>', embedding: '<Vector>', contactId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

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
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `name` | String | Yes |
| `description` | String | Yes |
| `status` | String | Yes |
| `startDate` | Datetime | Yes |
| `dueDate` | Datetime | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `searchTsv` | FullText | Yes |
| `searchTsvRank` | Float | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `nameTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all project records
const items = await db.project.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, description: true, status: true, startDate: true, dueDate: true, tags: true, embeddingText: true, embedding: true, searchTsv: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.project.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, description: true, status: true, startDate: true, dueDate: true, tags: true, embeddingText: true, embedding: true, searchTsv: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.project.create({ data: { entityId: '<UUID>', name: '<String>', description: '<String>', status: '<String>', startDate: '<Datetime>', dueDate: '<Datetime>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', searchTsv: '<FullText>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.project.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.project.delete({ where: { id: '<UUID>' } }).execute();
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
| `projectId` | UUID | Yes |
| `taskType` | String | Yes |
| `assignedAgentId` | UUID | Yes |
| `parentTaskId` | UUID | Yes |
| `dueDate` | Datetime | Yes |
| `completedAt` | Datetime | Yes |
| `conversationId` | UUID | Yes |
| `dependencies` | UUID | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `titleTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `taskTypeTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all task records
const items = await db.task.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, description: true, status: true, priority: true, projectId: true, taskType: true, assignedAgentId: true, parentTaskId: true, dueDate: true, completedAt: true, conversationId: true, dependencies: true, tags: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, descriptionTrgmSimilarity: true, statusTrgmSimilarity: true, taskTypeTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.task.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, description: true, status: true, priority: true, projectId: true, taskType: true, assignedAgentId: true, parentTaskId: true, dueDate: true, completedAt: true, conversationId: true, dependencies: true, tags: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, descriptionTrgmSimilarity: true, statusTrgmSimilarity: true, taskTypeTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.task.create({ data: { entityId: '<UUID>', title: '<String>', description: '<String>', status: '<String>', priority: '<Int>', projectId: '<UUID>', taskType: '<String>', assignedAgentId: '<UUID>', parentTaskId: '<UUID>', dueDate: '<Datetime>', completedAt: '<Datetime>', conversationId: '<UUID>', dependencies: '<UUID>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', taskTypeTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.task.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.task.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.dealChunk`

CRUD operations for DealChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `dealId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all dealChunk records
const items = await db.dealChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, dealId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.dealChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, dealId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.dealChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', dealId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

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

### `db.documentChunk`

CRUD operations for DocumentChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `documentId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all documentChunk records
const items = await db.documentChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, documentId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.documentChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, documentId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.documentChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', documentId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.documentChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.documentChunk.delete({ where: { id: '<UUID>' } }).execute();
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
| `isRead` | Boolean | Yes |
| `savedAt` | Datetime | Yes |
| `parentDocumentId` | UUID | Yes |
| `abstract` | String | Yes |
| `overview` | String | Yes |
| `activeCount` | Int | Yes |
| `lastAccessedAt` | Datetime | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `searchTsv` | FullText | Yes |
| `searchTsvRank` | Float | Yes |
| `contentBm25Score` | Float | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `titleTrgmSimilarity` | Float | Yes |
| `urlTrgmSimilarity` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `sourceTypeTrgmSimilarity` | Float | Yes |
| `abstractTrgmSimilarity` | Float | Yes |
| `overviewTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all document records
const items = await db.document.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, url: true, content: true, sourceType: true, isRead: true, savedAt: true, parentDocumentId: true, abstract: true, overview: true, activeCount: true, lastAccessedAt: true, tags: true, embeddingText: true, embedding: true, searchTsv: true, searchTsvRank: true, contentBm25Score: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, urlTrgmSimilarity: true, contentTrgmSimilarity: true, sourceTypeTrgmSimilarity: true, abstractTrgmSimilarity: true, overviewTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.document.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, url: true, content: true, sourceType: true, isRead: true, savedAt: true, parentDocumentId: true, abstract: true, overview: true, activeCount: true, lastAccessedAt: true, tags: true, embeddingText: true, embedding: true, searchTsv: true, searchTsvRank: true, contentBm25Score: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, urlTrgmSimilarity: true, contentTrgmSimilarity: true, sourceTypeTrgmSimilarity: true, abstractTrgmSimilarity: true, overviewTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.document.create({ data: { entityId: '<UUID>', title: '<String>', url: '<String>', content: '<String>', sourceType: '<String>', isRead: '<Boolean>', savedAt: '<Datetime>', parentDocumentId: '<UUID>', abstract: '<String>', overview: '<String>', activeCount: '<Int>', lastAccessedAt: '<Datetime>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', searchTsv: '<FullText>', searchTsvRank: '<Float>', contentBm25Score: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', urlTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', sourceTypeTrgmSimilarity: '<Float>', abstractTrgmSimilarity: '<Float>', overviewTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.document.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.document.delete({ where: { id: '<UUID>' } }).execute();
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
const item = await db.emailAccount.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, email: true, provider: true, syncState: true } }).execute();

// Create
const created = await db.emailAccount.create({ data: { entityId: '<UUID>', email: '<String>', provider: '<String>', syncState: '<JSON>' }, select: { id: true } }).execute();

// Update
const updated = await db.emailAccount.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.emailAccount.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.eventChunk`

CRUD operations for EventChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `eventId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all eventChunk records
const items = await db.eventChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, eventId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.eventChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, eventId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.eventChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', eventId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

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
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `title` | String | Yes |
| `url` | String | Yes |
| `embedding` | Vector | Yes |
| `eventId` | UUID | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all eventLink records
const items = await db.eventLink.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, url: true, embedding: true, eventId: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.eventLink.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, url: true, embedding: true, eventId: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.eventLink.create({ data: { entityId: '<UUID>', title: '<String>', url: '<String>', embedding: '<Vector>', eventId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

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
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
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
| `embedding` | Vector | Yes |
| `searchTsv` | FullText | Yes |
| `mainImageId` | UUID | Yes |
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
const items = await db.venue.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, address: true, neighborhood: true, city: true, category: true, status: true, googlePlaceId: true, rating: true, priceLevel: true, isFavorite: true, notes: true, tags: true, embeddingText: true, embedding: true, searchTsv: true, mainImageId: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, addressTrgmSimilarity: true, neighborhoodTrgmSimilarity: true, cityTrgmSimilarity: true, categoryTrgmSimilarity: true, statusTrgmSimilarity: true, googlePlaceIdTrgmSimilarity: true, priceLevelTrgmSimilarity: true, notesTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.venue.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, address: true, neighborhood: true, city: true, category: true, status: true, googlePlaceId: true, rating: true, priceLevel: true, isFavorite: true, notes: true, tags: true, embeddingText: true, embedding: true, searchTsv: true, mainImageId: true, searchTsvRank: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, addressTrgmSimilarity: true, neighborhoodTrgmSimilarity: true, cityTrgmSimilarity: true, categoryTrgmSimilarity: true, statusTrgmSimilarity: true, googlePlaceIdTrgmSimilarity: true, priceLevelTrgmSimilarity: true, notesTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.venue.create({ data: { entityId: '<UUID>', name: '<String>', address: '<String>', neighborhood: '<String>', city: '<String>', category: '<String>', status: '<String>', googlePlaceId: '<String>', rating: '<BigFloat>', priceLevel: '<String>', isFavorite: '<Boolean>', notes: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', searchTsv: '<FullText>', mainImageId: '<UUID>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', addressTrgmSimilarity: '<Float>', neighborhoodTrgmSimilarity: '<Float>', cityTrgmSimilarity: '<Float>', categoryTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', googlePlaceIdTrgmSimilarity: '<Float>', priceLevelTrgmSimilarity: '<Float>', notesTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.venue.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.venue.delete({ where: { id: '<UUID>' } }).execute();
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
| `sessionId` | UUID | Yes |
| `stepName` | String | Yes |
| `input` | String | Yes |
| `output` | String | Yes |
| `toolCalls` | JSON | Yes |
| `durationMs` | Int | Yes |

**Operations:**

```typescript
// List all executionLog records
const items = await db.executionLog.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, sessionId: true, stepName: true, input: true, output: true, toolCalls: true, durationMs: true } }).execute();

// Get one by id
const item = await db.executionLog.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, sessionId: true, stepName: true, input: true, output: true, toolCalls: true, durationMs: true } }).execute();

// Create
const created = await db.executionLog.create({ data: { entityId: '<UUID>', sessionId: '<UUID>', stepName: '<String>', input: '<String>', output: '<String>', toolCalls: '<JSON>', durationMs: '<Int>' }, select: { id: true } }).execute();

// Update
const updated = await db.executionLog.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.executionLog.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.expenseContact`

CRUD operations for ExpenseContact records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `expenseId` | UUID | Yes |
| `contactId` | UUID | Yes |
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all expenseContact records
const items = await db.expenseContact.findMany({ select: { expenseId: true, contactId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.expenseContact.findOne({ id: '<UUID>', select: { expenseId: true, contactId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.expenseContact.create({ data: { expenseId: '<UUID>', contactId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.expenseContact.update({ where: { id: '<UUID>' }, data: { expenseId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.expenseContact.delete({ where: { id: '<UUID>' } }).execute();
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
| `repositoryId` | UUID | Yes |
| `path` | String | Yes |
| `language` | String | Yes |
| `hash` | String | Yes |

**Operations:**

```typescript
// List all file records
const items = await db.file.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, repositoryId: true, path: true, language: true, hash: true } }).execute();

// Get one by id
const item = await db.file.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, repositoryId: true, path: true, language: true, hash: true } }).execute();

// Create
const created = await db.file.create({ data: { entityId: '<UUID>', repositoryId: '<UUID>', path: '<String>', language: '<String>', hash: '<String>' }, select: { id: true } }).execute();

// Update
const updated = await db.file.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.file.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.goalChunk`

CRUD operations for GoalChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `goalId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all goalChunk records
const items = await db.goalChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, goalId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.goalChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, goalId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.goalChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', goalId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

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
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `title` | String | Yes |
| `description` | String | Yes |
| `targetDate` | Datetime | Yes |
| `status` | String | Yes |
| `category` | String | Yes |
| `progressPct` | Int | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `titleTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `categoryTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all goal records
const items = await db.goal.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, description: true, targetDate: true, status: true, category: true, progressPct: true, tags: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, descriptionTrgmSimilarity: true, statusTrgmSimilarity: true, categoryTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.goal.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, description: true, targetDate: true, status: true, category: true, progressPct: true, tags: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, descriptionTrgmSimilarity: true, statusTrgmSimilarity: true, categoryTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.goal.create({ data: { entityId: '<UUID>', title: '<String>', description: '<String>', targetDate: '<Datetime>', status: '<String>', category: '<String>', progressPct: '<Int>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', categoryTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

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
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `name` | String | Yes |
| `frequency` | String | Yes |
| `targetCount` | Int | Yes |
| `currentStreak` | Int | Yes |
| `bestStreak` | Int | Yes |
| `category` | String | Yes |
| `tags` | String | Yes |

**Operations:**

```typescript
// List all habit records
const items = await db.habit.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, frequency: true, targetCount: true, currentStreak: true, bestStreak: true, category: true, tags: true } }).execute();

// Get one by id
const item = await db.habit.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, frequency: true, targetCount: true, currentStreak: true, bestStreak: true, category: true, tags: true } }).execute();

// Create
const created = await db.habit.create({ data: { entityId: '<UUID>', name: '<String>', frequency: '<String>', targetCount: '<Int>', currentStreak: '<Int>', bestStreak: '<Int>', category: '<String>', tags: '<String>' }, select: { id: true } }).execute();

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

### `db.habitLog`

CRUD operations for HabitLog records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `habitId` | UUID | Yes |
| `completedAt` | Datetime | Yes |
| `activityType` | String | Yes |
| `durationMinutes` | BigFloat | Yes |
| `distance` | BigFloat | Yes |
| `distanceUnit` | String | Yes |
| `reps` | Int | Yes |
| `sets` | Int | Yes |
| `weightAmount` | BigFloat | Yes |
| `weightUnit` | String | Yes |
| `calories` | BigFloat | Yes |
| `data` | JSON | Yes |
| `notes` | String | Yes |
| `tags` | String | Yes |

**Operations:**

```typescript
// List all habitLog records
const items = await db.habitLog.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, habitId: true, completedAt: true, activityType: true, durationMinutes: true, distance: true, distanceUnit: true, reps: true, sets: true, weightAmount: true, weightUnit: true, calories: true, data: true, notes: true, tags: true } }).execute();

// Get one by id
const item = await db.habitLog.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, habitId: true, completedAt: true, activityType: true, durationMinutes: true, distance: true, distanceUnit: true, reps: true, sets: true, weightAmount: true, weightUnit: true, calories: true, data: true, notes: true, tags: true } }).execute();

// Create
const created = await db.habitLog.create({ data: { entityId: '<UUID>', habitId: '<UUID>', completedAt: '<Datetime>', activityType: '<String>', durationMinutes: '<BigFloat>', distance: '<BigFloat>', distanceUnit: '<String>', reps: '<Int>', sets: '<Int>', weightAmount: '<BigFloat>', weightUnit: '<String>', calories: '<BigFloat>', data: '<JSON>', notes: '<String>', tags: '<String>' }, select: { id: true } }).execute();

// Update
const updated = await db.habitLog.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.habitLog.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.ideaChunk`

CRUD operations for IdeaChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `ideaId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all ideaChunk records
const items = await db.ideaChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, ideaId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.ideaChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, ideaId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.ideaChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', ideaId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.ideaChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.ideaChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.idea`

CRUD operations for Idea records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `content` | String | Yes |
| `source` | String | Yes |
| `status` | String | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `sourceTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all idea records
const items = await db.idea.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, content: true, source: true, status: true, tags: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, sourceTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.idea.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, content: true, source: true, status: true, tags: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, sourceTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.idea.create({ data: { entityId: '<UUID>', content: '<String>', source: '<String>', status: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', sourceTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.idea.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.idea.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.integration`

CRUD operations for Integration records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `name` | String | Yes |
| `provider` | String | Yes |
| `type` | String | Yes |
| `credentialsRef` | String | Yes |
| `config` | JSON | Yes |
| `status` | String | Yes |
| `lastSyncedAt` | Datetime | Yes |

**Operations:**

```typescript
// List all integration records
const items = await db.integration.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, provider: true, type: true, credentialsRef: true, config: true, status: true, lastSyncedAt: true } }).execute();

// Get one by id
const item = await db.integration.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, provider: true, type: true, credentialsRef: true, config: true, status: true, lastSyncedAt: true } }).execute();

// Create
const created = await db.integration.create({ data: { entityId: '<UUID>', name: '<String>', provider: '<String>', type: '<String>', credentialsRef: '<String>', config: '<JSON>', status: '<String>', lastSyncedAt: '<Datetime>' }, select: { id: true } }).execute();

// Update
const updated = await db.integration.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.integration.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.interactionChunk`

CRUD operations for InteractionChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `interactionId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all interactionChunk records
const items = await db.interactionChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, interactionId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.interactionChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, interactionId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.interactionChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', interactionId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

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
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `contactId` | UUID | Yes |
| `type` | String | Yes |
| `occurredAt` | Datetime | Yes |
| `summary` | String | Yes |
| `sentiment` | String | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
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
const items = await db.interaction.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, contactId: true, type: true, occurredAt: true, summary: true, sentiment: true, tags: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, typeTrgmSimilarity: true, summaryTrgmSimilarity: true, sentimentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.interaction.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, contactId: true, type: true, occurredAt: true, summary: true, sentiment: true, tags: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, typeTrgmSimilarity: true, summaryTrgmSimilarity: true, sentimentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.interaction.create({ data: { entityId: '<UUID>', contactId: '<UUID>', type: '<String>', occurredAt: '<Datetime>', summary: '<String>', sentiment: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', typeTrgmSimilarity: '<Float>', summaryTrgmSimilarity: '<Float>', sentimentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.interaction.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.interaction.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.listChunk`

CRUD operations for ListChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `listId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all listChunk records
const items = await db.listChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, listId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.listChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, listId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.listChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', listId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.listChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.listChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.list`

CRUD operations for List records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `name` | String | Yes |
| `description` | String | Yes |
| `type` | String | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `nameTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `typeTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all list records
const items = await db.list.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, description: true, type: true, tags: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, typeTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.list.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, description: true, type: true, tags: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, typeTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.list.create({ data: { entityId: '<UUID>', name: '<String>', description: '<String>', type: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', typeTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.list.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.list.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.memoryChunk`

CRUD operations for MemoryChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `memoryId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all memoryChunk records
const items = await db.memoryChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, memoryId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.memoryChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, memoryId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.memoryChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', memoryId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

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
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `messageId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all messageChunk records
const items = await db.messageChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, messageId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.messageChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, messageId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.messageChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', messageId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

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
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `emailAccountId` | UUID | Yes |
| `threadId` | String | Yes |
| `remoteId` | String | Yes |
| `fromAddress` | String | Yes |
| `toAddresses` | String | Yes |
| `subject` | String | Yes |
| `bodyText` | String | Yes |
| `receivedAt` | Datetime | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `bodyTextBm25Score` | Float | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `threadIdTrgmSimilarity` | Float | Yes |
| `remoteIdTrgmSimilarity` | Float | Yes |
| `fromAddressTrgmSimilarity` | Float | Yes |
| `subjectTrgmSimilarity` | Float | Yes |
| `bodyTextTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all message records
const items = await db.message.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, emailAccountId: true, threadId: true, remoteId: true, fromAddress: true, toAddresses: true, subject: true, bodyText: true, receivedAt: true, tags: true, embeddingText: true, embedding: true, bodyTextBm25Score: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, threadIdTrgmSimilarity: true, remoteIdTrgmSimilarity: true, fromAddressTrgmSimilarity: true, subjectTrgmSimilarity: true, bodyTextTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.message.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, emailAccountId: true, threadId: true, remoteId: true, fromAddress: true, toAddresses: true, subject: true, bodyText: true, receivedAt: true, tags: true, embeddingText: true, embedding: true, bodyTextBm25Score: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, threadIdTrgmSimilarity: true, remoteIdTrgmSimilarity: true, fromAddressTrgmSimilarity: true, subjectTrgmSimilarity: true, bodyTextTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.message.create({ data: { entityId: '<UUID>', emailAccountId: '<UUID>', threadId: '<String>', remoteId: '<String>', fromAddress: '<String>', toAddresses: '<String>', subject: '<String>', bodyText: '<String>', receivedAt: '<Datetime>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', bodyTextBm25Score: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', threadIdTrgmSimilarity: '<Float>', remoteIdTrgmSimilarity: '<Float>', fromAddressTrgmSimilarity: '<Float>', subjectTrgmSimilarity: '<Float>', bodyTextTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.message.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.message.delete({ where: { id: '<UUID>' } }).execute();
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
| `projectId` | UUID | Yes |
| `name` | String | Yes |
| `dueDate` | Datetime | Yes |
| `status` | String | Yes |

**Operations:**

```typescript
// List all milestone records
const items = await db.milestone.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, projectId: true, name: true, dueDate: true, status: true } }).execute();

// Get one by id
const item = await db.milestone.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, projectId: true, name: true, dueDate: true, status: true } }).execute();

// Create
const created = await db.milestone.create({ data: { entityId: '<UUID>', projectId: '<UUID>', name: '<String>', dueDate: '<Datetime>', status: '<String>' }, select: { id: true } }).execute();

// Update
const updated = await db.milestone.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.milestone.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.noteChunk`

CRUD operations for NoteChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `noteId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all noteChunk records
const items = await db.noteChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, noteId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.noteChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, noteId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.noteChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', noteId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.noteChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.noteChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.process`

CRUD operations for Process records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `pid` | Int | Yes |
| `agentId` | UUID | Yes |
| `command` | String | Yes |
| `startedAt` | Datetime | Yes |
| `endedAt` | Datetime | Yes |
| `status` | String | Yes |
| `exitCode` | Int | Yes |
| `logsPath` | String | Yes |

**Operations:**

```typescript
// List all process records
const items = await db.process.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, pid: true, agentId: true, command: true, startedAt: true, endedAt: true, status: true, exitCode: true, logsPath: true } }).execute();

// Get one by id
const item = await db.process.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, pid: true, agentId: true, command: true, startedAt: true, endedAt: true, status: true, exitCode: true, logsPath: true } }).execute();

// Create
const created = await db.process.create({ data: { entityId: '<UUID>', pid: '<Int>', agentId: '<UUID>', command: '<String>', startedAt: '<Datetime>', endedAt: '<Datetime>', status: '<String>', exitCode: '<Int>', logsPath: '<String>' }, select: { id: true } }).execute();

// Update
const updated = await db.process.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.process.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.projectChunk`

CRUD operations for ProjectChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `projectId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all projectChunk records
const items = await db.projectChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, projectId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.projectChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, projectId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.projectChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', projectId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

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

### `db.promptChunk`

CRUD operations for PromptChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `promptId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all promptChunk records
const items = await db.promptChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, promptId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.promptChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, promptId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.promptChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', promptId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.promptChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.promptChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.recipeChunk`

CRUD operations for RecipeChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `recipeId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all recipeChunk records
const items = await db.recipeChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, recipeId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.recipeChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, recipeId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.recipeChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', recipeId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.recipeChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.recipeChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.recipe`

CRUD operations for Recipe records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `name` | String | Yes |
| `description` | String | Yes |
| `cuisine` | String | Yes |
| `prepTimeMinutes` | Int | Yes |
| `cookTimeMinutes` | Int | Yes |
| `servings` | Int | Yes |
| `difficulty` | String | Yes |
| `ingredients` | JSON | Yes |
| `instructions` | JSON | Yes |
| `sourceUrl` | String | Yes |
| `imageUrl` | String | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `nameTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `cuisineTrgmSimilarity` | Float | Yes |
| `difficultyTrgmSimilarity` | Float | Yes |
| `sourceUrlTrgmSimilarity` | Float | Yes |
| `imageUrlTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all recipe records
const items = await db.recipe.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, description: true, cuisine: true, prepTimeMinutes: true, cookTimeMinutes: true, servings: true, difficulty: true, ingredients: true, instructions: true, sourceUrl: true, imageUrl: true, tags: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, cuisineTrgmSimilarity: true, difficultyTrgmSimilarity: true, sourceUrlTrgmSimilarity: true, imageUrlTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.recipe.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, description: true, cuisine: true, prepTimeMinutes: true, cookTimeMinutes: true, servings: true, difficulty: true, ingredients: true, instructions: true, sourceUrl: true, imageUrl: true, tags: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, cuisineTrgmSimilarity: true, difficultyTrgmSimilarity: true, sourceUrlTrgmSimilarity: true, imageUrlTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.recipe.create({ data: { entityId: '<UUID>', name: '<String>', description: '<String>', cuisine: '<String>', prepTimeMinutes: '<Int>', cookTimeMinutes: '<Int>', servings: '<Int>', difficulty: '<String>', ingredients: '<JSON>', instructions: '<JSON>', sourceUrl: '<String>', imageUrl: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', cuisineTrgmSimilarity: '<Float>', difficultyTrgmSimilarity: '<Float>', sourceUrlTrgmSimilarity: '<Float>', imageUrlTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.recipe.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.recipe.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.reminderChunk`

CRUD operations for ReminderChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `reminderId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all reminderChunk records
const items = await db.reminderChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, reminderId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.reminderChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, reminderId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.reminderChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', reminderId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.reminderChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.reminderChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.reminder`

CRUD operations for Reminder records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `title` | String | Yes |
| `dueAt` | Datetime | Yes |
| `completedAt` | Datetime | Yes |
| `recurrence` | String | Yes |
| `status` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `titleTrgmSimilarity` | Float | Yes |
| `recurrenceTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all reminder records
const items = await db.reminder.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, dueAt: true, completedAt: true, recurrence: true, status: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, recurrenceTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.reminder.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, dueAt: true, completedAt: true, recurrence: true, status: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, recurrenceTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.reminder.create({ data: { entityId: '<UUID>', title: '<String>', dueAt: '<Datetime>', completedAt: '<Datetime>', recurrence: '<String>', status: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', recurrenceTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.reminder.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.reminder.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.repositoryChunk`

CRUD operations for RepositoryChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `repositoryId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all repositoryChunk records
const items = await db.repositoryChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, repositoryId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.repositoryChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, repositoryId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.repositoryChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', repositoryId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.repositoryChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.repositoryChunk.delete({ where: { id: '<UUID>' } }).execute();
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
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `nameTrgmSimilarity` | Float | Yes |
| `urlTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `defaultBranchTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all repository records
const items = await db.repository.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, url: true, description: true, defaultBranch: true, lastSyncedAt: true, tags: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, urlTrgmSimilarity: true, descriptionTrgmSimilarity: true, defaultBranchTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.repository.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, url: true, description: true, defaultBranch: true, lastSyncedAt: true, tags: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, urlTrgmSimilarity: true, descriptionTrgmSimilarity: true, defaultBranchTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.repository.create({ data: { entityId: '<UUID>', name: '<String>', url: '<String>', description: '<String>', defaultBranch: '<String>', lastSyncedAt: '<Datetime>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', urlTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', defaultBranchTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.repository.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.repository.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.ruleChunk`

CRUD operations for RuleChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `ruleId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all ruleChunk records
const items = await db.ruleChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, ruleId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.ruleChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, ruleId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.ruleChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', ruleId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.ruleChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.ruleChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.scheduledJob`

CRUD operations for ScheduledJob records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `name` | String | Yes |
| `scheduleType` | String | Yes |
| `scheduleExpr` | String | Yes |
| `runAt` | Datetime | Yes |
| `command` | String | Yes |
| `message` | String | Yes |
| `agentId` | UUID | Yes |
| `sessionId` | UUID | Yes |
| `isActive` | Boolean | Yes |
| `deleteAfterRun` | Boolean | Yes |
| `lastRunAt` | Datetime | Yes |
| `nextRunAt` | Datetime | Yes |
| `runCount` | Int | Yes |
| `lastResult` | JSON | Yes |

**Operations:**

```typescript
// List all scheduledJob records
const items = await db.scheduledJob.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, scheduleType: true, scheduleExpr: true, runAt: true, command: true, message: true, agentId: true, sessionId: true, isActive: true, deleteAfterRun: true, lastRunAt: true, nextRunAt: true, runCount: true, lastResult: true } }).execute();

// Get one by id
const item = await db.scheduledJob.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, scheduleType: true, scheduleExpr: true, runAt: true, command: true, message: true, agentId: true, sessionId: true, isActive: true, deleteAfterRun: true, lastRunAt: true, nextRunAt: true, runCount: true, lastResult: true } }).execute();

// Create
const created = await db.scheduledJob.create({ data: { entityId: '<UUID>', name: '<String>', scheduleType: '<String>', scheduleExpr: '<String>', runAt: '<Datetime>', command: '<String>', message: '<String>', agentId: '<UUID>', sessionId: '<UUID>', isActive: '<Boolean>', deleteAfterRun: '<Boolean>', lastRunAt: '<Datetime>', nextRunAt: '<Datetime>', runCount: '<Int>', lastResult: '<JSON>' }, select: { id: true } }).execute();

// Update
const updated = await db.scheduledJob.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.scheduledJob.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.sessionArchiveChunk`

CRUD operations for SessionArchiveChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `sessionArchiveId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all sessionArchiveChunk records
const items = await db.sessionArchiveChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, sessionArchiveId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.sessionArchiveChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, sessionArchiveId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.sessionArchiveChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', sessionArchiveId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.sessionArchiveChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.sessionArchiveChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.sessionArchive`

CRUD operations for SessionArchive records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `sessionId` | UUID | Yes |
| `archiveIndex` | Int | Yes |
| `summary` | String | Yes |
| `messageRangeStart` | Int | Yes |
| `messageRangeEnd` | Int | Yes |
| `rawMessages` | JSON | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `summaryTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all sessionArchive records
const items = await db.sessionArchive.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, sessionId: true, archiveIndex: true, summary: true, messageRangeStart: true, messageRangeEnd: true, rawMessages: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, summaryTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.sessionArchive.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, sessionId: true, archiveIndex: true, summary: true, messageRangeStart: true, messageRangeEnd: true, rawMessages: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, summaryTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.sessionArchive.create({ data: { entityId: '<UUID>', sessionId: '<UUID>', archiveIndex: '<Int>', summary: '<String>', messageRangeStart: '<Int>', messageRangeEnd: '<Int>', rawMessages: '<JSON>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', summaryTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.sessionArchive.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.sessionArchive.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.sessionChunk`

CRUD operations for SessionChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `sessionId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all sessionChunk records
const items = await db.sessionChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, sessionId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.sessionChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, sessionId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.sessionChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', sessionId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.sessionChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.sessionChunk.delete({ where: { id: '<UUID>' } }).execute();
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
| `agentId` | UUID | Yes |
| `startedAt` | Datetime | Yes |
| `endedAt` | Datetime | Yes |
| `status` | String | Yes |
| `contextSummary` | String | Yes |
| `sessionSummary` | String | Yes |
| `archivedMessages` | JSON | Yes |
| `compressionCount` | Int | Yes |
| `archivedAt` | Datetime | Yes |
| `extractedMemoryIds` | UUID | Yes |
| `contextsUsed` | JSON | Yes |
| `skillsUsed` | UUID | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |

**Operations:**

```typescript
// List all session records
const items = await db.session.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, agentId: true, startedAt: true, endedAt: true, status: true, contextSummary: true, sessionSummary: true, archivedMessages: true, compressionCount: true, archivedAt: true, extractedMemoryIds: true, contextsUsed: true, skillsUsed: true, embeddingText: true, embedding: true } }).execute();

// Get one by id
const item = await db.session.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, agentId: true, startedAt: true, endedAt: true, status: true, contextSummary: true, sessionSummary: true, archivedMessages: true, compressionCount: true, archivedAt: true, extractedMemoryIds: true, contextsUsed: true, skillsUsed: true, embeddingText: true, embedding: true } }).execute();

// Create
const created = await db.session.create({ data: { entityId: '<UUID>', title: '<String>', agentId: '<UUID>', startedAt: '<Datetime>', endedAt: '<Datetime>', status: '<String>', contextSummary: '<String>', sessionSummary: '<String>', archivedMessages: '<JSON>', compressionCount: '<Int>', archivedAt: '<Datetime>', extractedMemoryIds: '<UUID>', contextsUsed: '<JSON>', skillsUsed: '<UUID>', embeddingText: '<String>', embedding: '<Vector>' }, select: { id: true } }).execute();

// Update
const updated = await db.session.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.session.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.skillChunk`

CRUD operations for SkillChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `skillId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all skillChunk records
const items = await db.skillChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, skillId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.skillChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, skillId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.skillChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', skillId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.skillChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.skillChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.skillExecution`

CRUD operations for SkillExecution records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `skillId` | UUID | Yes |
| `agentId` | UUID | Yes |
| `sessionId` | UUID | Yes |
| `status` | String | Yes |
| `startedAt` | Datetime | Yes |
| `completedAt` | Datetime | Yes |
| `durationMs` | Int | Yes |
| `input` | JSON | Yes |
| `output` | JSON | Yes |
| `error` | String | Yes |

**Operations:**

```typescript
// List all skillExecution records
const items = await db.skillExecution.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, skillId: true, agentId: true, sessionId: true, status: true, startedAt: true, completedAt: true, durationMs: true, input: true, output: true, error: true } }).execute();

// Get one by id
const item = await db.skillExecution.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, skillId: true, agentId: true, sessionId: true, status: true, startedAt: true, completedAt: true, durationMs: true, input: true, output: true, error: true } }).execute();

// Create
const created = await db.skillExecution.create({ data: { entityId: '<UUID>', skillId: '<UUID>', agentId: '<UUID>', sessionId: '<UUID>', status: '<String>', startedAt: '<Datetime>', completedAt: '<Datetime>', durationMs: '<Int>', input: '<JSON>', output: '<JSON>', error: '<String>' }, select: { id: true } }).execute();

// Update
const updated = await db.skillExecution.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.skillExecution.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.tag`

CRUD operations for Tag records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `name` | String | Yes |
| `color` | String | Yes |
| `category` | String | Yes |
| `usageCount` | Int | Yes |

**Operations:**

```typescript
// List all tag records
const items = await db.tag.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, color: true, category: true, usageCount: true } }).execute();

// Get one by id
const item = await db.tag.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, color: true, category: true, usageCount: true } }).execute();

// Create
const created = await db.tag.create({ data: { entityId: '<UUID>', name: '<String>', color: '<String>', category: '<String>', usageCount: '<Int>' }, select: { id: true } }).execute();

// Update
const updated = await db.tag.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.tag.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.taskChunk`

CRUD operations for TaskChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `taskId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all taskChunk records
const items = await db.taskChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, taskId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.taskChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, taskId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.taskChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', taskId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.taskChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.taskChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.taskContact`

CRUD operations for TaskContact records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `taskId` | UUID | Yes |
| `contactId` | UUID | Yes |
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all taskContact records
const items = await db.taskContact.findMany({ select: { taskId: true, contactId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.taskContact.findOne({ id: '<UUID>', select: { taskId: true, contactId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.taskContact.create({ data: { taskId: '<UUID>', contactId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

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
| `id` | UUID | No |
| `entityId` | UUID | Yes |

**Operations:**

```typescript
// List all taskNote records
const items = await db.taskNote.findMany({ select: { taskId: true, noteId: true, id: true, entityId: true } }).execute();

// Get one by id
const item = await db.taskNote.findOne({ id: '<UUID>', select: { taskId: true, noteId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.taskNote.create({ data: { taskId: '<UUID>', noteId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute();

// Update
const updated = await db.taskNote.update({ where: { id: '<UUID>' }, data: { taskId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.taskNote.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.templateChunk`

CRUD operations for TemplateChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `templateId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all templateChunk records
const items = await db.templateChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, templateId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.templateChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, templateId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.templateChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', templateId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.templateChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.templateChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.template`

CRUD operations for Template records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `name` | String | Yes |
| `description` | String | Yes |
| `type` | String | Yes |
| `content` | JSON | Yes |
| `variables` | JSON | Yes |
| `isActive` | Boolean | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `nameTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `typeTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all template records
const items = await db.template.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, description: true, type: true, content: true, variables: true, isActive: true, tags: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, typeTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.template.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, description: true, type: true, content: true, variables: true, isActive: true, tags: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, typeTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.template.create({ data: { entityId: '<UUID>', name: '<String>', description: '<String>', type: '<String>', content: '<JSON>', variables: '<JSON>', isActive: '<Boolean>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', typeTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.template.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.template.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.threadChunk`

CRUD operations for ThreadChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `threadId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all threadChunk records
const items = await db.threadChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, threadId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.threadChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, threadId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.threadChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', threadId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.threadChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.threadChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.thread`

CRUD operations for Thread records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `title` | String | Yes |
| `summary` | String | Yes |
| `status` | String | Yes |
| `parentThreadId` | UUID | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `titleTrgmSimilarity` | Float | Yes |
| `summaryTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all thread records
const items = await db.thread.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, summary: true, status: true, parentThreadId: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, summaryTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.thread.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, summary: true, status: true, parentThreadId: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, titleTrgmSimilarity: true, summaryTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.thread.create({ data: { entityId: '<UUID>', title: '<String>', summary: '<String>', status: '<String>', parentThreadId: '<UUID>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', summaryTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.thread.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.thread.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.toolChunk`

CRUD operations for ToolChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `toolId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all toolChunk records
const items = await db.toolChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, toolId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.toolChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, toolId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.toolChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', toolId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.toolChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.toolChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.tripChunk`

CRUD operations for TripChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `tripId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all tripChunk records
const items = await db.tripChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, tripId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.tripChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, tripId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.tripChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', tripId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.tripChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.tripChunk.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.trip`

CRUD operations for Trip records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `name` | String | Yes |
| `destination` | String | Yes |
| `startDate` | Date | Yes |
| `endDate` | Date | Yes |
| `status` | String | Yes |
| `notes` | String | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `nameTrgmSimilarity` | Float | Yes |
| `destinationTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `notesTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all trip records
const items = await db.trip.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, destination: true, startDate: true, endDate: true, status: true, notes: true, tags: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, destinationTrgmSimilarity: true, statusTrgmSimilarity: true, notesTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.trip.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, destination: true, startDate: true, endDate: true, status: true, notes: true, tags: true, embeddingText: true, embedding: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, nameTrgmSimilarity: true, destinationTrgmSimilarity: true, statusTrgmSimilarity: true, notesTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.trip.create({ data: { entityId: '<UUID>', name: '<String>', destination: '<String>', startDate: '<Date>', endDate: '<Date>', status: '<String>', notes: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', destinationTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', notesTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.trip.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.trip.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.userSetting`

CRUD operations for UserSetting records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `key` | String | Yes |
| `value` | JSON | Yes |
| `category` | String | Yes |

**Operations:**

```typescript
// List all userSetting records
const items = await db.userSetting.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, key: true, value: true, category: true } }).execute();

// Get one by id
const item = await db.userSetting.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, key: true, value: true, category: true } }).execute();

// Create
const created = await db.userSetting.create({ data: { entityId: '<UUID>', key: '<String>', value: '<JSON>', category: '<String>' }, select: { id: true } }).execute();

// Update
const updated = await db.userSetting.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.userSetting.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.venueChunk`

CRUD operations for VenueChunk records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `chunkIndex` | Int | Yes |
| `content` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `venueId` | UUID | Yes |
| `embeddingTextBm25Score` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all venueChunk records
const items = await db.venueChunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, venueId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.venueChunk.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chunkIndex: true, content: true, embeddingText: true, embedding: true, venueId: true, embeddingTextBm25Score: true, embeddingVectorDistance: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.venueChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', venueId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

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
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `title` | String | Yes |
| `url` | String | Yes |
| `embedding` | Vector | Yes |
| `venueId` | UUID | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all venueLink records
const items = await db.venueLink.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, url: true, embedding: true, venueId: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.venueLink.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, url: true, embedding: true, venueId: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.venueLink.create({ data: { entityId: '<UUID>', title: '<String>', url: '<String>', embedding: '<Vector>', venueId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute();

// Update
const updated = await db.venueLink.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.venueLink.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.webhook`

CRUD operations for Webhook records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `integrationId` | UUID | Yes |
| `url` | String | Yes |
| `eventType` | String | Yes |
| `secret` | String | Yes |
| `isActive` | Boolean | Yes |

**Operations:**

```typescript
// List all webhook records
const items = await db.webhook.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, integrationId: true, url: true, eventType: true, secret: true, isActive: true } }).execute();

// Get one by id
const item = await db.webhook.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, integrationId: true, url: true, eventType: true, secret: true, isActive: true } }).execute();

// Create
const created = await db.webhook.create({ data: { entityId: '<UUID>', integrationId: '<UUID>', url: '<String>', eventType: '<String>', secret: '<String>', isActive: '<Boolean>' }, select: { id: true } }).execute();

// Update
const updated = await db.webhook.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.webhook.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.workflow`

CRUD operations for Workflow records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `name` | String | Yes |
| `description` | String | Yes |
| `triggerType` | String | Yes |
| `triggerConfig` | JSON | Yes |
| `isActive` | Boolean | Yes |
| `tags` | String | Yes |

**Operations:**

```typescript
// List all workflow records
const items = await db.workflow.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, description: true, triggerType: true, triggerConfig: true, isActive: true, tags: true } }).execute();

// Get one by id
const item = await db.workflow.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, description: true, triggerType: true, triggerConfig: true, isActive: true, tags: true } }).execute();

// Create
const created = await db.workflow.create({ data: { entityId: '<UUID>', name: '<String>', description: '<String>', triggerType: '<String>', triggerConfig: '<JSON>', isActive: '<Boolean>', tags: '<String>' }, select: { id: true } }).execute();

// Update
const updated = await db.workflow.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.workflow.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.workflowRun`

CRUD operations for WorkflowRun records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `workflowId` | UUID | Yes |
| `status` | String | Yes |
| `startedAt` | Datetime | Yes |
| `completedAt` | Datetime | Yes |
| `input` | JSON | Yes |
| `output` | JSON | Yes |
| `error` | String | Yes |

**Operations:**

```typescript
// List all workflowRun records
const items = await db.workflowRun.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, workflowId: true, status: true, startedAt: true, completedAt: true, input: true, output: true, error: true } }).execute();

// Get one by id
const item = await db.workflowRun.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, workflowId: true, status: true, startedAt: true, completedAt: true, input: true, output: true, error: true } }).execute();

// Create
const created = await db.workflowRun.create({ data: { entityId: '<UUID>', workflowId: '<UUID>', status: '<String>', startedAt: '<Datetime>', completedAt: '<Datetime>', input: '<JSON>', output: '<JSON>', error: '<String>' }, select: { id: true } }).execute();

// Update
const updated = await db.workflowRun.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.workflowRun.delete({ where: { id: '<UUID>' } }).execute();
```

### `db.workflowStep`

CRUD operations for WorkflowStep records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `workflowId` | UUID | Yes |
| `stepOrder` | Int | Yes |
| `actionType` | String | Yes |
| `actionConfig` | JSON | Yes |
| `onSuccessStep` | Int | Yes |
| `onFailureStep` | Int | Yes |
| `timeoutMs` | Int | Yes |

**Operations:**

```typescript
// List all workflowStep records
const items = await db.workflowStep.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, workflowId: true, stepOrder: true, actionType: true, actionConfig: true, onSuccessStep: true, onFailureStep: true, timeoutMs: true } }).execute();

// Get one by id
const item = await db.workflowStep.findOne({ id: '<UUID>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, workflowId: true, stepOrder: true, actionType: true, actionConfig: true, onSuccessStep: true, onFailureStep: true, timeoutMs: true } }).execute();

// Create
const created = await db.workflowStep.create({ data: { entityId: '<UUID>', workflowId: '<UUID>', stepOrder: '<Int>', actionType: '<String>', actionConfig: '<JSON>', onSuccessStep: '<Int>', onFailureStep: '<Int>', timeoutMs: '<Int>' }, select: { id: true } }).execute();

// Update
const updated = await db.workflowStep.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.workflowStep.delete({ where: { id: '<UUID>' } }).execute();
```

---

Built by the [Constructive](https://constructive.io) team.

## Disclaimer

AS DESCRIBED IN THE LICENSES, THE SOFTWARE IS PROVIDED "AS IS", AT YOUR OWN RISK, AND WITHOUT WARRANTIES OF ANY KIND.

No developer or entity involved in creating this software will be liable for any claims or damages whatsoever associated with your use, inability to use, or your interaction with other users of the code, including any direct, indirect, incidental, special, exemplary, punitive or consequential damages, or loss of profits, cryptocurrencies, tokens, or anything else of value.
