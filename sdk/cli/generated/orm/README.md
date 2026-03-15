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
| `agentPrompt` | findMany, findOne, create, update, delete |
| `agentRule` | findMany, findOne, create, update, delete |
| `agentSkill` | findMany, findOne, create, update, delete |
| `agentTool` | findMany, findOne, create, update, delete |
| `calendarEventContact` | findMany, findOne, create, update, delete |
| `companyEvent` | findMany, findOne, create, update, delete |
| `companyImage` | findMany, findOne, create, update, delete |
| `contactCompany` | findMany, findOne, create, update, delete |
| `contactEvent` | findMany, findOne, create, update, delete |
| `contactImage` | findMany, findOne, create, update, delete |
| `dealContact` | findMany, findOne, create, update, delete |
| `eventImage` | findMany, findOne, create, update, delete |
| `eventVenue` | findMany, findOne, create, update, delete |
| `expenseContact` | findMany, findOne, create, update, delete |
| `goalHabit` | findMany, findOne, create, update, delete |
| `goalProject` | findMany, findOne, create, update, delete |
| `projectContact` | findMany, findOne, create, update, delete |
| `taskContact` | findMany, findOne, create, update, delete |
| `venueImage` | findMany, findOne, create, update, delete |
| `file` | findMany, findOne, create, update, delete |
| `milestone` | findMany, findOne, create, update, delete |
| `calendarAccount` | findMany, findOne, create, update, delete |
| `tag` | findMany, findOne, create, update, delete |
| `feedback` | findMany, findOne, create, update, delete |
| `attachment` | findMany, findOne, create, update, delete |
| `emailAccount` | findMany, findOne, create, update, delete |
| `activityLog` | findMany, findOne, create, update, delete |
| `contextRelation` | findMany, findOne, create, update, delete |
| `userSetting` | findMany, findOne, create, update, delete |
| `executionLog` | findMany, findOne, create, update, delete |
| `webhook` | findMany, findOne, create, update, delete |
| `notification` | findMany, findOne, create, update, delete |
| `process` | findMany, findOne, create, update, delete |
| `workflowRun` | findMany, findOne, create, update, delete |
| `integration` | findMany, findOne, create, update, delete |
| `skillExecution` | findMany, findOne, create, update, delete |
| `chat` | findMany, findOne, create, update, delete |
| `chunk` | findMany, findOne, create, update, delete |
| `thread` | findMany, findOne, create, update, delete |
| `chatMessage` | findMany, findOne, create, update, delete |
| `sessionArchive` | findMany, findOne, create, update, delete |
| `reminder` | findMany, findOne, create, update, delete |
| `image` | findMany, findOne, create, update, delete |
| `workflowStep` | findMany, findOne, create, update, delete |
| `listItem` | findMany, findOne, create, update, delete |
| `companyLink` | findMany, findOne, create, update, delete |
| `contactLink` | findMany, findOne, create, update, delete |
| `eventLink` | findMany, findOne, create, update, delete |
| `venueLink` | findMany, findOne, create, update, delete |
| `agentSpawn` | findMany, findOne, create, update, delete |
| `scheduledJob` | findMany, findOne, create, update, delete |
| `habit` | findMany, findOne, create, update, delete |
| `workflow` | findMany, findOne, create, update, delete |
| `habitLog` | findMany, findOne, create, update, delete |
| `expense` | findMany, findOne, create, update, delete |
| `billingSubscription` | findMany, findOne, create, update, delete |
| `idea` | findMany, findOne, create, update, delete |
| `list` | findMany, findOne, create, update, delete |
| `interaction` | findMany, findOne, create, update, delete |
| `repository` | findMany, findOne, create, update, delete |
| `deal` | findMany, findOne, create, update, delete |
| `goal` | findMany, findOne, create, update, delete |
| `note` | findMany, findOne, create, update, delete |
| `prompt` | findMany, findOne, create, update, delete |
| `blueprint` | findMany, findOne, create, update, delete |
| `template` | findMany, findOne, create, update, delete |
| `tool` | findMany, findOne, create, update, delete |
| `recipe` | findMany, findOne, create, update, delete |
| `trip` | findMany, findOne, create, update, delete |
| `calendarEvent` | findMany, findOne, create, update, delete |
| `message` | findMany, findOne, create, update, delete |
| `memory` | findMany, findOne, create, update, delete |
| `rule` | findMany, findOne, create, update, delete |
| `task` | findMany, findOne, create, update, delete |
| `agent` | findMany, findOne, create, update, delete |
| `session` | findMany, findOne, create, update, delete |
| `skill` | findMany, findOne, create, update, delete |
| `project` | findMany, findOne, create, update, delete |
| `document` | findMany, findOne, create, update, delete |
| `company` | findMany, findOne, create, update, delete |
| `event` | findMany, findOne, create, update, delete |
| `contact` | findMany, findOne, create, update, delete |
| `venue` | findMany, findOne, create, update, delete |

## Table Operations

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
const item = await db.agentPrompt.findOne({ id: '<value>', select: { agentId: true, promptId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.agentPrompt.create({ data: { agentId: '<value>', promptId: '<value>', entityId: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.agentPrompt.update({ where: { id: '<value>' }, data: { agentId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.agentPrompt.delete({ where: { id: '<value>' } }).execute();
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
const item = await db.agentRule.findOne({ id: '<value>', select: { agentId: true, ruleId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.agentRule.create({ data: { agentId: '<value>', ruleId: '<value>', entityId: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.agentRule.update({ where: { id: '<value>' }, data: { agentId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.agentRule.delete({ where: { id: '<value>' } }).execute();
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
const item = await db.agentSkill.findOne({ id: '<value>', select: { agentId: true, skillId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.agentSkill.create({ data: { agentId: '<value>', skillId: '<value>', entityId: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.agentSkill.update({ where: { id: '<value>' }, data: { agentId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.agentSkill.delete({ where: { id: '<value>' } }).execute();
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
const item = await db.agentTool.findOne({ id: '<value>', select: { agentId: true, toolId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.agentTool.create({ data: { agentId: '<value>', toolId: '<value>', entityId: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.agentTool.update({ where: { id: '<value>' }, data: { agentId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.agentTool.delete({ where: { id: '<value>' } }).execute();
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
const item = await db.calendarEventContact.findOne({ id: '<value>', select: { calendarEventId: true, contactId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.calendarEventContact.create({ data: { calendarEventId: '<value>', contactId: '<value>', entityId: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.calendarEventContact.update({ where: { id: '<value>' }, data: { calendarEventId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.calendarEventContact.delete({ where: { id: '<value>' } }).execute();
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
const item = await db.companyEvent.findOne({ id: '<value>', select: { companyId: true, eventId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.companyEvent.create({ data: { companyId: '<value>', eventId: '<value>', entityId: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.companyEvent.update({ where: { id: '<value>' }, data: { companyId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.companyEvent.delete({ where: { id: '<value>' } }).execute();
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
const item = await db.expenseContact.findOne({ id: '<value>', select: { expenseId: true, contactId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.expenseContact.create({ data: { expenseId: '<value>', contactId: '<value>', entityId: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.expenseContact.update({ where: { id: '<value>' }, data: { expenseId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.expenseContact.delete({ where: { id: '<value>' } }).execute();
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
const item = await db.goalHabit.findOne({ id: '<value>', select: { goalId: true, habitId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.goalHabit.create({ data: { goalId: '<value>', habitId: '<value>', entityId: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.goalHabit.update({ where: { id: '<value>' }, data: { goalId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.goalHabit.delete({ where: { id: '<value>' } }).execute();
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
const item = await db.goalProject.findOne({ id: '<value>', select: { goalId: true, projectId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.goalProject.create({ data: { goalId: '<value>', projectId: '<value>', entityId: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.goalProject.update({ where: { id: '<value>' }, data: { goalId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.goalProject.delete({ where: { id: '<value>' } }).execute();
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
const item = await db.projectContact.findOne({ id: '<value>', select: { projectId: true, contactId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.projectContact.create({ data: { projectId: '<value>', contactId: '<value>', entityId: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.projectContact.update({ where: { id: '<value>' }, data: { projectId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.projectContact.delete({ where: { id: '<value>' } }).execute();
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
const item = await db.taskContact.findOne({ id: '<value>', select: { taskId: true, contactId: true, id: true, entityId: true } }).execute();

// Create
const created = await db.taskContact.create({ data: { taskId: '<value>', contactId: '<value>', entityId: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.taskContact.update({ where: { id: '<value>' }, data: { taskId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.taskContact.delete({ where: { id: '<value>' } }).execute();
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
| `pathTrgmSimilarity` | Float | Yes |
| `languageTrgmSimilarity` | Float | Yes |
| `hashTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all file records
const items = await db.file.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, repositoryId: true, path: true, language: true, hash: true, pathTrgmSimilarity: true, languageTrgmSimilarity: true, hashTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.file.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, repositoryId: true, path: true, language: true, hash: true, pathTrgmSimilarity: true, languageTrgmSimilarity: true, hashTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.file.create({ data: { entityId: '<value>', repositoryId: '<value>', path: '<value>', language: '<value>', hash: '<value>', pathTrgmSimilarity: '<value>', languageTrgmSimilarity: '<value>', hashTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.file.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.file.delete({ where: { id: '<value>' } }).execute();
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
| `nameTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all milestone records
const items = await db.milestone.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, projectId: true, name: true, dueDate: true, status: true, nameTrgmSimilarity: true, statusTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.milestone.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, projectId: true, name: true, dueDate: true, status: true, nameTrgmSimilarity: true, statusTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.milestone.create({ data: { entityId: '<value>', projectId: '<value>', name: '<value>', dueDate: '<value>', status: '<value>', nameTrgmSimilarity: '<value>', statusTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.milestone.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.milestone.delete({ where: { id: '<value>' } }).execute();
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
| `emailTrgmSimilarity` | Float | Yes |
| `providerTrgmSimilarity` | Float | Yes |
| `syncTokenTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all calendarAccount records
const items = await db.calendarAccount.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, email: true, provider: true, syncToken: true, lastSyncedAt: true, emailTrgmSimilarity: true, providerTrgmSimilarity: true, syncTokenTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.calendarAccount.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, email: true, provider: true, syncToken: true, lastSyncedAt: true, emailTrgmSimilarity: true, providerTrgmSimilarity: true, syncTokenTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.calendarAccount.create({ data: { entityId: '<value>', email: '<value>', provider: '<value>', syncToken: '<value>', lastSyncedAt: '<value>', emailTrgmSimilarity: '<value>', providerTrgmSimilarity: '<value>', syncTokenTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.calendarAccount.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.calendarAccount.delete({ where: { id: '<value>' } }).execute();
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
| `nameTrgmSimilarity` | Float | Yes |
| `colorTrgmSimilarity` | Float | Yes |
| `categoryTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all tag records
const items = await db.tag.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, color: true, category: true, usageCount: true, nameTrgmSimilarity: true, colorTrgmSimilarity: true, categoryTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.tag.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, color: true, category: true, usageCount: true, nameTrgmSimilarity: true, colorTrgmSimilarity: true, categoryTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.tag.create({ data: { entityId: '<value>', name: '<value>', color: '<value>', category: '<value>', usageCount: '<value>', nameTrgmSimilarity: '<value>', colorTrgmSimilarity: '<value>', categoryTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.tag.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.tag.delete({ where: { id: '<value>' } }).execute();
```

### `db.feedback`

CRUD operations for Feedback records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `targetType` | String | Yes |
| `targetId` | UUID | Yes |
| `rating` | Int | Yes |
| `comment` | String | Yes |
| `source` | String | Yes |
| `targetTypeTrgmSimilarity` | Float | Yes |
| `commentTrgmSimilarity` | Float | Yes |
| `sourceTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all feedback records
const items = await db.feedback.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, targetType: true, targetId: true, rating: true, comment: true, source: true, targetTypeTrgmSimilarity: true, commentTrgmSimilarity: true, sourceTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.feedback.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, targetType: true, targetId: true, rating: true, comment: true, source: true, targetTypeTrgmSimilarity: true, commentTrgmSimilarity: true, sourceTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.feedback.create({ data: { entityId: '<value>', targetType: '<value>', targetId: '<value>', rating: '<value>', comment: '<value>', source: '<value>', targetTypeTrgmSimilarity: '<value>', commentTrgmSimilarity: '<value>', sourceTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.feedback.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.feedback.delete({ where: { id: '<value>' } }).execute();
```

### `db.attachment`

CRUD operations for Attachment records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `url` | String | Yes |
| `filename` | String | Yes |
| `mimeType` | String | Yes |
| `sizeBytes` | Int | Yes |
| `attachableType` | String | Yes |
| `attachableId` | UUID | Yes |
| `urlTrgmSimilarity` | Float | Yes |
| `filenameTrgmSimilarity` | Float | Yes |
| `mimeTypeTrgmSimilarity` | Float | Yes |
| `attachableTypeTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all attachment records
const items = await db.attachment.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, url: true, filename: true, mimeType: true, sizeBytes: true, attachableType: true, attachableId: true, urlTrgmSimilarity: true, filenameTrgmSimilarity: true, mimeTypeTrgmSimilarity: true, attachableTypeTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.attachment.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, url: true, filename: true, mimeType: true, sizeBytes: true, attachableType: true, attachableId: true, urlTrgmSimilarity: true, filenameTrgmSimilarity: true, mimeTypeTrgmSimilarity: true, attachableTypeTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.attachment.create({ data: { entityId: '<value>', url: '<value>', filename: '<value>', mimeType: '<value>', sizeBytes: '<value>', attachableType: '<value>', attachableId: '<value>', urlTrgmSimilarity: '<value>', filenameTrgmSimilarity: '<value>', mimeTypeTrgmSimilarity: '<value>', attachableTypeTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.attachment.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.attachment.delete({ where: { id: '<value>' } }).execute();
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
| `emailTrgmSimilarity` | Float | Yes |
| `providerTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all emailAccount records
const items = await db.emailAccount.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, email: true, provider: true, syncState: true, emailTrgmSimilarity: true, providerTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.emailAccount.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, email: true, provider: true, syncState: true, emailTrgmSimilarity: true, providerTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.emailAccount.create({ data: { entityId: '<value>', email: '<value>', provider: '<value>', syncState: '<value>', emailTrgmSimilarity: '<value>', providerTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.emailAccount.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.emailAccount.delete({ where: { id: '<value>' } }).execute();
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
| `actorType` | String | Yes |
| `actorId` | UUID | Yes |
| `action` | String | Yes |
| `targetType` | String | Yes |
| `targetId` | UUID | Yes |
| `metadata` | JSON | Yes |
| `actorTypeTrgmSimilarity` | Float | Yes |
| `actionTrgmSimilarity` | Float | Yes |
| `targetTypeTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all activityLog records
const items = await db.activityLog.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, actorType: true, actorId: true, action: true, targetType: true, targetId: true, metadata: true, actorTypeTrgmSimilarity: true, actionTrgmSimilarity: true, targetTypeTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.activityLog.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, actorType: true, actorId: true, action: true, targetType: true, targetId: true, metadata: true, actorTypeTrgmSimilarity: true, actionTrgmSimilarity: true, targetTypeTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.activityLog.create({ data: { entityId: '<value>', actorType: '<value>', actorId: '<value>', action: '<value>', targetType: '<value>', targetId: '<value>', metadata: '<value>', actorTypeTrgmSimilarity: '<value>', actionTrgmSimilarity: '<value>', targetTypeTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.activityLog.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.activityLog.delete({ where: { id: '<value>' } }).execute();
```

### `db.contextRelation`

CRUD operations for ContextRelation records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `fromType` | String | Yes |
| `fromId` | UUID | Yes |
| `toType` | String | Yes |
| `toId` | UUID | Yes |
| `relationKind` | String | Yes |
| `reason` | String | Yes |
| `strength` | BigFloat | Yes |
| `fromTypeTrgmSimilarity` | Float | Yes |
| `toTypeTrgmSimilarity` | Float | Yes |
| `relationKindTrgmSimilarity` | Float | Yes |
| `reasonTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all contextRelation records
const items = await db.contextRelation.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, fromType: true, fromId: true, toType: true, toId: true, relationKind: true, reason: true, strength: true, fromTypeTrgmSimilarity: true, toTypeTrgmSimilarity: true, relationKindTrgmSimilarity: true, reasonTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.contextRelation.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, fromType: true, fromId: true, toType: true, toId: true, relationKind: true, reason: true, strength: true, fromTypeTrgmSimilarity: true, toTypeTrgmSimilarity: true, relationKindTrgmSimilarity: true, reasonTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.contextRelation.create({ data: { entityId: '<value>', fromType: '<value>', fromId: '<value>', toType: '<value>', toId: '<value>', relationKind: '<value>', reason: '<value>', strength: '<value>', fromTypeTrgmSimilarity: '<value>', toTypeTrgmSimilarity: '<value>', relationKindTrgmSimilarity: '<value>', reasonTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.contextRelation.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.contextRelation.delete({ where: { id: '<value>' } }).execute();
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
| `keyTrgmSimilarity` | Float | Yes |
| `categoryTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all userSetting records
const items = await db.userSetting.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, key: true, value: true, category: true, keyTrgmSimilarity: true, categoryTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.userSetting.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, key: true, value: true, category: true, keyTrgmSimilarity: true, categoryTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.userSetting.create({ data: { entityId: '<value>', key: '<value>', value: '<value>', category: '<value>', keyTrgmSimilarity: '<value>', categoryTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.userSetting.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.userSetting.delete({ where: { id: '<value>' } }).execute();
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
| `stepNameTrgmSimilarity` | Float | Yes |
| `inputTrgmSimilarity` | Float | Yes |
| `outputTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all executionLog records
const items = await db.executionLog.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, sessionId: true, stepName: true, input: true, output: true, toolCalls: true, durationMs: true, stepNameTrgmSimilarity: true, inputTrgmSimilarity: true, outputTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.executionLog.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, sessionId: true, stepName: true, input: true, output: true, toolCalls: true, durationMs: true, stepNameTrgmSimilarity: true, inputTrgmSimilarity: true, outputTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.executionLog.create({ data: { entityId: '<value>', sessionId: '<value>', stepName: '<value>', input: '<value>', output: '<value>', toolCalls: '<value>', durationMs: '<value>', stepNameTrgmSimilarity: '<value>', inputTrgmSimilarity: '<value>', outputTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.executionLog.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.executionLog.delete({ where: { id: '<value>' } }).execute();
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
| `urlTrgmSimilarity` | Float | Yes |
| `eventTypeTrgmSimilarity` | Float | Yes |
| `secretTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all webhook records
const items = await db.webhook.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, integrationId: true, url: true, eventType: true, secret: true, isActive: true, urlTrgmSimilarity: true, eventTypeTrgmSimilarity: true, secretTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.webhook.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, integrationId: true, url: true, eventType: true, secret: true, isActive: true, urlTrgmSimilarity: true, eventTypeTrgmSimilarity: true, secretTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.webhook.create({ data: { entityId: '<value>', integrationId: '<value>', url: '<value>', eventType: '<value>', secret: '<value>', isActive: '<value>', urlTrgmSimilarity: '<value>', eventTypeTrgmSimilarity: '<value>', secretTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.webhook.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.webhook.delete({ where: { id: '<value>' } }).execute();
```

### `db.notification`

CRUD operations for Notification records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `title` | String | Yes |
| `body` | String | Yes |
| `type` | String | Yes |
| `priority` | String | Yes |
| `readAt` | Datetime | Yes |
| `actionUrl` | String | Yes |
| `sourceEntityId` | UUID | Yes |
| `sourceEntityType` | String | Yes |
| `titleTrgmSimilarity` | Float | Yes |
| `bodyTrgmSimilarity` | Float | Yes |
| `typeTrgmSimilarity` | Float | Yes |
| `priorityTrgmSimilarity` | Float | Yes |
| `actionUrlTrgmSimilarity` | Float | Yes |
| `sourceEntityTypeTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all notification records
const items = await db.notification.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, body: true, type: true, priority: true, readAt: true, actionUrl: true, sourceEntityId: true, sourceEntityType: true, titleTrgmSimilarity: true, bodyTrgmSimilarity: true, typeTrgmSimilarity: true, priorityTrgmSimilarity: true, actionUrlTrgmSimilarity: true, sourceEntityTypeTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.notification.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, body: true, type: true, priority: true, readAt: true, actionUrl: true, sourceEntityId: true, sourceEntityType: true, titleTrgmSimilarity: true, bodyTrgmSimilarity: true, typeTrgmSimilarity: true, priorityTrgmSimilarity: true, actionUrlTrgmSimilarity: true, sourceEntityTypeTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.notification.create({ data: { entityId: '<value>', title: '<value>', body: '<value>', type: '<value>', priority: '<value>', readAt: '<value>', actionUrl: '<value>', sourceEntityId: '<value>', sourceEntityType: '<value>', titleTrgmSimilarity: '<value>', bodyTrgmSimilarity: '<value>', typeTrgmSimilarity: '<value>', priorityTrgmSimilarity: '<value>', actionUrlTrgmSimilarity: '<value>', sourceEntityTypeTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.notification.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.notification.delete({ where: { id: '<value>' } }).execute();
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
| `commandTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `logsPathTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all process records
const items = await db.process.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, pid: true, agentId: true, command: true, startedAt: true, endedAt: true, status: true, exitCode: true, logsPath: true, commandTrgmSimilarity: true, statusTrgmSimilarity: true, logsPathTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.process.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, pid: true, agentId: true, command: true, startedAt: true, endedAt: true, status: true, exitCode: true, logsPath: true, commandTrgmSimilarity: true, statusTrgmSimilarity: true, logsPathTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.process.create({ data: { entityId: '<value>', pid: '<value>', agentId: '<value>', command: '<value>', startedAt: '<value>', endedAt: '<value>', status: '<value>', exitCode: '<value>', logsPath: '<value>', commandTrgmSimilarity: '<value>', statusTrgmSimilarity: '<value>', logsPathTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.process.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.process.delete({ where: { id: '<value>' } }).execute();
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
| `statusTrgmSimilarity` | Float | Yes |
| `errorTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all workflowRun records
const items = await db.workflowRun.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, workflowId: true, status: true, startedAt: true, completedAt: true, input: true, output: true, error: true, statusTrgmSimilarity: true, errorTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.workflowRun.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, workflowId: true, status: true, startedAt: true, completedAt: true, input: true, output: true, error: true, statusTrgmSimilarity: true, errorTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.workflowRun.create({ data: { entityId: '<value>', workflowId: '<value>', status: '<value>', startedAt: '<value>', completedAt: '<value>', input: '<value>', output: '<value>', error: '<value>', statusTrgmSimilarity: '<value>', errorTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.workflowRun.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.workflowRun.delete({ where: { id: '<value>' } }).execute();
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
| `nameTrgmSimilarity` | Float | Yes |
| `providerTrgmSimilarity` | Float | Yes |
| `typeTrgmSimilarity` | Float | Yes |
| `credentialsRefTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all integration records
const items = await db.integration.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, provider: true, type: true, credentialsRef: true, config: true, status: true, lastSyncedAt: true, nameTrgmSimilarity: true, providerTrgmSimilarity: true, typeTrgmSimilarity: true, credentialsRefTrgmSimilarity: true, statusTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.integration.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, provider: true, type: true, credentialsRef: true, config: true, status: true, lastSyncedAt: true, nameTrgmSimilarity: true, providerTrgmSimilarity: true, typeTrgmSimilarity: true, credentialsRefTrgmSimilarity: true, statusTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.integration.create({ data: { entityId: '<value>', name: '<value>', provider: '<value>', type: '<value>', credentialsRef: '<value>', config: '<value>', status: '<value>', lastSyncedAt: '<value>', nameTrgmSimilarity: '<value>', providerTrgmSimilarity: '<value>', typeTrgmSimilarity: '<value>', credentialsRefTrgmSimilarity: '<value>', statusTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.integration.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.integration.delete({ where: { id: '<value>' } }).execute();
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
| `statusTrgmSimilarity` | Float | Yes |
| `errorTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all skillExecution records
const items = await db.skillExecution.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, skillId: true, agentId: true, sessionId: true, status: true, startedAt: true, completedAt: true, durationMs: true, input: true, output: true, error: true, statusTrgmSimilarity: true, errorTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.skillExecution.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, skillId: true, agentId: true, sessionId: true, status: true, startedAt: true, completedAt: true, durationMs: true, input: true, output: true, error: true, statusTrgmSimilarity: true, errorTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.skillExecution.create({ data: { entityId: '<value>', skillId: '<value>', agentId: '<value>', sessionId: '<value>', status: '<value>', startedAt: '<value>', completedAt: '<value>', durationMs: '<value>', input: '<value>', output: '<value>', error: '<value>', statusTrgmSimilarity: '<value>', errorTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.skillExecution.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.skillExecution.delete({ where: { id: '<value>' } }).execute();
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
| `titleTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all chat records
const items = await db.chat.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, startedAt: true, embeddingText: true, embedding: true, titleTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.chat.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, startedAt: true, embeddingText: true, embedding: true, titleTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.chat.create({ data: { entityId: '<value>', title: '<value>', startedAt: '<value>', embeddingText: '<value>', embedding: '<value>', titleTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.chat.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.chat.delete({ where: { id: '<value>' } }).execute();
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
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all chunk records
const items = await db.chunk.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, fileId: true, repositoryId: true, content: true, startLine: true, endLine: true, embeddingText: true, embedding: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.chunk.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, fileId: true, repositoryId: true, content: true, startLine: true, endLine: true, embeddingText: true, embedding: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.chunk.create({ data: { entityId: '<value>', fileId: '<value>', repositoryId: '<value>', content: '<value>', startLine: '<value>', endLine: '<value>', embeddingText: '<value>', embedding: '<value>', contentTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.chunk.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.chunk.delete({ where: { id: '<value>' } }).execute();
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
| `titleTrgmSimilarity` | Float | Yes |
| `summaryTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all thread records
const items = await db.thread.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, summary: true, status: true, parentThreadId: true, embeddingText: true, embedding: true, titleTrgmSimilarity: true, summaryTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.thread.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, summary: true, status: true, parentThreadId: true, embeddingText: true, embedding: true, titleTrgmSimilarity: true, summaryTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.thread.create({ data: { entityId: '<value>', title: '<value>', summary: '<value>', status: '<value>', parentThreadId: '<value>', embeddingText: '<value>', embedding: '<value>', titleTrgmSimilarity: '<value>', summaryTrgmSimilarity: '<value>', statusTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.thread.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.thread.delete({ where: { id: '<value>' } }).execute();
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
| `roleTrgmSimilarity` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all chatMessage records
const items = await db.chatMessage.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, chatId: true, threadId: true, role: true, content: true, toolCalls: true, embeddingText: true, embedding: true, roleTrgmSimilarity: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.chatMessage.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, chatId: true, threadId: true, role: true, content: true, toolCalls: true, embeddingText: true, embedding: true, roleTrgmSimilarity: true, contentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.chatMessage.create({ data: { entityId: '<value>', chatId: '<value>', threadId: '<value>', role: '<value>', content: '<value>', toolCalls: '<value>', embeddingText: '<value>', embedding: '<value>', roleTrgmSimilarity: '<value>', contentTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.chatMessage.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.chatMessage.delete({ where: { id: '<value>' } }).execute();
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
| `summaryTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all sessionArchive records
const items = await db.sessionArchive.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, sessionId: true, archiveIndex: true, summary: true, messageRangeStart: true, messageRangeEnd: true, rawMessages: true, embeddingText: true, embedding: true, summaryTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.sessionArchive.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, sessionId: true, archiveIndex: true, summary: true, messageRangeStart: true, messageRangeEnd: true, rawMessages: true, embeddingText: true, embedding: true, summaryTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.sessionArchive.create({ data: { entityId: '<value>', sessionId: '<value>', archiveIndex: '<value>', summary: '<value>', messageRangeStart: '<value>', messageRangeEnd: '<value>', rawMessages: '<value>', embeddingText: '<value>', embedding: '<value>', summaryTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.sessionArchive.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.sessionArchive.delete({ where: { id: '<value>' } }).execute();
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
| `relatedEntityId` | UUID | Yes |
| `relatedEntityType` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `titleTrgmSimilarity` | Float | Yes |
| `recurrenceTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `relatedEntityTypeTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all reminder records
const items = await db.reminder.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, dueAt: true, completedAt: true, recurrence: true, status: true, relatedEntityId: true, relatedEntityType: true, embeddingText: true, embedding: true, titleTrgmSimilarity: true, recurrenceTrgmSimilarity: true, statusTrgmSimilarity: true, relatedEntityTypeTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.reminder.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, dueAt: true, completedAt: true, recurrence: true, status: true, relatedEntityId: true, relatedEntityType: true, embeddingText: true, embedding: true, titleTrgmSimilarity: true, recurrenceTrgmSimilarity: true, statusTrgmSimilarity: true, relatedEntityTypeTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.reminder.create({ data: { entityId: '<value>', title: '<value>', dueAt: '<value>', completedAt: '<value>', recurrence: '<value>', status: '<value>', relatedEntityId: '<value>', relatedEntityType: '<value>', embeddingText: '<value>', embedding: '<value>', titleTrgmSimilarity: '<value>', recurrenceTrgmSimilarity: '<value>', statusTrgmSimilarity: '<value>', relatedEntityTypeTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.reminder.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.reminder.delete({ where: { id: '<value>' } }).execute();
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
| `urlTrgmSimilarity` | Float | Yes |
| `altTextTrgmSimilarity` | Float | Yes |
| `captionTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all image records
const items = await db.image.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, url: true, meta: true, altText: true, caption: true, embedding: true, urlTrgmSimilarity: true, altTextTrgmSimilarity: true, captionTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.image.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, url: true, meta: true, altText: true, caption: true, embedding: true, urlTrgmSimilarity: true, altTextTrgmSimilarity: true, captionTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.image.create({ data: { entityId: '<value>', url: '<value>', meta: '<value>', altText: '<value>', caption: '<value>', embedding: '<value>', urlTrgmSimilarity: '<value>', altTextTrgmSimilarity: '<value>', captionTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.image.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.image.delete({ where: { id: '<value>' } }).execute();
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
| `actionTypeTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all workflowStep records
const items = await db.workflowStep.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, workflowId: true, stepOrder: true, actionType: true, actionConfig: true, onSuccessStep: true, onFailureStep: true, timeoutMs: true, actionTypeTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.workflowStep.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, workflowId: true, stepOrder: true, actionType: true, actionConfig: true, onSuccessStep: true, onFailureStep: true, timeoutMs: true, actionTypeTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.workflowStep.create({ data: { entityId: '<value>', workflowId: '<value>', stepOrder: '<value>', actionType: '<value>', actionConfig: '<value>', onSuccessStep: '<value>', onFailureStep: '<value>', timeoutMs: '<value>', actionTypeTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.workflowStep.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.workflowStep.delete({ where: { id: '<value>' } }).execute();
```

### `db.listItem`

CRUD operations for ListItem records.

**Fields:**

| Field | Type | Editable |
|-------|------|----------|
| `id` | UUID | No |
| `entityId` | UUID | Yes |
| `createdAt` | Datetime | No |
| `updatedAt` | Datetime | No |
| `listId` | UUID | Yes |
| `content` | String | Yes |
| `position` | Int | Yes |
| `isChecked` | Boolean | Yes |
| `refId` | UUID | Yes |
| `refType` | String | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `refTypeTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all listItem records
const items = await db.listItem.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, listId: true, content: true, position: true, isChecked: true, refId: true, refType: true, contentTrgmSimilarity: true, refTypeTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.listItem.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, listId: true, content: true, position: true, isChecked: true, refId: true, refType: true, contentTrgmSimilarity: true, refTypeTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.listItem.create({ data: { entityId: '<value>', listId: '<value>', content: '<value>', position: '<value>', isChecked: '<value>', refId: '<value>', refType: '<value>', contentTrgmSimilarity: '<value>', refTypeTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.listItem.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.listItem.delete({ where: { id: '<value>' } }).execute();
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
| `titleTrgmSimilarity` | Float | Yes |
| `urlTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all companyLink records
const items = await db.companyLink.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, url: true, embedding: true, companyId: true, titleTrgmSimilarity: true, urlTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.companyLink.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, url: true, embedding: true, companyId: true, titleTrgmSimilarity: true, urlTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.companyLink.create({ data: { entityId: '<value>', title: '<value>', url: '<value>', embedding: '<value>', companyId: '<value>', titleTrgmSimilarity: '<value>', urlTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.companyLink.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.companyLink.delete({ where: { id: '<value>' } }).execute();
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
| `titleTrgmSimilarity` | Float | Yes |
| `urlTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all contactLink records
const items = await db.contactLink.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, url: true, embedding: true, contactId: true, titleTrgmSimilarity: true, urlTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.contactLink.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, url: true, embedding: true, contactId: true, titleTrgmSimilarity: true, urlTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.contactLink.create({ data: { entityId: '<value>', title: '<value>', url: '<value>', embedding: '<value>', contactId: '<value>', titleTrgmSimilarity: '<value>', urlTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.contactLink.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.contactLink.delete({ where: { id: '<value>' } }).execute();
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
| `titleTrgmSimilarity` | Float | Yes |
| `urlTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all eventLink records
const items = await db.eventLink.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, url: true, embedding: true, eventId: true, titleTrgmSimilarity: true, urlTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.eventLink.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, url: true, embedding: true, eventId: true, titleTrgmSimilarity: true, urlTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.eventLink.create({ data: { entityId: '<value>', title: '<value>', url: '<value>', embedding: '<value>', eventId: '<value>', titleTrgmSimilarity: '<value>', urlTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.eventLink.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.eventLink.delete({ where: { id: '<value>' } }).execute();
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
| `titleTrgmSimilarity` | Float | Yes |
| `urlTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all venueLink records
const items = await db.venueLink.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, url: true, embedding: true, venueId: true, titleTrgmSimilarity: true, urlTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.venueLink.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, url: true, embedding: true, venueId: true, titleTrgmSimilarity: true, urlTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.venueLink.create({ data: { entityId: '<value>', title: '<value>', url: '<value>', embedding: '<value>', venueId: '<value>', titleTrgmSimilarity: '<value>', urlTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.venueLink.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.venueLink.delete({ where: { id: '<value>' } }).execute();
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
| `taskTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all agentSpawn records
const items = await db.agentSpawn.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, parentAgentId: true, childAgentId: true, sessionId: true, task: true, status: true, result: true, maxIterations: true, startedAt: true, completedAt: true, agentId: true, taskTrgmSimilarity: true, statusTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.agentSpawn.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, parentAgentId: true, childAgentId: true, sessionId: true, task: true, status: true, result: true, maxIterations: true, startedAt: true, completedAt: true, agentId: true, taskTrgmSimilarity: true, statusTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.agentSpawn.create({ data: { entityId: '<value>', parentAgentId: '<value>', childAgentId: '<value>', sessionId: '<value>', task: '<value>', status: '<value>', result: '<value>', maxIterations: '<value>', startedAt: '<value>', completedAt: '<value>', agentId: '<value>', taskTrgmSimilarity: '<value>', statusTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.agentSpawn.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.agentSpawn.delete({ where: { id: '<value>' } }).execute();
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
| `nameTrgmSimilarity` | Float | Yes |
| `scheduleTypeTrgmSimilarity` | Float | Yes |
| `scheduleExprTrgmSimilarity` | Float | Yes |
| `commandTrgmSimilarity` | Float | Yes |
| `messageTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all scheduledJob records
const items = await db.scheduledJob.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, scheduleType: true, scheduleExpr: true, runAt: true, command: true, message: true, agentId: true, sessionId: true, isActive: true, deleteAfterRun: true, lastRunAt: true, nextRunAt: true, runCount: true, lastResult: true, nameTrgmSimilarity: true, scheduleTypeTrgmSimilarity: true, scheduleExprTrgmSimilarity: true, commandTrgmSimilarity: true, messageTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.scheduledJob.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, scheduleType: true, scheduleExpr: true, runAt: true, command: true, message: true, agentId: true, sessionId: true, isActive: true, deleteAfterRun: true, lastRunAt: true, nextRunAt: true, runCount: true, lastResult: true, nameTrgmSimilarity: true, scheduleTypeTrgmSimilarity: true, scheduleExprTrgmSimilarity: true, commandTrgmSimilarity: true, messageTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.scheduledJob.create({ data: { entityId: '<value>', name: '<value>', scheduleType: '<value>', scheduleExpr: '<value>', runAt: '<value>', command: '<value>', message: '<value>', agentId: '<value>', sessionId: '<value>', isActive: '<value>', deleteAfterRun: '<value>', lastRunAt: '<value>', nextRunAt: '<value>', runCount: '<value>', lastResult: '<value>', nameTrgmSimilarity: '<value>', scheduleTypeTrgmSimilarity: '<value>', scheduleExprTrgmSimilarity: '<value>', commandTrgmSimilarity: '<value>', messageTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.scheduledJob.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.scheduledJob.delete({ where: { id: '<value>' } }).execute();
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
| `nameTrgmSimilarity` | Float | Yes |
| `frequencyTrgmSimilarity` | Float | Yes |
| `categoryTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all habit records
const items = await db.habit.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, frequency: true, targetCount: true, currentStreak: true, bestStreak: true, category: true, tags: true, nameTrgmSimilarity: true, frequencyTrgmSimilarity: true, categoryTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.habit.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, frequency: true, targetCount: true, currentStreak: true, bestStreak: true, category: true, tags: true, nameTrgmSimilarity: true, frequencyTrgmSimilarity: true, categoryTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.habit.create({ data: { entityId: '<value>', name: '<value>', frequency: '<value>', targetCount: '<value>', currentStreak: '<value>', bestStreak: '<value>', category: '<value>', tags: '<value>', nameTrgmSimilarity: '<value>', frequencyTrgmSimilarity: '<value>', categoryTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.habit.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.habit.delete({ where: { id: '<value>' } }).execute();
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
| `nameTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `triggerTypeTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all workflow records
const items = await db.workflow.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, description: true, triggerType: true, triggerConfig: true, isActive: true, tags: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, triggerTypeTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.workflow.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, description: true, triggerType: true, triggerConfig: true, isActive: true, tags: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, triggerTypeTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.workflow.create({ data: { entityId: '<value>', name: '<value>', description: '<value>', triggerType: '<value>', triggerConfig: '<value>', isActive: '<value>', tags: '<value>', nameTrgmSimilarity: '<value>', descriptionTrgmSimilarity: '<value>', triggerTypeTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.workflow.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.workflow.delete({ where: { id: '<value>' } }).execute();
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
| `activityTypeTrgmSimilarity` | Float | Yes |
| `distanceUnitTrgmSimilarity` | Float | Yes |
| `weightUnitTrgmSimilarity` | Float | Yes |
| `notesTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all habitLog records
const items = await db.habitLog.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, habitId: true, completedAt: true, activityType: true, durationMinutes: true, distance: true, distanceUnit: true, reps: true, sets: true, weightAmount: true, weightUnit: true, calories: true, data: true, notes: true, tags: true, activityTypeTrgmSimilarity: true, distanceUnitTrgmSimilarity: true, weightUnitTrgmSimilarity: true, notesTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.habitLog.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, habitId: true, completedAt: true, activityType: true, durationMinutes: true, distance: true, distanceUnit: true, reps: true, sets: true, weightAmount: true, weightUnit: true, calories: true, data: true, notes: true, tags: true, activityTypeTrgmSimilarity: true, distanceUnitTrgmSimilarity: true, weightUnitTrgmSimilarity: true, notesTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.habitLog.create({ data: { entityId: '<value>', habitId: '<value>', completedAt: '<value>', activityType: '<value>', durationMinutes: '<value>', distance: '<value>', distanceUnit: '<value>', reps: '<value>', sets: '<value>', weightAmount: '<value>', weightUnit: '<value>', calories: '<value>', data: '<value>', notes: '<value>', tags: '<value>', activityTypeTrgmSimilarity: '<value>', distanceUnitTrgmSimilarity: '<value>', weightUnitTrgmSimilarity: '<value>', notesTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.habitLog.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.habitLog.delete({ where: { id: '<value>' } }).execute();
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
| `currencyTrgmSimilarity` | Float | Yes |
| `categoryTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `merchantTrgmSimilarity` | Float | Yes |
| `receiptUrlTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all expense records
const items = await db.expense.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, amount: true, currency: true, date: true, category: true, description: true, merchant: true, receiptUrl: true, isRecurring: true, tags: true, currencyTrgmSimilarity: true, categoryTrgmSimilarity: true, descriptionTrgmSimilarity: true, merchantTrgmSimilarity: true, receiptUrlTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.expense.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, amount: true, currency: true, date: true, category: true, description: true, merchant: true, receiptUrl: true, isRecurring: true, tags: true, currencyTrgmSimilarity: true, categoryTrgmSimilarity: true, descriptionTrgmSimilarity: true, merchantTrgmSimilarity: true, receiptUrlTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.expense.create({ data: { entityId: '<value>', amount: '<value>', currency: '<value>', date: '<value>', category: '<value>', description: '<value>', merchant: '<value>', receiptUrl: '<value>', isRecurring: '<value>', tags: '<value>', currencyTrgmSimilarity: '<value>', categoryTrgmSimilarity: '<value>', descriptionTrgmSimilarity: '<value>', merchantTrgmSimilarity: '<value>', receiptUrlTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.expense.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.expense.delete({ where: { id: '<value>' } }).execute();
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
| `nameTrgmSimilarity` | Float | Yes |
| `currencyTrgmSimilarity` | Float | Yes |
| `frequencyTrgmSimilarity` | Float | Yes |
| `providerTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `notesTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all billingSubscription records
const items = await db.billingSubscription.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, amount: true, currency: true, frequency: true, provider: true, nextBillingDate: true, cancellationDate: true, status: true, tags: true, notes: true, nameTrgmSimilarity: true, currencyTrgmSimilarity: true, frequencyTrgmSimilarity: true, providerTrgmSimilarity: true, statusTrgmSimilarity: true, notesTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.billingSubscription.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, amount: true, currency: true, frequency: true, provider: true, nextBillingDate: true, cancellationDate: true, status: true, tags: true, notes: true, nameTrgmSimilarity: true, currencyTrgmSimilarity: true, frequencyTrgmSimilarity: true, providerTrgmSimilarity: true, statusTrgmSimilarity: true, notesTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.billingSubscription.create({ data: { entityId: '<value>', name: '<value>', amount: '<value>', currency: '<value>', frequency: '<value>', provider: '<value>', nextBillingDate: '<value>', cancellationDate: '<value>', status: '<value>', tags: '<value>', notes: '<value>', nameTrgmSimilarity: '<value>', currencyTrgmSimilarity: '<value>', frequencyTrgmSimilarity: '<value>', providerTrgmSimilarity: '<value>', statusTrgmSimilarity: '<value>', notesTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.billingSubscription.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.billingSubscription.delete({ where: { id: '<value>' } }).execute();
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
| `contentTrgmSimilarity` | Float | Yes |
| `sourceTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all idea records
const items = await db.idea.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, content: true, source: true, status: true, tags: true, embeddingText: true, embedding: true, contentTrgmSimilarity: true, sourceTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.idea.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, content: true, source: true, status: true, tags: true, embeddingText: true, embedding: true, contentTrgmSimilarity: true, sourceTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.idea.create({ data: { entityId: '<value>', content: '<value>', source: '<value>', status: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', contentTrgmSimilarity: '<value>', sourceTrgmSimilarity: '<value>', statusTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.idea.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.idea.delete({ where: { id: '<value>' } }).execute();
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
| `nameTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `typeTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all list records
const items = await db.list.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, description: true, type: true, tags: true, embeddingText: true, embedding: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, typeTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.list.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, description: true, type: true, tags: true, embeddingText: true, embedding: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, typeTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.list.create({ data: { entityId: '<value>', name: '<value>', description: '<value>', type: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', nameTrgmSimilarity: '<value>', descriptionTrgmSimilarity: '<value>', typeTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.list.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.list.delete({ where: { id: '<value>' } }).execute();
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
| `typeTrgmSimilarity` | Float | Yes |
| `summaryTrgmSimilarity` | Float | Yes |
| `sentimentTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all interaction records
const items = await db.interaction.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, contactId: true, type: true, occurredAt: true, summary: true, sentiment: true, tags: true, embeddingText: true, embedding: true, typeTrgmSimilarity: true, summaryTrgmSimilarity: true, sentimentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.interaction.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, contactId: true, type: true, occurredAt: true, summary: true, sentiment: true, tags: true, embeddingText: true, embedding: true, typeTrgmSimilarity: true, summaryTrgmSimilarity: true, sentimentTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.interaction.create({ data: { entityId: '<value>', contactId: '<value>', type: '<value>', occurredAt: '<value>', summary: '<value>', sentiment: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', typeTrgmSimilarity: '<value>', summaryTrgmSimilarity: '<value>', sentimentTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.interaction.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.interaction.delete({ where: { id: '<value>' } }).execute();
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
| `nameTrgmSimilarity` | Float | Yes |
| `urlTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `defaultBranchTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all repository records
const items = await db.repository.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, url: true, description: true, defaultBranch: true, lastSyncedAt: true, tags: true, embeddingText: true, embedding: true, nameTrgmSimilarity: true, urlTrgmSimilarity: true, descriptionTrgmSimilarity: true, defaultBranchTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.repository.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, url: true, description: true, defaultBranch: true, lastSyncedAt: true, tags: true, embeddingText: true, embedding: true, nameTrgmSimilarity: true, urlTrgmSimilarity: true, descriptionTrgmSimilarity: true, defaultBranchTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.repository.create({ data: { entityId: '<value>', name: '<value>', url: '<value>', description: '<value>', defaultBranch: '<value>', lastSyncedAt: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', nameTrgmSimilarity: '<value>', urlTrgmSimilarity: '<value>', descriptionTrgmSimilarity: '<value>', defaultBranchTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.repository.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.repository.delete({ where: { id: '<value>' } }).execute();
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
| `notes` | String | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `nameTrgmSimilarity` | Float | Yes |
| `stageTrgmSimilarity` | Float | Yes |
| `currencyTrgmSimilarity` | Float | Yes |
| `notesTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all deal records
const items = await db.deal.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, stage: true, value: true, currency: true, expectedCloseDate: true, notes: true, tags: true, embeddingText: true, embedding: true, nameTrgmSimilarity: true, stageTrgmSimilarity: true, currencyTrgmSimilarity: true, notesTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.deal.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, stage: true, value: true, currency: true, expectedCloseDate: true, notes: true, tags: true, embeddingText: true, embedding: true, nameTrgmSimilarity: true, stageTrgmSimilarity: true, currencyTrgmSimilarity: true, notesTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.deal.create({ data: { entityId: '<value>', name: '<value>', stage: '<value>', value: '<value>', currency: '<value>', expectedCloseDate: '<value>', notes: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', nameTrgmSimilarity: '<value>', stageTrgmSimilarity: '<value>', currencyTrgmSimilarity: '<value>', notesTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.deal.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.deal.delete({ where: { id: '<value>' } }).execute();
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
| `titleTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `categoryTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all goal records
const items = await db.goal.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, description: true, targetDate: true, status: true, category: true, progressPct: true, tags: true, embeddingText: true, embedding: true, titleTrgmSimilarity: true, descriptionTrgmSimilarity: true, statusTrgmSimilarity: true, categoryTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.goal.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, description: true, targetDate: true, status: true, category: true, progressPct: true, tags: true, embeddingText: true, embedding: true, titleTrgmSimilarity: true, descriptionTrgmSimilarity: true, statusTrgmSimilarity: true, categoryTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.goal.create({ data: { entityId: '<value>', title: '<value>', description: '<value>', targetDate: '<value>', status: '<value>', category: '<value>', progressPct: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', titleTrgmSimilarity: '<value>', descriptionTrgmSimilarity: '<value>', statusTrgmSimilarity: '<value>', categoryTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.goal.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.goal.delete({ where: { id: '<value>' } }).execute();
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
| `notableType` | String | Yes |
| `notableId` | UUID | Yes |
| `abstract` | String | Yes |
| `overview` | String | Yes |
| `activeCount` | Int | Yes |
| `lastAccessedAt` | Datetime | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `notableTypeTrgmSimilarity` | Float | Yes |
| `abstractTrgmSimilarity` | Float | Yes |
| `overviewTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all note records
const items = await db.note.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, content: true, notableType: true, notableId: true, abstract: true, overview: true, activeCount: true, lastAccessedAt: true, tags: true, embeddingText: true, embedding: true, contentTrgmSimilarity: true, notableTypeTrgmSimilarity: true, abstractTrgmSimilarity: true, overviewTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.note.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, content: true, notableType: true, notableId: true, abstract: true, overview: true, activeCount: true, lastAccessedAt: true, tags: true, embeddingText: true, embedding: true, contentTrgmSimilarity: true, notableTypeTrgmSimilarity: true, abstractTrgmSimilarity: true, overviewTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.note.create({ data: { entityId: '<value>', content: '<value>', notableType: '<value>', notableId: '<value>', abstract: '<value>', overview: '<value>', activeCount: '<value>', lastAccessedAt: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', contentTrgmSimilarity: '<value>', notableTypeTrgmSimilarity: '<value>', abstractTrgmSimilarity: '<value>', overviewTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.note.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.note.delete({ where: { id: '<value>' } }).execute();
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
| `nameTrgmSimilarity` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `typeTrgmSimilarity` | Float | Yes |
| `modelTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all prompt records
const items = await db.prompt.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, content: true, type: true, model: true, version: true, isActive: true, tags: true, embeddingText: true, embedding: true, nameTrgmSimilarity: true, contentTrgmSimilarity: true, typeTrgmSimilarity: true, modelTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.prompt.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, content: true, type: true, model: true, version: true, isActive: true, tags: true, embeddingText: true, embedding: true, nameTrgmSimilarity: true, contentTrgmSimilarity: true, typeTrgmSimilarity: true, modelTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.prompt.create({ data: { entityId: '<value>', name: '<value>', content: '<value>', type: '<value>', model: '<value>', version: '<value>', isActive: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', nameTrgmSimilarity: '<value>', contentTrgmSimilarity: '<value>', typeTrgmSimilarity: '<value>', modelTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.prompt.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.prompt.delete({ where: { id: '<value>' } }).execute();
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
| `titleTrgmSimilarity` | Float | Yes |
| `triggerConditionsTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all blueprint records
const items = await db.blueprint.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, steps: true, triggerConditions: true, conversationId: true, tags: true, embeddingText: true, embedding: true, titleTrgmSimilarity: true, triggerConditionsTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.blueprint.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, steps: true, triggerConditions: true, conversationId: true, tags: true, embeddingText: true, embedding: true, titleTrgmSimilarity: true, triggerConditionsTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.blueprint.create({ data: { entityId: '<value>', title: '<value>', steps: '<value>', triggerConditions: '<value>', conversationId: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', titleTrgmSimilarity: '<value>', triggerConditionsTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.blueprint.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.blueprint.delete({ where: { id: '<value>' } }).execute();
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
| `nameTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `typeTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all template records
const items = await db.template.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, description: true, type: true, content: true, variables: true, isActive: true, tags: true, embeddingText: true, embedding: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, typeTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.template.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, description: true, type: true, content: true, variables: true, isActive: true, tags: true, embeddingText: true, embedding: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, typeTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.template.create({ data: { entityId: '<value>', name: '<value>', description: '<value>', type: '<value>', content: '<value>', variables: '<value>', isActive: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', nameTrgmSimilarity: '<value>', descriptionTrgmSimilarity: '<value>', typeTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.template.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.template.delete({ where: { id: '<value>' } }).execute();
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
| `nameTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `typeTrgmSimilarity` | Float | Yes |
| `endpointTrgmSimilarity` | Float | Yes |
| `authMethodTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all tool records
const items = await db.tool.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, description: true, type: true, inputSchema: true, outputSchema: true, endpoint: true, authMethod: true, isActive: true, tags: true, embeddingText: true, embedding: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, typeTrgmSimilarity: true, endpointTrgmSimilarity: true, authMethodTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.tool.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, description: true, type: true, inputSchema: true, outputSchema: true, endpoint: true, authMethod: true, isActive: true, tags: true, embeddingText: true, embedding: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, typeTrgmSimilarity: true, endpointTrgmSimilarity: true, authMethodTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.tool.create({ data: { entityId: '<value>', name: '<value>', description: '<value>', type: '<value>', inputSchema: '<value>', outputSchema: '<value>', endpoint: '<value>', authMethod: '<value>', isActive: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', nameTrgmSimilarity: '<value>', descriptionTrgmSimilarity: '<value>', typeTrgmSimilarity: '<value>', endpointTrgmSimilarity: '<value>', authMethodTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.tool.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.tool.delete({ where: { id: '<value>' } }).execute();
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
| `nameTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `cuisineTrgmSimilarity` | Float | Yes |
| `difficultyTrgmSimilarity` | Float | Yes |
| `sourceUrlTrgmSimilarity` | Float | Yes |
| `imageUrlTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all recipe records
const items = await db.recipe.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, description: true, cuisine: true, prepTimeMinutes: true, cookTimeMinutes: true, servings: true, difficulty: true, ingredients: true, instructions: true, sourceUrl: true, imageUrl: true, tags: true, embeddingText: true, embedding: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, cuisineTrgmSimilarity: true, difficultyTrgmSimilarity: true, sourceUrlTrgmSimilarity: true, imageUrlTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.recipe.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, description: true, cuisine: true, prepTimeMinutes: true, cookTimeMinutes: true, servings: true, difficulty: true, ingredients: true, instructions: true, sourceUrl: true, imageUrl: true, tags: true, embeddingText: true, embedding: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, cuisineTrgmSimilarity: true, difficultyTrgmSimilarity: true, sourceUrlTrgmSimilarity: true, imageUrlTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.recipe.create({ data: { entityId: '<value>', name: '<value>', description: '<value>', cuisine: '<value>', prepTimeMinutes: '<value>', cookTimeMinutes: '<value>', servings: '<value>', difficulty: '<value>', ingredients: '<value>', instructions: '<value>', sourceUrl: '<value>', imageUrl: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', nameTrgmSimilarity: '<value>', descriptionTrgmSimilarity: '<value>', cuisineTrgmSimilarity: '<value>', difficultyTrgmSimilarity: '<value>', sourceUrlTrgmSimilarity: '<value>', imageUrlTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.recipe.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.recipe.delete({ where: { id: '<value>' } }).execute();
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
| `nameTrgmSimilarity` | Float | Yes |
| `destinationTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `notesTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all trip records
const items = await db.trip.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, destination: true, startDate: true, endDate: true, status: true, notes: true, tags: true, embeddingText: true, embedding: true, nameTrgmSimilarity: true, destinationTrgmSimilarity: true, statusTrgmSimilarity: true, notesTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.trip.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, destination: true, startDate: true, endDate: true, status: true, notes: true, tags: true, embeddingText: true, embedding: true, nameTrgmSimilarity: true, destinationTrgmSimilarity: true, statusTrgmSimilarity: true, notesTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.trip.create({ data: { entityId: '<value>', name: '<value>', destination: '<value>', startDate: '<value>', endDate: '<value>', status: '<value>', notes: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', nameTrgmSimilarity: '<value>', destinationTrgmSimilarity: '<value>', statusTrgmSimilarity: '<value>', notesTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.trip.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.trip.delete({ where: { id: '<value>' } }).execute();
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
| `remoteIdTrgmSimilarity` | Float | Yes |
| `titleTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `locationTrgmSimilarity` | Float | Yes |
| `recurrenceRuleTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all calendarEvent records
const items = await db.calendarEvent.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, calendarAccountId: true, remoteId: true, title: true, description: true, startAt: true, endAt: true, allDay: true, location: true, recurrenceRule: true, status: true, tags: true, embeddingText: true, embedding: true, remoteIdTrgmSimilarity: true, titleTrgmSimilarity: true, descriptionTrgmSimilarity: true, locationTrgmSimilarity: true, recurrenceRuleTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.calendarEvent.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, calendarAccountId: true, remoteId: true, title: true, description: true, startAt: true, endAt: true, allDay: true, location: true, recurrenceRule: true, status: true, tags: true, embeddingText: true, embedding: true, remoteIdTrgmSimilarity: true, titleTrgmSimilarity: true, descriptionTrgmSimilarity: true, locationTrgmSimilarity: true, recurrenceRuleTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.calendarEvent.create({ data: { entityId: '<value>', calendarAccountId: '<value>', remoteId: '<value>', title: '<value>', description: '<value>', startAt: '<value>', endAt: '<value>', allDay: '<value>', location: '<value>', recurrenceRule: '<value>', status: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', remoteIdTrgmSimilarity: '<value>', titleTrgmSimilarity: '<value>', descriptionTrgmSimilarity: '<value>', locationTrgmSimilarity: '<value>', recurrenceRuleTrgmSimilarity: '<value>', statusTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.calendarEvent.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.calendarEvent.delete({ where: { id: '<value>' } }).execute();
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
| `threadIdTrgmSimilarity` | Float | Yes |
| `remoteIdTrgmSimilarity` | Float | Yes |
| `fromAddressTrgmSimilarity` | Float | Yes |
| `subjectTrgmSimilarity` | Float | Yes |
| `bodyTextTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all message records
const items = await db.message.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, emailAccountId: true, threadId: true, remoteId: true, fromAddress: true, toAddresses: true, subject: true, bodyText: true, receivedAt: true, tags: true, embeddingText: true, embedding: true, threadIdTrgmSimilarity: true, remoteIdTrgmSimilarity: true, fromAddressTrgmSimilarity: true, subjectTrgmSimilarity: true, bodyTextTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.message.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, emailAccountId: true, threadId: true, remoteId: true, fromAddress: true, toAddresses: true, subject: true, bodyText: true, receivedAt: true, tags: true, embeddingText: true, embedding: true, threadIdTrgmSimilarity: true, remoteIdTrgmSimilarity: true, fromAddressTrgmSimilarity: true, subjectTrgmSimilarity: true, bodyTextTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.message.create({ data: { entityId: '<value>', emailAccountId: '<value>', threadId: '<value>', remoteId: '<value>', fromAddress: '<value>', toAddresses: '<value>', subject: '<value>', bodyText: '<value>', receivedAt: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', threadIdTrgmSimilarity: '<value>', remoteIdTrgmSimilarity: '<value>', fromAddressTrgmSimilarity: '<value>', subjectTrgmSimilarity: '<value>', bodyTextTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.message.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.message.delete({ where: { id: '<value>' } }).execute();
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
| `relatedEntityType` | String | Yes |
| `relatedEntityId` | UUID | Yes |
| `abstract` | String | Yes |
| `overview` | String | Yes |
| `activeCount` | Int | Yes |
| `lastAccessedAt` | Datetime | Yes |
| `tags` | String | Yes |
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `memoryTypeTrgmSimilarity` | Float | Yes |
| `memoryCategoryTrgmSimilarity` | Float | Yes |
| `sourceTrgmSimilarity` | Float | Yes |
| `relatedEntityTypeTrgmSimilarity` | Float | Yes |
| `abstractTrgmSimilarity` | Float | Yes |
| `overviewTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all memory records
const items = await db.memory.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, content: true, memoryType: true, memoryCategory: true, agentId: true, importance: true, verified: true, source: true, relatedEntityType: true, relatedEntityId: true, abstract: true, overview: true, activeCount: true, lastAccessedAt: true, tags: true, embeddingText: true, embedding: true, contentTrgmSimilarity: true, memoryTypeTrgmSimilarity: true, memoryCategoryTrgmSimilarity: true, sourceTrgmSimilarity: true, relatedEntityTypeTrgmSimilarity: true, abstractTrgmSimilarity: true, overviewTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.memory.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, content: true, memoryType: true, memoryCategory: true, agentId: true, importance: true, verified: true, source: true, relatedEntityType: true, relatedEntityId: true, abstract: true, overview: true, activeCount: true, lastAccessedAt: true, tags: true, embeddingText: true, embedding: true, contentTrgmSimilarity: true, memoryTypeTrgmSimilarity: true, memoryCategoryTrgmSimilarity: true, sourceTrgmSimilarity: true, relatedEntityTypeTrgmSimilarity: true, abstractTrgmSimilarity: true, overviewTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.memory.create({ data: { entityId: '<value>', content: '<value>', memoryType: '<value>', memoryCategory: '<value>', agentId: '<value>', importance: '<value>', verified: '<value>', source: '<value>', relatedEntityType: '<value>', relatedEntityId: '<value>', abstract: '<value>', overview: '<value>', activeCount: '<value>', lastAccessedAt: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', contentTrgmSimilarity: '<value>', memoryTypeTrgmSimilarity: '<value>', memoryCategoryTrgmSimilarity: '<value>', sourceTrgmSimilarity: '<value>', relatedEntityTypeTrgmSimilarity: '<value>', abstractTrgmSimilarity: '<value>', overviewTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.memory.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.memory.delete({ where: { id: '<value>' } }).execute();
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
| `titleTrgmSimilarity` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `kindTrgmSimilarity` | Float | Yes |
| `severityTrgmSimilarity` | Float | Yes |
| `slugTrgmSimilarity` | Float | Yes |
| `verificationTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `triggerConceptVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all rule records
const items = await db.rule.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, content: true, kind: true, severity: true, isActive: true, slug: true, verification: true, tags: true, embeddingText: true, embedding: true, triggerConcept: true, titleTrgmSimilarity: true, contentTrgmSimilarity: true, kindTrgmSimilarity: true, severityTrgmSimilarity: true, slugTrgmSimilarity: true, verificationTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, triggerConceptVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.rule.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, content: true, kind: true, severity: true, isActive: true, slug: true, verification: true, tags: true, embeddingText: true, embedding: true, triggerConcept: true, titleTrgmSimilarity: true, contentTrgmSimilarity: true, kindTrgmSimilarity: true, severityTrgmSimilarity: true, slugTrgmSimilarity: true, verificationTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, triggerConceptVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.rule.create({ data: { entityId: '<value>', title: '<value>', content: '<value>', kind: '<value>', severity: '<value>', isActive: '<value>', slug: '<value>', verification: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', triggerConcept: '<value>', titleTrgmSimilarity: '<value>', contentTrgmSimilarity: '<value>', kindTrgmSimilarity: '<value>', severityTrgmSimilarity: '<value>', slugTrgmSimilarity: '<value>', verificationTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', triggerConceptVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.rule.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.rule.delete({ where: { id: '<value>' } }).execute();
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
| `titleTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `taskTypeTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all task records
const items = await db.task.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, description: true, status: true, priority: true, projectId: true, taskType: true, assignedAgentId: true, parentTaskId: true, dueDate: true, completedAt: true, conversationId: true, dependencies: true, tags: true, embeddingText: true, embedding: true, titleTrgmSimilarity: true, descriptionTrgmSimilarity: true, statusTrgmSimilarity: true, taskTypeTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.task.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, description: true, status: true, priority: true, projectId: true, taskType: true, assignedAgentId: true, parentTaskId: true, dueDate: true, completedAt: true, conversationId: true, dependencies: true, tags: true, embeddingText: true, embedding: true, titleTrgmSimilarity: true, descriptionTrgmSimilarity: true, statusTrgmSimilarity: true, taskTypeTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.task.create({ data: { entityId: '<value>', title: '<value>', description: '<value>', status: '<value>', priority: '<value>', projectId: '<value>', taskType: '<value>', assignedAgentId: '<value>', parentTaskId: '<value>', dueDate: '<value>', completedAt: '<value>', conversationId: '<value>', dependencies: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', titleTrgmSimilarity: '<value>', descriptionTrgmSimilarity: '<value>', statusTrgmSimilarity: '<value>', taskTypeTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.task.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.task.delete({ where: { id: '<value>' } }).execute();
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
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all agent records
const items = await db.agent.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, role: true, capabilities: true, config: true, status: true, persona: true, backstory: true, communicationStyle: true, systemPrompt: true, preferredModel: true, fallbackModels: true, temperature: true, mood: true, focus: true, lastActiveAt: true, embeddingText: true, embedding: true, nameTrgmSimilarity: true, roleTrgmSimilarity: true, statusTrgmSimilarity: true, personaTrgmSimilarity: true, backstoryTrgmSimilarity: true, communicationStyleTrgmSimilarity: true, systemPromptTrgmSimilarity: true, preferredModelTrgmSimilarity: true, moodTrgmSimilarity: true, focusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.agent.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, role: true, capabilities: true, config: true, status: true, persona: true, backstory: true, communicationStyle: true, systemPrompt: true, preferredModel: true, fallbackModels: true, temperature: true, mood: true, focus: true, lastActiveAt: true, embeddingText: true, embedding: true, nameTrgmSimilarity: true, roleTrgmSimilarity: true, statusTrgmSimilarity: true, personaTrgmSimilarity: true, backstoryTrgmSimilarity: true, communicationStyleTrgmSimilarity: true, systemPromptTrgmSimilarity: true, preferredModelTrgmSimilarity: true, moodTrgmSimilarity: true, focusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.agent.create({ data: { entityId: '<value>', name: '<value>', role: '<value>', capabilities: '<value>', config: '<value>', status: '<value>', persona: '<value>', backstory: '<value>', communicationStyle: '<value>', systemPrompt: '<value>', preferredModel: '<value>', fallbackModels: '<value>', temperature: '<value>', mood: '<value>', focus: '<value>', lastActiveAt: '<value>', embeddingText: '<value>', embedding: '<value>', nameTrgmSimilarity: '<value>', roleTrgmSimilarity: '<value>', statusTrgmSimilarity: '<value>', personaTrgmSimilarity: '<value>', backstoryTrgmSimilarity: '<value>', communicationStyleTrgmSimilarity: '<value>', systemPromptTrgmSimilarity: '<value>', preferredModelTrgmSimilarity: '<value>', moodTrgmSimilarity: '<value>', focusTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.agent.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.agent.delete({ where: { id: '<value>' } }).execute();
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
| `uagentTrgmSimilarity` | Float | Yes |
| `fingerprintModeTrgmSimilarity` | Float | Yes |
| `csrfSecretTrgmSimilarity` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all session records
const items = await db.session.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, agentId: true, startedAt: true, endedAt: true, status: true, contextSummary: true, sessionSummary: true, archivedMessages: true, compressionCount: true, archivedAt: true, extractedMemoryIds: true, contextsUsed: true, skillsUsed: true, embeddingText: true, embedding: true, uagentTrgmSimilarity: true, fingerprintModeTrgmSimilarity: true, csrfSecretTrgmSimilarity: true, searchScore: true } }).execute();

// Get one by id
const item = await db.session.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, agentId: true, startedAt: true, endedAt: true, status: true, contextSummary: true, sessionSummary: true, archivedMessages: true, compressionCount: true, archivedAt: true, extractedMemoryIds: true, contextsUsed: true, skillsUsed: true, embeddingText: true, embedding: true, uagentTrgmSimilarity: true, fingerprintModeTrgmSimilarity: true, csrfSecretTrgmSimilarity: true, searchScore: true } }).execute();

// Create
const created = await db.session.create({ data: { entityId: '<value>', title: '<value>', agentId: '<value>', startedAt: '<value>', endedAt: '<value>', status: '<value>', contextSummary: '<value>', sessionSummary: '<value>', archivedMessages: '<value>', compressionCount: '<value>', archivedAt: '<value>', extractedMemoryIds: '<value>', contextsUsed: '<value>', skillsUsed: '<value>', embeddingText: '<value>', embedding: '<value>', uagentTrgmSimilarity: '<value>', fingerprintModeTrgmSimilarity: '<value>', csrfSecretTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.session.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.session.delete({ where: { id: '<value>' } }).execute();
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
| `embeddingVectorDistance` | Float | Yes |
| `intentTriggerVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all skill records
const items = await db.skill.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, slug: true, description: true, content: true, procedure: true, interface: true, requirements: true, prerequisites: true, alwaysLoad: true, filePath: true, contentHash: true, category: true, isActive: true, abstract: true, overview: true, activeCount: true, lastAccessedAt: true, tags: true, embeddingText: true, embedding: true, intentTrigger: true, nameTrgmSimilarity: true, slugTrgmSimilarity: true, descriptionTrgmSimilarity: true, contentTrgmSimilarity: true, procedureTrgmSimilarity: true, filePathTrgmSimilarity: true, contentHashTrgmSimilarity: true, categoryTrgmSimilarity: true, abstractTrgmSimilarity: true, overviewTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, intentTriggerVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.skill.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, slug: true, description: true, content: true, procedure: true, interface: true, requirements: true, prerequisites: true, alwaysLoad: true, filePath: true, contentHash: true, category: true, isActive: true, abstract: true, overview: true, activeCount: true, lastAccessedAt: true, tags: true, embeddingText: true, embedding: true, intentTrigger: true, nameTrgmSimilarity: true, slugTrgmSimilarity: true, descriptionTrgmSimilarity: true, contentTrgmSimilarity: true, procedureTrgmSimilarity: true, filePathTrgmSimilarity: true, contentHashTrgmSimilarity: true, categoryTrgmSimilarity: true, abstractTrgmSimilarity: true, overviewTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, intentTriggerVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.skill.create({ data: { entityId: '<value>', name: '<value>', slug: '<value>', description: '<value>', content: '<value>', procedure: '<value>', interface: '<value>', requirements: '<value>', prerequisites: '<value>', alwaysLoad: '<value>', filePath: '<value>', contentHash: '<value>', category: '<value>', isActive: '<value>', abstract: '<value>', overview: '<value>', activeCount: '<value>', lastAccessedAt: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', intentTrigger: '<value>', nameTrgmSimilarity: '<value>', slugTrgmSimilarity: '<value>', descriptionTrgmSimilarity: '<value>', contentTrgmSimilarity: '<value>', procedureTrgmSimilarity: '<value>', filePathTrgmSimilarity: '<value>', contentHashTrgmSimilarity: '<value>', categoryTrgmSimilarity: '<value>', abstractTrgmSimilarity: '<value>', overviewTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', intentTriggerVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.skill.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.skill.delete({ where: { id: '<value>' } }).execute();
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
| `nameTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `statusTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all project records
const items = await db.project.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, description: true, status: true, startDate: true, dueDate: true, tags: true, embeddingText: true, embedding: true, searchTsv: true, searchTsvRank: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.project.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, description: true, status: true, startDate: true, dueDate: true, tags: true, embeddingText: true, embedding: true, searchTsv: true, searchTsvRank: true, nameTrgmSimilarity: true, descriptionTrgmSimilarity: true, statusTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.project.create({ data: { entityId: '<value>', name: '<value>', description: '<value>', status: '<value>', startDate: '<value>', dueDate: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', searchTsv: '<value>', searchTsvRank: '<value>', nameTrgmSimilarity: '<value>', descriptionTrgmSimilarity: '<value>', statusTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.project.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.project.delete({ where: { id: '<value>' } }).execute();
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
| `titleTrgmSimilarity` | Float | Yes |
| `urlTrgmSimilarity` | Float | Yes |
| `contentTrgmSimilarity` | Float | Yes |
| `sourceTypeTrgmSimilarity` | Float | Yes |
| `abstractTrgmSimilarity` | Float | Yes |
| `overviewTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all document records
const items = await db.document.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, url: true, content: true, sourceType: true, isRead: true, savedAt: true, parentDocumentId: true, abstract: true, overview: true, activeCount: true, lastAccessedAt: true, tags: true, embeddingText: true, embedding: true, searchTsv: true, searchTsvRank: true, titleTrgmSimilarity: true, urlTrgmSimilarity: true, contentTrgmSimilarity: true, sourceTypeTrgmSimilarity: true, abstractTrgmSimilarity: true, overviewTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.document.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, title: true, url: true, content: true, sourceType: true, isRead: true, savedAt: true, parentDocumentId: true, abstract: true, overview: true, activeCount: true, lastAccessedAt: true, tags: true, embeddingText: true, embedding: true, searchTsv: true, searchTsvRank: true, titleTrgmSimilarity: true, urlTrgmSimilarity: true, contentTrgmSimilarity: true, sourceTypeTrgmSimilarity: true, abstractTrgmSimilarity: true, overviewTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.document.create({ data: { entityId: '<value>', title: '<value>', url: '<value>', content: '<value>', sourceType: '<value>', isRead: '<value>', savedAt: '<value>', parentDocumentId: '<value>', abstract: '<value>', overview: '<value>', activeCount: '<value>', lastAccessedAt: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', searchTsv: '<value>', searchTsvRank: '<value>', titleTrgmSimilarity: '<value>', urlTrgmSimilarity: '<value>', contentTrgmSimilarity: '<value>', sourceTypeTrgmSimilarity: '<value>', abstractTrgmSimilarity: '<value>', overviewTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.document.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.document.delete({ where: { id: '<value>' } }).execute();
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
| `nameTrgmSimilarity` | Float | Yes |
| `domainTrgmSimilarity` | Float | Yes |
| `industryTrgmSimilarity` | Float | Yes |
| `descriptionTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all company records
const items = await db.company.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, domain: true, industry: true, description: true, tags: true, embeddingText: true, embedding: true, searchTsv: true, mainImageId: true, searchTsvRank: true, nameTrgmSimilarity: true, domainTrgmSimilarity: true, industryTrgmSimilarity: true, descriptionTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.company.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, domain: true, industry: true, description: true, tags: true, embeddingText: true, embedding: true, searchTsv: true, mainImageId: true, searchTsvRank: true, nameTrgmSimilarity: true, domainTrgmSimilarity: true, industryTrgmSimilarity: true, descriptionTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.company.create({ data: { entityId: '<value>', name: '<value>', domain: '<value>', industry: '<value>', description: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', searchTsv: '<value>', mainImageId: '<value>', searchTsvRank: '<value>', nameTrgmSimilarity: '<value>', domainTrgmSimilarity: '<value>', industryTrgmSimilarity: '<value>', descriptionTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.company.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.company.delete({ where: { id: '<value>' } }).execute();
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
| `embeddingText` | String | Yes |
| `embedding` | Vector | Yes |
| `searchTsv` | FullText | Yes |
| `mainImageId` | UUID | Yes |
| `searchTsvRank` | Float | Yes |
| `nameTrgmSimilarity` | Float | Yes |
| `eventTypeTrgmSimilarity` | Float | Yes |
| `locationTrgmSimilarity` | Float | Yes |
| `cityTrgmSimilarity` | Float | Yes |
| `notesTrgmSimilarity` | Float | Yes |
| `embeddingTextTrgmSimilarity` | Float | Yes |
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all event records
const items = await db.event.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, eventType: true, location: true, city: true, startedAt: true, endedAt: true, notes: true, tags: true, embeddingText: true, embedding: true, searchTsv: true, mainImageId: true, searchTsvRank: true, nameTrgmSimilarity: true, eventTypeTrgmSimilarity: true, locationTrgmSimilarity: true, cityTrgmSimilarity: true, notesTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.event.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, eventType: true, location: true, city: true, startedAt: true, endedAt: true, notes: true, tags: true, embeddingText: true, embedding: true, searchTsv: true, mainImageId: true, searchTsvRank: true, nameTrgmSimilarity: true, eventTypeTrgmSimilarity: true, locationTrgmSimilarity: true, cityTrgmSimilarity: true, notesTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.event.create({ data: { entityId: '<value>', name: '<value>', eventType: '<value>', location: '<value>', city: '<value>', startedAt: '<value>', endedAt: '<value>', notes: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', searchTsv: '<value>', mainImageId: '<value>', searchTsvRank: '<value>', nameTrgmSimilarity: '<value>', eventTypeTrgmSimilarity: '<value>', locationTrgmSimilarity: '<value>', cityTrgmSimilarity: '<value>', notesTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.event.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.event.delete({ where: { id: '<value>' } }).execute();
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
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all contact records
const items = await db.contact.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, firstName: true, lastName: true, email: true, phone: true, headline: true, bio: true, location: true, birthday: true, relationshipType: true, howWeMet: true, twitterHandle: true, linkedinUrl: true, githubUsername: true, instagramHandle: true, website: true, tags: true, embeddingText: true, embedding: true, searchTsv: true, mainImageId: true, searchTsvRank: true, firstNameTrgmSimilarity: true, lastNameTrgmSimilarity: true, emailTrgmSimilarity: true, phoneTrgmSimilarity: true, headlineTrgmSimilarity: true, bioTrgmSimilarity: true, locationTrgmSimilarity: true, relationshipTypeTrgmSimilarity: true, howWeMetTrgmSimilarity: true, twitterHandleTrgmSimilarity: true, linkedinUrlTrgmSimilarity: true, githubUsernameTrgmSimilarity: true, instagramHandleTrgmSimilarity: true, websiteTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.contact.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, firstName: true, lastName: true, email: true, phone: true, headline: true, bio: true, location: true, birthday: true, relationshipType: true, howWeMet: true, twitterHandle: true, linkedinUrl: true, githubUsername: true, instagramHandle: true, website: true, tags: true, embeddingText: true, embedding: true, searchTsv: true, mainImageId: true, searchTsvRank: true, firstNameTrgmSimilarity: true, lastNameTrgmSimilarity: true, emailTrgmSimilarity: true, phoneTrgmSimilarity: true, headlineTrgmSimilarity: true, bioTrgmSimilarity: true, locationTrgmSimilarity: true, relationshipTypeTrgmSimilarity: true, howWeMetTrgmSimilarity: true, twitterHandleTrgmSimilarity: true, linkedinUrlTrgmSimilarity: true, githubUsernameTrgmSimilarity: true, instagramHandleTrgmSimilarity: true, websiteTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.contact.create({ data: { entityId: '<value>', firstName: '<value>', lastName: '<value>', email: '<value>', phone: '<value>', headline: '<value>', bio: '<value>', location: '<value>', birthday: '<value>', relationshipType: '<value>', howWeMet: '<value>', twitterHandle: '<value>', linkedinUrl: '<value>', githubUsername: '<value>', instagramHandle: '<value>', website: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', searchTsv: '<value>', mainImageId: '<value>', searchTsvRank: '<value>', firstNameTrgmSimilarity: '<value>', lastNameTrgmSimilarity: '<value>', emailTrgmSimilarity: '<value>', phoneTrgmSimilarity: '<value>', headlineTrgmSimilarity: '<value>', bioTrgmSimilarity: '<value>', locationTrgmSimilarity: '<value>', relationshipTypeTrgmSimilarity: '<value>', howWeMetTrgmSimilarity: '<value>', twitterHandleTrgmSimilarity: '<value>', linkedinUrlTrgmSimilarity: '<value>', githubUsernameTrgmSimilarity: '<value>', instagramHandleTrgmSimilarity: '<value>', websiteTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.contact.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.contact.delete({ where: { id: '<value>' } }).execute();
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
| `embeddingVectorDistance` | Float | Yes |
| `searchScore` | Float | Yes |

**Operations:**

```typescript
// List all venue records
const items = await db.venue.findMany({ select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, address: true, neighborhood: true, city: true, category: true, status: true, googlePlaceId: true, rating: true, priceLevel: true, isFavorite: true, notes: true, tags: true, embeddingText: true, embedding: true, searchTsv: true, mainImageId: true, searchTsvRank: true, nameTrgmSimilarity: true, addressTrgmSimilarity: true, neighborhoodTrgmSimilarity: true, cityTrgmSimilarity: true, categoryTrgmSimilarity: true, statusTrgmSimilarity: true, googlePlaceIdTrgmSimilarity: true, priceLevelTrgmSimilarity: true, notesTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Get one by id
const item = await db.venue.findOne({ id: '<value>', select: { id: true, entityId: true, createdAt: true, updatedAt: true, name: true, address: true, neighborhood: true, city: true, category: true, status: true, googlePlaceId: true, rating: true, priceLevel: true, isFavorite: true, notes: true, tags: true, embeddingText: true, embedding: true, searchTsv: true, mainImageId: true, searchTsvRank: true, nameTrgmSimilarity: true, addressTrgmSimilarity: true, neighborhoodTrgmSimilarity: true, cityTrgmSimilarity: true, categoryTrgmSimilarity: true, statusTrgmSimilarity: true, googlePlaceIdTrgmSimilarity: true, priceLevelTrgmSimilarity: true, notesTrgmSimilarity: true, embeddingTextTrgmSimilarity: true, embeddingVectorDistance: true, searchScore: true } }).execute();

// Create
const created = await db.venue.create({ data: { entityId: '<value>', name: '<value>', address: '<value>', neighborhood: '<value>', city: '<value>', category: '<value>', status: '<value>', googlePlaceId: '<value>', rating: '<value>', priceLevel: '<value>', isFavorite: '<value>', notes: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', searchTsv: '<value>', mainImageId: '<value>', searchTsvRank: '<value>', nameTrgmSimilarity: '<value>', addressTrgmSimilarity: '<value>', neighborhoodTrgmSimilarity: '<value>', cityTrgmSimilarity: '<value>', categoryTrgmSimilarity: '<value>', statusTrgmSimilarity: '<value>', googlePlaceIdTrgmSimilarity: '<value>', priceLevelTrgmSimilarity: '<value>', notesTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute();

// Update
const updated = await db.venue.update({ where: { id: '<value>' }, data: { entityId: '<new-value>' }, select: { id: true } }).execute();

// Delete
const deleted = await db.venue.delete({ where: { id: '<value>' } }).execute();
```

---

Built by the [Constructive](https://constructive.io) team.

## Disclaimer

AS DESCRIBED IN THE LICENSES, THE SOFTWARE IS PROVIDED "AS IS", AT YOUR OWN RISK, AND WITHOUT WARRANTIES OF ANY KIND.

No developer or entity involved in creating this software will be liable for any claims or damages whatsoever associated with your use, inability to use, or your interaction with other users of the code, including any direct, indirect, incidental, special, exemplary, punitive or consequential damages, or loss of profits, cryptocurrencies, tokens, or anything else of value.
