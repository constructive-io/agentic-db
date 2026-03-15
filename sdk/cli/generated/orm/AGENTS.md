# ORM Client - Agent Reference

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->
> This document is structured for LLM/agent consumption.

## OVERVIEW

Prisma-like ORM client for interacting with a GraphQL API.
All methods return a query builder. Call `.execute()` to run the query.

## SETUP

```typescript
import { createClient } from './orm';

const db = createClient({
  endpoint: 'https://api.example.com/graphql',
  headers: { Authorization: 'Bearer <token>' },
});
```

## MODELS

### MODEL: agentPrompt

Access: `db.agentPrompt`

```
METHODS:
  db.agentPrompt.findMany({ select, where?, orderBy?, first?, offset? })
  db.agentPrompt.findOne({ id, select })
  db.agentPrompt.create({ data: { agentId, promptId, entityId }, select })
  db.agentPrompt.update({ where: { id }, data, select })
  db.agentPrompt.delete({ where: { id } })

FIELDS:
  agentId: string
  promptId: string
  id: string (primary key)
  entityId: string

EDITABLE FIELDS:
  agentId: string
  promptId: string
  entityId: string

OUTPUT: Promise<JSON>
  findMany: [{ agentId, promptId, id, entityId }]
  findOne:  { agentId, promptId, id, entityId }
  create:   { agentId, promptId, id, entityId }
  update:   { agentId, promptId, id, entityId }
  delete:   { id }
```

### MODEL: process

Access: `db.process`

```
METHODS:
  db.process.findMany({ select, where?, orderBy?, first?, offset? })
  db.process.findOne({ id, select })
  db.process.create({ data: { entityId, pid, agentId, command, startedAt, endedAt, status, exitCode, logsPath, commandTrgmSimilarity, statusTrgmSimilarity, logsPathTrgmSimilarity, searchScore }, select })
  db.process.update({ where: { id }, data, select })
  db.process.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  pid: number
  agentId: string
  command: string
  startedAt: string
  endedAt: string
  status: string
  exitCode: number
  logsPath: string
  commandTrgmSimilarity: number
  statusTrgmSimilarity: number
  logsPathTrgmSimilarity: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  pid: number
  agentId: string
  command: string
  startedAt: string
  endedAt: string
  status: string
  exitCode: number
  logsPath: string
  commandTrgmSimilarity: number
  statusTrgmSimilarity: number
  logsPathTrgmSimilarity: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, pid, agentId, command, startedAt, endedAt, status, exitCode, logsPath, commandTrgmSimilarity, statusTrgmSimilarity, logsPathTrgmSimilarity, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, pid, agentId, command, startedAt, endedAt, status, exitCode, logsPath, commandTrgmSimilarity, statusTrgmSimilarity, logsPathTrgmSimilarity, searchScore }
  create:   { id, entityId, createdAt, updatedAt, pid, agentId, command, startedAt, endedAt, status, exitCode, logsPath, commandTrgmSimilarity, statusTrgmSimilarity, logsPathTrgmSimilarity, searchScore }
  update:   { id, entityId, createdAt, updatedAt, pid, agentId, command, startedAt, endedAt, status, exitCode, logsPath, commandTrgmSimilarity, statusTrgmSimilarity, logsPathTrgmSimilarity, searchScore }
  delete:   { id }
```

### MODEL: scheduledJob

Access: `db.scheduledJob`

```
METHODS:
  db.scheduledJob.findMany({ select, where?, orderBy?, first?, offset? })
  db.scheduledJob.findOne({ id, select })
  db.scheduledJob.create({ data: { entityId, name, scheduleType, scheduleExpr, runAt, command, message, agentId, sessionId, isActive, deleteAfterRun, lastRunAt, nextRunAt, runCount, lastResult, nameTrgmSimilarity, scheduleTypeTrgmSimilarity, scheduleExprTrgmSimilarity, commandTrgmSimilarity, messageTrgmSimilarity, searchScore }, select })
  db.scheduledJob.update({ where: { id }, data, select })
  db.scheduledJob.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  name: string
  scheduleType: string
  scheduleExpr: string
  runAt: string
  command: string
  message: string
  agentId: string
  sessionId: string
  isActive: boolean
  deleteAfterRun: boolean
  lastRunAt: string
  nextRunAt: string
  runCount: number
  lastResult: unknown
  nameTrgmSimilarity: number
  scheduleTypeTrgmSimilarity: number
  scheduleExprTrgmSimilarity: number
  commandTrgmSimilarity: number
  messageTrgmSimilarity: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  name: string
  scheduleType: string
  scheduleExpr: string
  runAt: string
  command: string
  message: string
  agentId: string
  sessionId: string
  isActive: boolean
  deleteAfterRun: boolean
  lastRunAt: string
  nextRunAt: string
  runCount: number
  lastResult: unknown
  nameTrgmSimilarity: number
  scheduleTypeTrgmSimilarity: number
  scheduleExprTrgmSimilarity: number
  commandTrgmSimilarity: number
  messageTrgmSimilarity: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, scheduleType, scheduleExpr, runAt, command, message, agentId, sessionId, isActive, deleteAfterRun, lastRunAt, nextRunAt, runCount, lastResult, nameTrgmSimilarity, scheduleTypeTrgmSimilarity, scheduleExprTrgmSimilarity, commandTrgmSimilarity, messageTrgmSimilarity, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, name, scheduleType, scheduleExpr, runAt, command, message, agentId, sessionId, isActive, deleteAfterRun, lastRunAt, nextRunAt, runCount, lastResult, nameTrgmSimilarity, scheduleTypeTrgmSimilarity, scheduleExprTrgmSimilarity, commandTrgmSimilarity, messageTrgmSimilarity, searchScore }
  create:   { id, entityId, createdAt, updatedAt, name, scheduleType, scheduleExpr, runAt, command, message, agentId, sessionId, isActive, deleteAfterRun, lastRunAt, nextRunAt, runCount, lastResult, nameTrgmSimilarity, scheduleTypeTrgmSimilarity, scheduleExprTrgmSimilarity, commandTrgmSimilarity, messageTrgmSimilarity, searchScore }
  update:   { id, entityId, createdAt, updatedAt, name, scheduleType, scheduleExpr, runAt, command, message, agentId, sessionId, isActive, deleteAfterRun, lastRunAt, nextRunAt, runCount, lastResult, nameTrgmSimilarity, scheduleTypeTrgmSimilarity, scheduleExprTrgmSimilarity, commandTrgmSimilarity, messageTrgmSimilarity, searchScore }
  delete:   { id }
```

### MODEL: agentTool

Access: `db.agentTool`

```
METHODS:
  db.agentTool.findMany({ select, where?, orderBy?, first?, offset? })
  db.agentTool.findOne({ id, select })
  db.agentTool.create({ data: { agentId, toolId, entityId }, select })
  db.agentTool.update({ where: { id }, data, select })
  db.agentTool.delete({ where: { id } })

FIELDS:
  agentId: string
  toolId: string
  id: string (primary key)
  entityId: string

EDITABLE FIELDS:
  agentId: string
  toolId: string
  entityId: string

OUTPUT: Promise<JSON>
  findMany: [{ agentId, toolId, id, entityId }]
  findOne:  { agentId, toolId, id, entityId }
  create:   { agentId, toolId, id, entityId }
  update:   { agentId, toolId, id, entityId }
  delete:   { id }
```

### MODEL: agentSkill

Access: `db.agentSkill`

```
METHODS:
  db.agentSkill.findMany({ select, where?, orderBy?, first?, offset? })
  db.agentSkill.findOne({ id, select })
  db.agentSkill.create({ data: { agentId, skillId, entityId }, select })
  db.agentSkill.update({ where: { id }, data, select })
  db.agentSkill.delete({ where: { id } })

FIELDS:
  agentId: string
  skillId: string
  id: string (primary key)
  entityId: string

EDITABLE FIELDS:
  agentId: string
  skillId: string
  entityId: string

OUTPUT: Promise<JSON>
  findMany: [{ agentId, skillId, id, entityId }]
  findOne:  { agentId, skillId, id, entityId }
  create:   { agentId, skillId, id, entityId }
  update:   { agentId, skillId, id, entityId }
  delete:   { id }
```

### MODEL: agentRule

Access: `db.agentRule`

```
METHODS:
  db.agentRule.findMany({ select, where?, orderBy?, first?, offset? })
  db.agentRule.findOne({ id, select })
  db.agentRule.create({ data: { agentId, ruleId, entityId }, select })
  db.agentRule.update({ where: { id }, data, select })
  db.agentRule.delete({ where: { id } })

FIELDS:
  agentId: string
  ruleId: string
  id: string (primary key)
  entityId: string

EDITABLE FIELDS:
  agentId: string
  ruleId: string
  entityId: string

OUTPUT: Promise<JSON>
  findMany: [{ agentId, ruleId, id, entityId }]
  findOne:  { agentId, ruleId, id, entityId }
  create:   { agentId, ruleId, id, entityId }
  update:   { agentId, ruleId, id, entityId }
  delete:   { id }
```

### MODEL: calendarEventContact

Access: `db.calendarEventContact`

```
METHODS:
  db.calendarEventContact.findMany({ select, where?, orderBy?, first?, offset? })
  db.calendarEventContact.findOne({ id, select })
  db.calendarEventContact.create({ data: { calendarEventId, contactId, entityId }, select })
  db.calendarEventContact.update({ where: { id }, data, select })
  db.calendarEventContact.delete({ where: { id } })

FIELDS:
  calendarEventId: string
  contactId: string
  id: string (primary key)
  entityId: string

EDITABLE FIELDS:
  calendarEventId: string
  contactId: string
  entityId: string

OUTPUT: Promise<JSON>
  findMany: [{ calendarEventId, contactId, id, entityId }]
  findOne:  { calendarEventId, contactId, id, entityId }
  create:   { calendarEventId, contactId, id, entityId }
  update:   { calendarEventId, contactId, id, entityId }
  delete:   { id }
```

### MODEL: calendarEvent

Access: `db.calendarEvent`

```
METHODS:
  db.calendarEvent.findMany({ select, where?, orderBy?, first?, offset? })
  db.calendarEvent.findOne({ id, select })
  db.calendarEvent.create({ data: { entityId, calendarAccountId, remoteId, title, description, startAt, endAt, allDay, location, recurrenceRule, status, tags, embeddingText, embedding, embeddingTextBm25Score, remoteIdTrgmSimilarity, titleTrgmSimilarity, descriptionTrgmSimilarity, locationTrgmSimilarity, recurrenceRuleTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.calendarEvent.update({ where: { id }, data, select })
  db.calendarEvent.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  calendarAccountId: string
  remoteId: string
  title: string
  description: string
  startAt: string
  endAt: string
  allDay: boolean
  location: string
  recurrenceRule: string
  status: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  remoteIdTrgmSimilarity: number
  titleTrgmSimilarity: number
  descriptionTrgmSimilarity: number
  locationTrgmSimilarity: number
  recurrenceRuleTrgmSimilarity: number
  statusTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  calendarAccountId: string
  remoteId: string
  title: string
  description: string
  startAt: string
  endAt: string
  allDay: boolean
  location: string
  recurrenceRule: string
  status: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  remoteIdTrgmSimilarity: number
  titleTrgmSimilarity: number
  descriptionTrgmSimilarity: number
  locationTrgmSimilarity: number
  recurrenceRuleTrgmSimilarity: number
  statusTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, calendarAccountId, remoteId, title, description, startAt, endAt, allDay, location, recurrenceRule, status, tags, embeddingText, embedding, embeddingTextBm25Score, remoteIdTrgmSimilarity, titleTrgmSimilarity, descriptionTrgmSimilarity, locationTrgmSimilarity, recurrenceRuleTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, calendarAccountId, remoteId, title, description, startAt, endAt, allDay, location, recurrenceRule, status, tags, embeddingText, embedding, embeddingTextBm25Score, remoteIdTrgmSimilarity, titleTrgmSimilarity, descriptionTrgmSimilarity, locationTrgmSimilarity, recurrenceRuleTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, calendarAccountId, remoteId, title, description, startAt, endAt, allDay, location, recurrenceRule, status, tags, embeddingText, embedding, embeddingTextBm25Score, remoteIdTrgmSimilarity, titleTrgmSimilarity, descriptionTrgmSimilarity, locationTrgmSimilarity, recurrenceRuleTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, calendarAccountId, remoteId, title, description, startAt, endAt, allDay, location, recurrenceRule, status, tags, embeddingText, embedding, embeddingTextBm25Score, remoteIdTrgmSimilarity, titleTrgmSimilarity, descriptionTrgmSimilarity, locationTrgmSimilarity, recurrenceRuleTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: interaction

Access: `db.interaction`

```
METHODS:
  db.interaction.findMany({ select, where?, orderBy?, first?, offset? })
  db.interaction.findOne({ id, select })
  db.interaction.create({ data: { entityId, contactId, type, occurredAt, summary, sentiment, tags, embeddingText, embedding, embeddingTextBm25Score, typeTrgmSimilarity, summaryTrgmSimilarity, sentimentTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.interaction.update({ where: { id }, data, select })
  db.interaction.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  contactId: string
  type: string
  occurredAt: string
  summary: string
  sentiment: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  typeTrgmSimilarity: number
  summaryTrgmSimilarity: number
  sentimentTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  contactId: string
  type: string
  occurredAt: string
  summary: string
  sentiment: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  typeTrgmSimilarity: number
  summaryTrgmSimilarity: number
  sentimentTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, contactId, type, occurredAt, summary, sentiment, tags, embeddingText, embedding, embeddingTextBm25Score, typeTrgmSimilarity, summaryTrgmSimilarity, sentimentTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, contactId, type, occurredAt, summary, sentiment, tags, embeddingText, embedding, embeddingTextBm25Score, typeTrgmSimilarity, summaryTrgmSimilarity, sentimentTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, contactId, type, occurredAt, summary, sentiment, tags, embeddingText, embedding, embeddingTextBm25Score, typeTrgmSimilarity, summaryTrgmSimilarity, sentimentTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, contactId, type, occurredAt, summary, sentiment, tags, embeddingText, embedding, embeddingTextBm25Score, typeTrgmSimilarity, summaryTrgmSimilarity, sentimentTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: companyEvent

Access: `db.companyEvent`

```
METHODS:
  db.companyEvent.findMany({ select, where?, orderBy?, first?, offset? })
  db.companyEvent.findOne({ id, select })
  db.companyEvent.create({ data: { companyId, eventId, entityId }, select })
  db.companyEvent.update({ where: { id }, data, select })
  db.companyEvent.delete({ where: { id } })

FIELDS:
  companyId: string
  eventId: string
  id: string (primary key)
  entityId: string

EDITABLE FIELDS:
  companyId: string
  eventId: string
  entityId: string

OUTPUT: Promise<JSON>
  findMany: [{ companyId, eventId, id, entityId }]
  findOne:  { companyId, eventId, id, entityId }
  create:   { companyId, eventId, id, entityId }
  update:   { companyId, eventId, id, entityId }
  delete:   { id }
```

### MODEL: companyImage

Access: `db.companyImage`

```
METHODS:
  db.companyImage.findMany({ select, where?, orderBy?, first?, offset? })
  db.companyImage.findOne({ id, select })
  db.companyImage.create({ data: { companyId, imageId, entityId }, select })
  db.companyImage.update({ where: { id }, data, select })
  db.companyImage.delete({ where: { id } })

FIELDS:
  companyId: string
  imageId: string
  id: string (primary key)
  entityId: string

EDITABLE FIELDS:
  companyId: string
  imageId: string
  entityId: string

OUTPUT: Promise<JSON>
  findMany: [{ companyId, imageId, id, entityId }]
  findOne:  { companyId, imageId, id, entityId }
  create:   { companyId, imageId, id, entityId }
  update:   { companyId, imageId, id, entityId }
  delete:   { id }
```

### MODEL: contactCompany

Access: `db.contactCompany`

```
METHODS:
  db.contactCompany.findMany({ select, where?, orderBy?, first?, offset? })
  db.contactCompany.findOne({ id, select })
  db.contactCompany.create({ data: { contactId, companyId, entityId }, select })
  db.contactCompany.update({ where: { id }, data, select })
  db.contactCompany.delete({ where: { id } })

FIELDS:
  contactId: string
  companyId: string
  id: string (primary key)
  entityId: string

EDITABLE FIELDS:
  contactId: string
  companyId: string
  entityId: string

OUTPUT: Promise<JSON>
  findMany: [{ contactId, companyId, id, entityId }]
  findOne:  { contactId, companyId, id, entityId }
  create:   { contactId, companyId, id, entityId }
  update:   { contactId, companyId, id, entityId }
  delete:   { id }
```

### MODEL: contactEvent

Access: `db.contactEvent`

```
METHODS:
  db.contactEvent.findMany({ select, where?, orderBy?, first?, offset? })
  db.contactEvent.findOne({ id, select })
  db.contactEvent.create({ data: { contactId, eventId, entityId }, select })
  db.contactEvent.update({ where: { id }, data, select })
  db.contactEvent.delete({ where: { id } })

FIELDS:
  contactId: string
  eventId: string
  id: string (primary key)
  entityId: string

EDITABLE FIELDS:
  contactId: string
  eventId: string
  entityId: string

OUTPUT: Promise<JSON>
  findMany: [{ contactId, eventId, id, entityId }]
  findOne:  { contactId, eventId, id, entityId }
  create:   { contactId, eventId, id, entityId }
  update:   { contactId, eventId, id, entityId }
  delete:   { id }
```

### MODEL: contactImage

Access: `db.contactImage`

```
METHODS:
  db.contactImage.findMany({ select, where?, orderBy?, first?, offset? })
  db.contactImage.findOne({ id, select })
  db.contactImage.create({ data: { contactId, imageId, entityId }, select })
  db.contactImage.update({ where: { id }, data, select })
  db.contactImage.delete({ where: { id } })

FIELDS:
  contactId: string
  imageId: string
  id: string (primary key)
  entityId: string

EDITABLE FIELDS:
  contactId: string
  imageId: string
  entityId: string

OUTPUT: Promise<JSON>
  findMany: [{ contactId, imageId, id, entityId }]
  findOne:  { contactId, imageId, id, entityId }
  create:   { contactId, imageId, id, entityId }
  update:   { contactId, imageId, id, entityId }
  delete:   { id }
```

### MODEL: dealContact

Access: `db.dealContact`

```
METHODS:
  db.dealContact.findMany({ select, where?, orderBy?, first?, offset? })
  db.dealContact.findOne({ id, select })
  db.dealContact.create({ data: { dealId, contactId, entityId }, select })
  db.dealContact.update({ where: { id }, data, select })
  db.dealContact.delete({ where: { id } })

FIELDS:
  dealId: string
  contactId: string
  id: string (primary key)
  entityId: string

EDITABLE FIELDS:
  dealId: string
  contactId: string
  entityId: string

OUTPUT: Promise<JSON>
  findMany: [{ dealId, contactId, id, entityId }]
  findOne:  { dealId, contactId, id, entityId }
  create:   { dealId, contactId, id, entityId }
  update:   { dealId, contactId, id, entityId }
  delete:   { id }
```

### MODEL: eventImage

Access: `db.eventImage`

```
METHODS:
  db.eventImage.findMany({ select, where?, orderBy?, first?, offset? })
  db.eventImage.findOne({ id, select })
  db.eventImage.create({ data: { eventId, imageId, entityId }, select })
  db.eventImage.update({ where: { id }, data, select })
  db.eventImage.delete({ where: { id } })

FIELDS:
  eventId: string
  imageId: string
  id: string (primary key)
  entityId: string

EDITABLE FIELDS:
  eventId: string
  imageId: string
  entityId: string

OUTPUT: Promise<JSON>
  findMany: [{ eventId, imageId, id, entityId }]
  findOne:  { eventId, imageId, id, entityId }
  create:   { eventId, imageId, id, entityId }
  update:   { eventId, imageId, id, entityId }
  delete:   { id }
```

### MODEL: eventVenue

Access: `db.eventVenue`

```
METHODS:
  db.eventVenue.findMany({ select, where?, orderBy?, first?, offset? })
  db.eventVenue.findOne({ id, select })
  db.eventVenue.create({ data: { eventId, venueId, entityId }, select })
  db.eventVenue.update({ where: { id }, data, select })
  db.eventVenue.delete({ where: { id } })

FIELDS:
  eventId: string
  venueId: string
  id: string (primary key)
  entityId: string

EDITABLE FIELDS:
  eventId: string
  venueId: string
  entityId: string

OUTPUT: Promise<JSON>
  findMany: [{ eventId, venueId, id, entityId }]
  findOne:  { eventId, venueId, id, entityId }
  create:   { eventId, venueId, id, entityId }
  update:   { eventId, venueId, id, entityId }
  delete:   { id }
```

### MODEL: expenseContact

Access: `db.expenseContact`

```
METHODS:
  db.expenseContact.findMany({ select, where?, orderBy?, first?, offset? })
  db.expenseContact.findOne({ id, select })
  db.expenseContact.create({ data: { expenseId, contactId, entityId }, select })
  db.expenseContact.update({ where: { id }, data, select })
  db.expenseContact.delete({ where: { id } })

FIELDS:
  expenseId: string
  contactId: string
  id: string (primary key)
  entityId: string

EDITABLE FIELDS:
  expenseId: string
  contactId: string
  entityId: string

OUTPUT: Promise<JSON>
  findMany: [{ expenseId, contactId, id, entityId }]
  findOne:  { expenseId, contactId, id, entityId }
  create:   { expenseId, contactId, id, entityId }
  update:   { expenseId, contactId, id, entityId }
  delete:   { id }
```

### MODEL: goalHabit

Access: `db.goalHabit`

```
METHODS:
  db.goalHabit.findMany({ select, where?, orderBy?, first?, offset? })
  db.goalHabit.findOne({ id, select })
  db.goalHabit.create({ data: { goalId, habitId, entityId }, select })
  db.goalHabit.update({ where: { id }, data, select })
  db.goalHabit.delete({ where: { id } })

FIELDS:
  goalId: string
  habitId: string
  id: string (primary key)
  entityId: string

EDITABLE FIELDS:
  goalId: string
  habitId: string
  entityId: string

OUTPUT: Promise<JSON>
  findMany: [{ goalId, habitId, id, entityId }]
  findOne:  { goalId, habitId, id, entityId }
  create:   { goalId, habitId, id, entityId }
  update:   { goalId, habitId, id, entityId }
  delete:   { id }
```

### MODEL: habitLog

Access: `db.habitLog`

```
METHODS:
  db.habitLog.findMany({ select, where?, orderBy?, first?, offset? })
  db.habitLog.findOne({ id, select })
  db.habitLog.create({ data: { entityId, habitId, completedAt, activityType, durationMinutes, distance, distanceUnit, reps, sets, weightAmount, weightUnit, calories, data, notes, tags, activityTypeTrgmSimilarity, distanceUnitTrgmSimilarity, weightUnitTrgmSimilarity, notesTrgmSimilarity, searchScore }, select })
  db.habitLog.update({ where: { id }, data, select })
  db.habitLog.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  habitId: string
  completedAt: string
  activityType: string
  durationMinutes: string
  distance: string
  distanceUnit: string
  reps: number
  sets: number
  weightAmount: string
  weightUnit: string
  calories: string
  data: unknown
  notes: string
  tags: string[]
  activityTypeTrgmSimilarity: number
  distanceUnitTrgmSimilarity: number
  weightUnitTrgmSimilarity: number
  notesTrgmSimilarity: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  habitId: string
  completedAt: string
  activityType: string
  durationMinutes: string
  distance: string
  distanceUnit: string
  reps: number
  sets: number
  weightAmount: string
  weightUnit: string
  calories: string
  data: unknown
  notes: string
  tags: string[]
  activityTypeTrgmSimilarity: number
  distanceUnitTrgmSimilarity: number
  weightUnitTrgmSimilarity: number
  notesTrgmSimilarity: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, habitId, completedAt, activityType, durationMinutes, distance, distanceUnit, reps, sets, weightAmount, weightUnit, calories, data, notes, tags, activityTypeTrgmSimilarity, distanceUnitTrgmSimilarity, weightUnitTrgmSimilarity, notesTrgmSimilarity, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, habitId, completedAt, activityType, durationMinutes, distance, distanceUnit, reps, sets, weightAmount, weightUnit, calories, data, notes, tags, activityTypeTrgmSimilarity, distanceUnitTrgmSimilarity, weightUnitTrgmSimilarity, notesTrgmSimilarity, searchScore }
  create:   { id, entityId, createdAt, updatedAt, habitId, completedAt, activityType, durationMinutes, distance, distanceUnit, reps, sets, weightAmount, weightUnit, calories, data, notes, tags, activityTypeTrgmSimilarity, distanceUnitTrgmSimilarity, weightUnitTrgmSimilarity, notesTrgmSimilarity, searchScore }
  update:   { id, entityId, createdAt, updatedAt, habitId, completedAt, activityType, durationMinutes, distance, distanceUnit, reps, sets, weightAmount, weightUnit, calories, data, notes, tags, activityTypeTrgmSimilarity, distanceUnitTrgmSimilarity, weightUnitTrgmSimilarity, notesTrgmSimilarity, searchScore }
  delete:   { id }
```

### MODEL: goalProject

Access: `db.goalProject`

```
METHODS:
  db.goalProject.findMany({ select, where?, orderBy?, first?, offset? })
  db.goalProject.findOne({ id, select })
  db.goalProject.create({ data: { goalId, projectId, entityId }, select })
  db.goalProject.update({ where: { id }, data, select })
  db.goalProject.delete({ where: { id } })

FIELDS:
  goalId: string
  projectId: string
  id: string (primary key)
  entityId: string

EDITABLE FIELDS:
  goalId: string
  projectId: string
  entityId: string

OUTPUT: Promise<JSON>
  findMany: [{ goalId, projectId, id, entityId }]
  findOne:  { goalId, projectId, id, entityId }
  create:   { goalId, projectId, id, entityId }
  update:   { goalId, projectId, id, entityId }
  delete:   { id }
```

### MODEL: milestone

Access: `db.milestone`

```
METHODS:
  db.milestone.findMany({ select, where?, orderBy?, first?, offset? })
  db.milestone.findOne({ id, select })
  db.milestone.create({ data: { entityId, projectId, name, dueDate, status, nameTrgmSimilarity, statusTrgmSimilarity, searchScore }, select })
  db.milestone.update({ where: { id }, data, select })
  db.milestone.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  projectId: string
  name: string
  dueDate: string
  status: string
  nameTrgmSimilarity: number
  statusTrgmSimilarity: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  projectId: string
  name: string
  dueDate: string
  status: string
  nameTrgmSimilarity: number
  statusTrgmSimilarity: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, projectId, name, dueDate, status, nameTrgmSimilarity, statusTrgmSimilarity, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, projectId, name, dueDate, status, nameTrgmSimilarity, statusTrgmSimilarity, searchScore }
  create:   { id, entityId, createdAt, updatedAt, projectId, name, dueDate, status, nameTrgmSimilarity, statusTrgmSimilarity, searchScore }
  update:   { id, entityId, createdAt, updatedAt, projectId, name, dueDate, status, nameTrgmSimilarity, statusTrgmSimilarity, searchScore }
  delete:   { id }
```

### MODEL: projectContact

Access: `db.projectContact`

```
METHODS:
  db.projectContact.findMany({ select, where?, orderBy?, first?, offset? })
  db.projectContact.findOne({ id, select })
  db.projectContact.create({ data: { projectId, contactId, entityId }, select })
  db.projectContact.update({ where: { id }, data, select })
  db.projectContact.delete({ where: { id } })

FIELDS:
  projectId: string
  contactId: string
  id: string (primary key)
  entityId: string

EDITABLE FIELDS:
  projectId: string
  contactId: string
  entityId: string

OUTPUT: Promise<JSON>
  findMany: [{ projectId, contactId, id, entityId }]
  findOne:  { projectId, contactId, id, entityId }
  create:   { projectId, contactId, id, entityId }
  update:   { projectId, contactId, id, entityId }
  delete:   { id }
```

### MODEL: taskContact

Access: `db.taskContact`

```
METHODS:
  db.taskContact.findMany({ select, where?, orderBy?, first?, offset? })
  db.taskContact.findOne({ id, select })
  db.taskContact.create({ data: { taskId, contactId, entityId }, select })
  db.taskContact.update({ where: { id }, data, select })
  db.taskContact.delete({ where: { id } })

FIELDS:
  taskId: string
  contactId: string
  id: string (primary key)
  entityId: string

EDITABLE FIELDS:
  taskId: string
  contactId: string
  entityId: string

OUTPUT: Promise<JSON>
  findMany: [{ taskId, contactId, id, entityId }]
  findOne:  { taskId, contactId, id, entityId }
  create:   { taskId, contactId, id, entityId }
  update:   { taskId, contactId, id, entityId }
  delete:   { id }
```

### MODEL: venueImage

Access: `db.venueImage`

```
METHODS:
  db.venueImage.findMany({ select, where?, orderBy?, first?, offset? })
  db.venueImage.findOne({ id, select })
  db.venueImage.create({ data: { venueId, imageId, entityId }, select })
  db.venueImage.update({ where: { id }, data, select })
  db.venueImage.delete({ where: { id } })

FIELDS:
  venueId: string
  imageId: string
  id: string (primary key)
  entityId: string

EDITABLE FIELDS:
  venueId: string
  imageId: string
  entityId: string

OUTPUT: Promise<JSON>
  findMany: [{ venueId, imageId, id, entityId }]
  findOne:  { venueId, imageId, id, entityId }
  create:   { venueId, imageId, id, entityId }
  update:   { venueId, imageId, id, entityId }
  delete:   { id }
```

### MODEL: file

Access: `db.file`

```
METHODS:
  db.file.findMany({ select, where?, orderBy?, first?, offset? })
  db.file.findOne({ id, select })
  db.file.create({ data: { entityId, repositoryId, path, language, hash, pathTrgmSimilarity, languageTrgmSimilarity, hashTrgmSimilarity, searchScore }, select })
  db.file.update({ where: { id }, data, select })
  db.file.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  repositoryId: string
  path: string
  language: string
  hash: string
  pathTrgmSimilarity: number
  languageTrgmSimilarity: number
  hashTrgmSimilarity: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  repositoryId: string
  path: string
  language: string
  hash: string
  pathTrgmSimilarity: number
  languageTrgmSimilarity: number
  hashTrgmSimilarity: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, repositoryId, path, language, hash, pathTrgmSimilarity, languageTrgmSimilarity, hashTrgmSimilarity, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, repositoryId, path, language, hash, pathTrgmSimilarity, languageTrgmSimilarity, hashTrgmSimilarity, searchScore }
  create:   { id, entityId, createdAt, updatedAt, repositoryId, path, language, hash, pathTrgmSimilarity, languageTrgmSimilarity, hashTrgmSimilarity, searchScore }
  update:   { id, entityId, createdAt, updatedAt, repositoryId, path, language, hash, pathTrgmSimilarity, languageTrgmSimilarity, hashTrgmSimilarity, searchScore }
  delete:   { id }
```

### MODEL: chunk

Access: `db.chunk`

```
METHODS:
  db.chunk.findMany({ select, where?, orderBy?, first?, offset? })
  db.chunk.findOne({ id, select })
  db.chunk.create({ data: { entityId, fileId, repositoryId, content, startLine, endLine, embeddingText, embedding, embeddingTextBm25Score, contentTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.chunk.update({ where: { id }, data, select })
  db.chunk.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  fileId: string
  repositoryId: string
  content: string
  startLine: number
  endLine: number
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  contentTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  fileId: string
  repositoryId: string
  content: string
  startLine: number
  endLine: number
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  contentTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, fileId, repositoryId, content, startLine, endLine, embeddingText, embedding, embeddingTextBm25Score, contentTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, fileId, repositoryId, content, startLine, endLine, embeddingText, embedding, embeddingTextBm25Score, contentTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, fileId, repositoryId, content, startLine, endLine, embeddingText, embedding, embeddingTextBm25Score, contentTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, fileId, repositoryId, content, startLine, endLine, embeddingText, embedding, embeddingTextBm25Score, contentTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: calendarAccount

Access: `db.calendarAccount`

```
METHODS:
  db.calendarAccount.findMany({ select, where?, orderBy?, first?, offset? })
  db.calendarAccount.findOne({ id, select })
  db.calendarAccount.create({ data: { entityId, email, provider, syncToken, lastSyncedAt, emailTrgmSimilarity, providerTrgmSimilarity, syncTokenTrgmSimilarity, searchScore }, select })
  db.calendarAccount.update({ where: { id }, data, select })
  db.calendarAccount.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  email: string
  provider: string
  syncToken: string
  lastSyncedAt: string
  emailTrgmSimilarity: number
  providerTrgmSimilarity: number
  syncTokenTrgmSimilarity: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  email: string
  provider: string
  syncToken: string
  lastSyncedAt: string
  emailTrgmSimilarity: number
  providerTrgmSimilarity: number
  syncTokenTrgmSimilarity: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, email, provider, syncToken, lastSyncedAt, emailTrgmSimilarity, providerTrgmSimilarity, syncTokenTrgmSimilarity, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, email, provider, syncToken, lastSyncedAt, emailTrgmSimilarity, providerTrgmSimilarity, syncTokenTrgmSimilarity, searchScore }
  create:   { id, entityId, createdAt, updatedAt, email, provider, syncToken, lastSyncedAt, emailTrgmSimilarity, providerTrgmSimilarity, syncTokenTrgmSimilarity, searchScore }
  update:   { id, entityId, createdAt, updatedAt, email, provider, syncToken, lastSyncedAt, emailTrgmSimilarity, providerTrgmSimilarity, syncTokenTrgmSimilarity, searchScore }
  delete:   { id }
```

### MODEL: tag

Access: `db.tag`

```
METHODS:
  db.tag.findMany({ select, where?, orderBy?, first?, offset? })
  db.tag.findOne({ id, select })
  db.tag.create({ data: { entityId, name, color, category, usageCount, nameTrgmSimilarity, colorTrgmSimilarity, categoryTrgmSimilarity, searchScore }, select })
  db.tag.update({ where: { id }, data, select })
  db.tag.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  name: string
  color: string
  category: string
  usageCount: number
  nameTrgmSimilarity: number
  colorTrgmSimilarity: number
  categoryTrgmSimilarity: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  name: string
  color: string
  category: string
  usageCount: number
  nameTrgmSimilarity: number
  colorTrgmSimilarity: number
  categoryTrgmSimilarity: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, color, category, usageCount, nameTrgmSimilarity, colorTrgmSimilarity, categoryTrgmSimilarity, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, name, color, category, usageCount, nameTrgmSimilarity, colorTrgmSimilarity, categoryTrgmSimilarity, searchScore }
  create:   { id, entityId, createdAt, updatedAt, name, color, category, usageCount, nameTrgmSimilarity, colorTrgmSimilarity, categoryTrgmSimilarity, searchScore }
  update:   { id, entityId, createdAt, updatedAt, name, color, category, usageCount, nameTrgmSimilarity, colorTrgmSimilarity, categoryTrgmSimilarity, searchScore }
  delete:   { id }
```

### MODEL: feedback

Access: `db.feedback`

```
METHODS:
  db.feedback.findMany({ select, where?, orderBy?, first?, offset? })
  db.feedback.findOne({ id, select })
  db.feedback.create({ data: { entityId, targetType, targetId, rating, comment, source, targetTypeTrgmSimilarity, commentTrgmSimilarity, sourceTrgmSimilarity, searchScore }, select })
  db.feedback.update({ where: { id }, data, select })
  db.feedback.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  targetType: string
  targetId: string
  rating: number
  comment: string
  source: string
  targetTypeTrgmSimilarity: number
  commentTrgmSimilarity: number
  sourceTrgmSimilarity: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  targetType: string
  targetId: string
  rating: number
  comment: string
  source: string
  targetTypeTrgmSimilarity: number
  commentTrgmSimilarity: number
  sourceTrgmSimilarity: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, targetType, targetId, rating, comment, source, targetTypeTrgmSimilarity, commentTrgmSimilarity, sourceTrgmSimilarity, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, targetType, targetId, rating, comment, source, targetTypeTrgmSimilarity, commentTrgmSimilarity, sourceTrgmSimilarity, searchScore }
  create:   { id, entityId, createdAt, updatedAt, targetType, targetId, rating, comment, source, targetTypeTrgmSimilarity, commentTrgmSimilarity, sourceTrgmSimilarity, searchScore }
  update:   { id, entityId, createdAt, updatedAt, targetType, targetId, rating, comment, source, targetTypeTrgmSimilarity, commentTrgmSimilarity, sourceTrgmSimilarity, searchScore }
  delete:   { id }
```

### MODEL: attachment

Access: `db.attachment`

```
METHODS:
  db.attachment.findMany({ select, where?, orderBy?, first?, offset? })
  db.attachment.findOne({ id, select })
  db.attachment.create({ data: { entityId, url, filename, mimeType, sizeBytes, attachableType, attachableId, urlTrgmSimilarity, filenameTrgmSimilarity, mimeTypeTrgmSimilarity, attachableTypeTrgmSimilarity, searchScore }, select })
  db.attachment.update({ where: { id }, data, select })
  db.attachment.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  url: string
  filename: string
  mimeType: string
  sizeBytes: number
  attachableType: string
  attachableId: string
  urlTrgmSimilarity: number
  filenameTrgmSimilarity: number
  mimeTypeTrgmSimilarity: number
  attachableTypeTrgmSimilarity: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  url: string
  filename: string
  mimeType: string
  sizeBytes: number
  attachableType: string
  attachableId: string
  urlTrgmSimilarity: number
  filenameTrgmSimilarity: number
  mimeTypeTrgmSimilarity: number
  attachableTypeTrgmSimilarity: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, url, filename, mimeType, sizeBytes, attachableType, attachableId, urlTrgmSimilarity, filenameTrgmSimilarity, mimeTypeTrgmSimilarity, attachableTypeTrgmSimilarity, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, url, filename, mimeType, sizeBytes, attachableType, attachableId, urlTrgmSimilarity, filenameTrgmSimilarity, mimeTypeTrgmSimilarity, attachableTypeTrgmSimilarity, searchScore }
  create:   { id, entityId, createdAt, updatedAt, url, filename, mimeType, sizeBytes, attachableType, attachableId, urlTrgmSimilarity, filenameTrgmSimilarity, mimeTypeTrgmSimilarity, attachableTypeTrgmSimilarity, searchScore }
  update:   { id, entityId, createdAt, updatedAt, url, filename, mimeType, sizeBytes, attachableType, attachableId, urlTrgmSimilarity, filenameTrgmSimilarity, mimeTypeTrgmSimilarity, attachableTypeTrgmSimilarity, searchScore }
  delete:   { id }
```

### MODEL: emailAccount

Access: `db.emailAccount`

```
METHODS:
  db.emailAccount.findMany({ select, where?, orderBy?, first?, offset? })
  db.emailAccount.findOne({ id, select })
  db.emailAccount.create({ data: { entityId, email, provider, syncState, emailTrgmSimilarity, providerTrgmSimilarity, searchScore }, select })
  db.emailAccount.update({ where: { id }, data, select })
  db.emailAccount.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  email: string
  provider: string
  syncState: unknown
  emailTrgmSimilarity: number
  providerTrgmSimilarity: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  email: string
  provider: string
  syncState: unknown
  emailTrgmSimilarity: number
  providerTrgmSimilarity: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, email, provider, syncState, emailTrgmSimilarity, providerTrgmSimilarity, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, email, provider, syncState, emailTrgmSimilarity, providerTrgmSimilarity, searchScore }
  create:   { id, entityId, createdAt, updatedAt, email, provider, syncState, emailTrgmSimilarity, providerTrgmSimilarity, searchScore }
  update:   { id, entityId, createdAt, updatedAt, email, provider, syncState, emailTrgmSimilarity, providerTrgmSimilarity, searchScore }
  delete:   { id }
```

### MODEL: message

Access: `db.message`

```
METHODS:
  db.message.findMany({ select, where?, orderBy?, first?, offset? })
  db.message.findOne({ id, select })
  db.message.create({ data: { entityId, emailAccountId, threadId, remoteId, fromAddress, toAddresses, subject, bodyText, receivedAt, tags, embeddingText, embedding, bodyTextBm25Score, embeddingTextBm25Score, threadIdTrgmSimilarity, remoteIdTrgmSimilarity, fromAddressTrgmSimilarity, subjectTrgmSimilarity, bodyTextTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.message.update({ where: { id }, data, select })
  db.message.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  emailAccountId: string
  threadId: string
  remoteId: string
  fromAddress: string
  toAddresses: string[]
  subject: string
  bodyText: string
  receivedAt: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  bodyTextBm25Score: number
  embeddingTextBm25Score: number
  threadIdTrgmSimilarity: number
  remoteIdTrgmSimilarity: number
  fromAddressTrgmSimilarity: number
  subjectTrgmSimilarity: number
  bodyTextTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  emailAccountId: string
  threadId: string
  remoteId: string
  fromAddress: string
  toAddresses: string[]
  subject: string
  bodyText: string
  receivedAt: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  bodyTextBm25Score: number
  embeddingTextBm25Score: number
  threadIdTrgmSimilarity: number
  remoteIdTrgmSimilarity: number
  fromAddressTrgmSimilarity: number
  subjectTrgmSimilarity: number
  bodyTextTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, emailAccountId, threadId, remoteId, fromAddress, toAddresses, subject, bodyText, receivedAt, tags, embeddingText, embedding, bodyTextBm25Score, embeddingTextBm25Score, threadIdTrgmSimilarity, remoteIdTrgmSimilarity, fromAddressTrgmSimilarity, subjectTrgmSimilarity, bodyTextTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, emailAccountId, threadId, remoteId, fromAddress, toAddresses, subject, bodyText, receivedAt, tags, embeddingText, embedding, bodyTextBm25Score, embeddingTextBm25Score, threadIdTrgmSimilarity, remoteIdTrgmSimilarity, fromAddressTrgmSimilarity, subjectTrgmSimilarity, bodyTextTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, emailAccountId, threadId, remoteId, fromAddress, toAddresses, subject, bodyText, receivedAt, tags, embeddingText, embedding, bodyTextBm25Score, embeddingTextBm25Score, threadIdTrgmSimilarity, remoteIdTrgmSimilarity, fromAddressTrgmSimilarity, subjectTrgmSimilarity, bodyTextTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, emailAccountId, threadId, remoteId, fromAddress, toAddresses, subject, bodyText, receivedAt, tags, embeddingText, embedding, bodyTextBm25Score, embeddingTextBm25Score, threadIdTrgmSimilarity, remoteIdTrgmSimilarity, fromAddressTrgmSimilarity, subjectTrgmSimilarity, bodyTextTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: activityLog

Access: `db.activityLog`

```
METHODS:
  db.activityLog.findMany({ select, where?, orderBy?, first?, offset? })
  db.activityLog.findOne({ id, select })
  db.activityLog.create({ data: { entityId, actorType, actorId, action, targetType, targetId, metadata, actorTypeTrgmSimilarity, actionTrgmSimilarity, targetTypeTrgmSimilarity, searchScore }, select })
  db.activityLog.update({ where: { id }, data, select })
  db.activityLog.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  actorType: string
  actorId: string
  action: string
  targetType: string
  targetId: string
  metadata: unknown
  actorTypeTrgmSimilarity: number
  actionTrgmSimilarity: number
  targetTypeTrgmSimilarity: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  actorType: string
  actorId: string
  action: string
  targetType: string
  targetId: string
  metadata: unknown
  actorTypeTrgmSimilarity: number
  actionTrgmSimilarity: number
  targetTypeTrgmSimilarity: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, actorType, actorId, action, targetType, targetId, metadata, actorTypeTrgmSimilarity, actionTrgmSimilarity, targetTypeTrgmSimilarity, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, actorType, actorId, action, targetType, targetId, metadata, actorTypeTrgmSimilarity, actionTrgmSimilarity, targetTypeTrgmSimilarity, searchScore }
  create:   { id, entityId, createdAt, updatedAt, actorType, actorId, action, targetType, targetId, metadata, actorTypeTrgmSimilarity, actionTrgmSimilarity, targetTypeTrgmSimilarity, searchScore }
  update:   { id, entityId, createdAt, updatedAt, actorType, actorId, action, targetType, targetId, metadata, actorTypeTrgmSimilarity, actionTrgmSimilarity, targetTypeTrgmSimilarity, searchScore }
  delete:   { id }
```

### MODEL: contextRelation

Access: `db.contextRelation`

```
METHODS:
  db.contextRelation.findMany({ select, where?, orderBy?, first?, offset? })
  db.contextRelation.findOne({ id, select })
  db.contextRelation.create({ data: { entityId, fromType, fromId, toType, toId, relationKind, reason, strength, fromTypeTrgmSimilarity, toTypeTrgmSimilarity, relationKindTrgmSimilarity, reasonTrgmSimilarity, searchScore }, select })
  db.contextRelation.update({ where: { id }, data, select })
  db.contextRelation.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  fromType: string
  fromId: string
  toType: string
  toId: string
  relationKind: string
  reason: string
  strength: string
  fromTypeTrgmSimilarity: number
  toTypeTrgmSimilarity: number
  relationKindTrgmSimilarity: number
  reasonTrgmSimilarity: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  fromType: string
  fromId: string
  toType: string
  toId: string
  relationKind: string
  reason: string
  strength: string
  fromTypeTrgmSimilarity: number
  toTypeTrgmSimilarity: number
  relationKindTrgmSimilarity: number
  reasonTrgmSimilarity: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, fromType, fromId, toType, toId, relationKind, reason, strength, fromTypeTrgmSimilarity, toTypeTrgmSimilarity, relationKindTrgmSimilarity, reasonTrgmSimilarity, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, fromType, fromId, toType, toId, relationKind, reason, strength, fromTypeTrgmSimilarity, toTypeTrgmSimilarity, relationKindTrgmSimilarity, reasonTrgmSimilarity, searchScore }
  create:   { id, entityId, createdAt, updatedAt, fromType, fromId, toType, toId, relationKind, reason, strength, fromTypeTrgmSimilarity, toTypeTrgmSimilarity, relationKindTrgmSimilarity, reasonTrgmSimilarity, searchScore }
  update:   { id, entityId, createdAt, updatedAt, fromType, fromId, toType, toId, relationKind, reason, strength, fromTypeTrgmSimilarity, toTypeTrgmSimilarity, relationKindTrgmSimilarity, reasonTrgmSimilarity, searchScore }
  delete:   { id }
```

### MODEL: userSetting

Access: `db.userSetting`

```
METHODS:
  db.userSetting.findMany({ select, where?, orderBy?, first?, offset? })
  db.userSetting.findOne({ id, select })
  db.userSetting.create({ data: { entityId, key, value, category, keyTrgmSimilarity, categoryTrgmSimilarity, searchScore }, select })
  db.userSetting.update({ where: { id }, data, select })
  db.userSetting.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  key: string
  value: unknown
  category: string
  keyTrgmSimilarity: number
  categoryTrgmSimilarity: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  key: string
  value: unknown
  category: string
  keyTrgmSimilarity: number
  categoryTrgmSimilarity: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, key, value, category, keyTrgmSimilarity, categoryTrgmSimilarity, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, key, value, category, keyTrgmSimilarity, categoryTrgmSimilarity, searchScore }
  create:   { id, entityId, createdAt, updatedAt, key, value, category, keyTrgmSimilarity, categoryTrgmSimilarity, searchScore }
  update:   { id, entityId, createdAt, updatedAt, key, value, category, keyTrgmSimilarity, categoryTrgmSimilarity, searchScore }
  delete:   { id }
```

### MODEL: executionLog

Access: `db.executionLog`

```
METHODS:
  db.executionLog.findMany({ select, where?, orderBy?, first?, offset? })
  db.executionLog.findOne({ id, select })
  db.executionLog.create({ data: { entityId, sessionId, stepName, input, output, toolCalls, durationMs, stepNameTrgmSimilarity, inputTrgmSimilarity, outputTrgmSimilarity, searchScore }, select })
  db.executionLog.update({ where: { id }, data, select })
  db.executionLog.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  sessionId: string
  stepName: string
  input: string
  output: string
  toolCalls: unknown
  durationMs: number
  stepNameTrgmSimilarity: number
  inputTrgmSimilarity: number
  outputTrgmSimilarity: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  sessionId: string
  stepName: string
  input: string
  output: string
  toolCalls: unknown
  durationMs: number
  stepNameTrgmSimilarity: number
  inputTrgmSimilarity: number
  outputTrgmSimilarity: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, sessionId, stepName, input, output, toolCalls, durationMs, stepNameTrgmSimilarity, inputTrgmSimilarity, outputTrgmSimilarity, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, sessionId, stepName, input, output, toolCalls, durationMs, stepNameTrgmSimilarity, inputTrgmSimilarity, outputTrgmSimilarity, searchScore }
  create:   { id, entityId, createdAt, updatedAt, sessionId, stepName, input, output, toolCalls, durationMs, stepNameTrgmSimilarity, inputTrgmSimilarity, outputTrgmSimilarity, searchScore }
  update:   { id, entityId, createdAt, updatedAt, sessionId, stepName, input, output, toolCalls, durationMs, stepNameTrgmSimilarity, inputTrgmSimilarity, outputTrgmSimilarity, searchScore }
  delete:   { id }
```

### MODEL: sessionArchive

Access: `db.sessionArchive`

```
METHODS:
  db.sessionArchive.findMany({ select, where?, orderBy?, first?, offset? })
  db.sessionArchive.findOne({ id, select })
  db.sessionArchive.create({ data: { entityId, sessionId, archiveIndex, summary, messageRangeStart, messageRangeEnd, rawMessages, embeddingText, embedding, embeddingTextBm25Score, summaryTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.sessionArchive.update({ where: { id }, data, select })
  db.sessionArchive.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  sessionId: string
  archiveIndex: number
  summary: string
  messageRangeStart: number
  messageRangeEnd: number
  rawMessages: unknown
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  summaryTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  sessionId: string
  archiveIndex: number
  summary: string
  messageRangeStart: number
  messageRangeEnd: number
  rawMessages: unknown
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  summaryTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, sessionId, archiveIndex, summary, messageRangeStart, messageRangeEnd, rawMessages, embeddingText, embedding, embeddingTextBm25Score, summaryTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, sessionId, archiveIndex, summary, messageRangeStart, messageRangeEnd, rawMessages, embeddingText, embedding, embeddingTextBm25Score, summaryTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, sessionId, archiveIndex, summary, messageRangeStart, messageRangeEnd, rawMessages, embeddingText, embedding, embeddingTextBm25Score, summaryTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, sessionId, archiveIndex, summary, messageRangeStart, messageRangeEnd, rawMessages, embeddingText, embedding, embeddingTextBm25Score, summaryTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: webhook

Access: `db.webhook`

```
METHODS:
  db.webhook.findMany({ select, where?, orderBy?, first?, offset? })
  db.webhook.findOne({ id, select })
  db.webhook.create({ data: { entityId, integrationId, url, eventType, secret, isActive, urlTrgmSimilarity, eventTypeTrgmSimilarity, secretTrgmSimilarity, searchScore }, select })
  db.webhook.update({ where: { id }, data, select })
  db.webhook.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  integrationId: string
  url: string
  eventType: string
  secret: string
  isActive: boolean
  urlTrgmSimilarity: number
  eventTypeTrgmSimilarity: number
  secretTrgmSimilarity: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  integrationId: string
  url: string
  eventType: string
  secret: string
  isActive: boolean
  urlTrgmSimilarity: number
  eventTypeTrgmSimilarity: number
  secretTrgmSimilarity: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, integrationId, url, eventType, secret, isActive, urlTrgmSimilarity, eventTypeTrgmSimilarity, secretTrgmSimilarity, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, integrationId, url, eventType, secret, isActive, urlTrgmSimilarity, eventTypeTrgmSimilarity, secretTrgmSimilarity, searchScore }
  create:   { id, entityId, createdAt, updatedAt, integrationId, url, eventType, secret, isActive, urlTrgmSimilarity, eventTypeTrgmSimilarity, secretTrgmSimilarity, searchScore }
  update:   { id, entityId, createdAt, updatedAt, integrationId, url, eventType, secret, isActive, urlTrgmSimilarity, eventTypeTrgmSimilarity, secretTrgmSimilarity, searchScore }
  delete:   { id }
```

### MODEL: notification

Access: `db.notification`

```
METHODS:
  db.notification.findMany({ select, where?, orderBy?, first?, offset? })
  db.notification.findOne({ id, select })
  db.notification.create({ data: { entityId, title, body, type, priority, readAt, actionUrl, sourceEntityId, sourceEntityType, titleTrgmSimilarity, bodyTrgmSimilarity, typeTrgmSimilarity, priorityTrgmSimilarity, actionUrlTrgmSimilarity, sourceEntityTypeTrgmSimilarity, searchScore }, select })
  db.notification.update({ where: { id }, data, select })
  db.notification.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  title: string
  body: string
  type: string
  priority: string
  readAt: string
  actionUrl: string
  sourceEntityId: string
  sourceEntityType: string
  titleTrgmSimilarity: number
  bodyTrgmSimilarity: number
  typeTrgmSimilarity: number
  priorityTrgmSimilarity: number
  actionUrlTrgmSimilarity: number
  sourceEntityTypeTrgmSimilarity: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  title: string
  body: string
  type: string
  priority: string
  readAt: string
  actionUrl: string
  sourceEntityId: string
  sourceEntityType: string
  titleTrgmSimilarity: number
  bodyTrgmSimilarity: number
  typeTrgmSimilarity: number
  priorityTrgmSimilarity: number
  actionUrlTrgmSimilarity: number
  sourceEntityTypeTrgmSimilarity: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, body, type, priority, readAt, actionUrl, sourceEntityId, sourceEntityType, titleTrgmSimilarity, bodyTrgmSimilarity, typeTrgmSimilarity, priorityTrgmSimilarity, actionUrlTrgmSimilarity, sourceEntityTypeTrgmSimilarity, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, title, body, type, priority, readAt, actionUrl, sourceEntityId, sourceEntityType, titleTrgmSimilarity, bodyTrgmSimilarity, typeTrgmSimilarity, priorityTrgmSimilarity, actionUrlTrgmSimilarity, sourceEntityTypeTrgmSimilarity, searchScore }
  create:   { id, entityId, createdAt, updatedAt, title, body, type, priority, readAt, actionUrl, sourceEntityId, sourceEntityType, titleTrgmSimilarity, bodyTrgmSimilarity, typeTrgmSimilarity, priorityTrgmSimilarity, actionUrlTrgmSimilarity, sourceEntityTypeTrgmSimilarity, searchScore }
  update:   { id, entityId, createdAt, updatedAt, title, body, type, priority, readAt, actionUrl, sourceEntityId, sourceEntityType, titleTrgmSimilarity, bodyTrgmSimilarity, typeTrgmSimilarity, priorityTrgmSimilarity, actionUrlTrgmSimilarity, sourceEntityTypeTrgmSimilarity, searchScore }
  delete:   { id }
```

### MODEL: workflowRun

Access: `db.workflowRun`

```
METHODS:
  db.workflowRun.findMany({ select, where?, orderBy?, first?, offset? })
  db.workflowRun.findOne({ id, select })
  db.workflowRun.create({ data: { entityId, workflowId, status, startedAt, completedAt, input, output, error, statusTrgmSimilarity, errorTrgmSimilarity, searchScore }, select })
  db.workflowRun.update({ where: { id }, data, select })
  db.workflowRun.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  workflowId: string
  status: string
  startedAt: string
  completedAt: string
  input: unknown
  output: unknown
  error: string
  statusTrgmSimilarity: number
  errorTrgmSimilarity: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  workflowId: string
  status: string
  startedAt: string
  completedAt: string
  input: unknown
  output: unknown
  error: string
  statusTrgmSimilarity: number
  errorTrgmSimilarity: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, workflowId, status, startedAt, completedAt, input, output, error, statusTrgmSimilarity, errorTrgmSimilarity, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, workflowId, status, startedAt, completedAt, input, output, error, statusTrgmSimilarity, errorTrgmSimilarity, searchScore }
  create:   { id, entityId, createdAt, updatedAt, workflowId, status, startedAt, completedAt, input, output, error, statusTrgmSimilarity, errorTrgmSimilarity, searchScore }
  update:   { id, entityId, createdAt, updatedAt, workflowId, status, startedAt, completedAt, input, output, error, statusTrgmSimilarity, errorTrgmSimilarity, searchScore }
  delete:   { id }
```

### MODEL: workflowStep

Access: `db.workflowStep`

```
METHODS:
  db.workflowStep.findMany({ select, where?, orderBy?, first?, offset? })
  db.workflowStep.findOne({ id, select })
  db.workflowStep.create({ data: { entityId, workflowId, stepOrder, actionType, actionConfig, onSuccessStep, onFailureStep, timeoutMs, actionTypeTrgmSimilarity, searchScore }, select })
  db.workflowStep.update({ where: { id }, data, select })
  db.workflowStep.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  workflowId: string
  stepOrder: number
  actionType: string
  actionConfig: unknown
  onSuccessStep: number
  onFailureStep: number
  timeoutMs: number
  actionTypeTrgmSimilarity: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  workflowId: string
  stepOrder: number
  actionType: string
  actionConfig: unknown
  onSuccessStep: number
  onFailureStep: number
  timeoutMs: number
  actionTypeTrgmSimilarity: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, workflowId, stepOrder, actionType, actionConfig, onSuccessStep, onFailureStep, timeoutMs, actionTypeTrgmSimilarity, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, workflowId, stepOrder, actionType, actionConfig, onSuccessStep, onFailureStep, timeoutMs, actionTypeTrgmSimilarity, searchScore }
  create:   { id, entityId, createdAt, updatedAt, workflowId, stepOrder, actionType, actionConfig, onSuccessStep, onFailureStep, timeoutMs, actionTypeTrgmSimilarity, searchScore }
  update:   { id, entityId, createdAt, updatedAt, workflowId, stepOrder, actionType, actionConfig, onSuccessStep, onFailureStep, timeoutMs, actionTypeTrgmSimilarity, searchScore }
  delete:   { id }
```

### MODEL: integration

Access: `db.integration`

```
METHODS:
  db.integration.findMany({ select, where?, orderBy?, first?, offset? })
  db.integration.findOne({ id, select })
  db.integration.create({ data: { entityId, name, provider, type, credentialsRef, config, status, lastSyncedAt, nameTrgmSimilarity, providerTrgmSimilarity, typeTrgmSimilarity, credentialsRefTrgmSimilarity, statusTrgmSimilarity, searchScore }, select })
  db.integration.update({ where: { id }, data, select })
  db.integration.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  name: string
  provider: string
  type: string
  credentialsRef: string
  config: unknown
  status: string
  lastSyncedAt: string
  nameTrgmSimilarity: number
  providerTrgmSimilarity: number
  typeTrgmSimilarity: number
  credentialsRefTrgmSimilarity: number
  statusTrgmSimilarity: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  name: string
  provider: string
  type: string
  credentialsRef: string
  config: unknown
  status: string
  lastSyncedAt: string
  nameTrgmSimilarity: number
  providerTrgmSimilarity: number
  typeTrgmSimilarity: number
  credentialsRefTrgmSimilarity: number
  statusTrgmSimilarity: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, provider, type, credentialsRef, config, status, lastSyncedAt, nameTrgmSimilarity, providerTrgmSimilarity, typeTrgmSimilarity, credentialsRefTrgmSimilarity, statusTrgmSimilarity, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, name, provider, type, credentialsRef, config, status, lastSyncedAt, nameTrgmSimilarity, providerTrgmSimilarity, typeTrgmSimilarity, credentialsRefTrgmSimilarity, statusTrgmSimilarity, searchScore }
  create:   { id, entityId, createdAt, updatedAt, name, provider, type, credentialsRef, config, status, lastSyncedAt, nameTrgmSimilarity, providerTrgmSimilarity, typeTrgmSimilarity, credentialsRefTrgmSimilarity, statusTrgmSimilarity, searchScore }
  update:   { id, entityId, createdAt, updatedAt, name, provider, type, credentialsRef, config, status, lastSyncedAt, nameTrgmSimilarity, providerTrgmSimilarity, typeTrgmSimilarity, credentialsRefTrgmSimilarity, statusTrgmSimilarity, searchScore }
  delete:   { id }
```

### MODEL: skillExecution

Access: `db.skillExecution`

```
METHODS:
  db.skillExecution.findMany({ select, where?, orderBy?, first?, offset? })
  db.skillExecution.findOne({ id, select })
  db.skillExecution.create({ data: { entityId, skillId, agentId, sessionId, status, startedAt, completedAt, durationMs, input, output, error, statusTrgmSimilarity, errorTrgmSimilarity, searchScore }, select })
  db.skillExecution.update({ where: { id }, data, select })
  db.skillExecution.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  skillId: string
  agentId: string
  sessionId: string
  status: string
  startedAt: string
  completedAt: string
  durationMs: number
  input: unknown
  output: unknown
  error: string
  statusTrgmSimilarity: number
  errorTrgmSimilarity: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  skillId: string
  agentId: string
  sessionId: string
  status: string
  startedAt: string
  completedAt: string
  durationMs: number
  input: unknown
  output: unknown
  error: string
  statusTrgmSimilarity: number
  errorTrgmSimilarity: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, skillId, agentId, sessionId, status, startedAt, completedAt, durationMs, input, output, error, statusTrgmSimilarity, errorTrgmSimilarity, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, skillId, agentId, sessionId, status, startedAt, completedAt, durationMs, input, output, error, statusTrgmSimilarity, errorTrgmSimilarity, searchScore }
  create:   { id, entityId, createdAt, updatedAt, skillId, agentId, sessionId, status, startedAt, completedAt, durationMs, input, output, error, statusTrgmSimilarity, errorTrgmSimilarity, searchScore }
  update:   { id, entityId, createdAt, updatedAt, skillId, agentId, sessionId, status, startedAt, completedAt, durationMs, input, output, error, statusTrgmSimilarity, errorTrgmSimilarity, searchScore }
  delete:   { id }
```

### MODEL: chat

Access: `db.chat`

```
METHODS:
  db.chat.findMany({ select, where?, orderBy?, first?, offset? })
  db.chat.findOne({ id, select })
  db.chat.create({ data: { entityId, title, startedAt, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.chat.update({ where: { id }, data, select })
  db.chat.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  title: string
  startedAt: string
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  titleTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  title: string
  startedAt: string
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  titleTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, startedAt, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, title, startedAt, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, title, startedAt, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, title, startedAt, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: chatMessage

Access: `db.chatMessage`

```
METHODS:
  db.chatMessage.findMany({ select, where?, orderBy?, first?, offset? })
  db.chatMessage.findOne({ id, select })
  db.chatMessage.create({ data: { entityId, chatId, threadId, role, content, toolCalls, embeddingText, embedding, contentBm25Score, embeddingTextBm25Score, roleTrgmSimilarity, contentTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.chatMessage.update({ where: { id }, data, select })
  db.chatMessage.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  chatId: string
  threadId: string
  role: string
  content: string
  toolCalls: unknown
  embeddingText: string
  embedding: number[]
  contentBm25Score: number
  embeddingTextBm25Score: number
  roleTrgmSimilarity: number
  contentTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  chatId: string
  threadId: string
  role: string
  content: string
  toolCalls: unknown
  embeddingText: string
  embedding: number[]
  contentBm25Score: number
  embeddingTextBm25Score: number
  roleTrgmSimilarity: number
  contentTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, chatId, threadId, role, content, toolCalls, embeddingText, embedding, contentBm25Score, embeddingTextBm25Score, roleTrgmSimilarity, contentTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, chatId, threadId, role, content, toolCalls, embeddingText, embedding, contentBm25Score, embeddingTextBm25Score, roleTrgmSimilarity, contentTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, chatId, threadId, role, content, toolCalls, embeddingText, embedding, contentBm25Score, embeddingTextBm25Score, roleTrgmSimilarity, contentTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, chatId, threadId, role, content, toolCalls, embeddingText, embedding, contentBm25Score, embeddingTextBm25Score, roleTrgmSimilarity, contentTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: thread

Access: `db.thread`

```
METHODS:
  db.thread.findMany({ select, where?, orderBy?, first?, offset? })
  db.thread.findOne({ id, select })
  db.thread.create({ data: { entityId, title, summary, status, parentThreadId, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, summaryTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.thread.update({ where: { id }, data, select })
  db.thread.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  title: string
  summary: string
  status: string
  parentThreadId: string
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  titleTrgmSimilarity: number
  summaryTrgmSimilarity: number
  statusTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  title: string
  summary: string
  status: string
  parentThreadId: string
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  titleTrgmSimilarity: number
  summaryTrgmSimilarity: number
  statusTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, summary, status, parentThreadId, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, summaryTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, title, summary, status, parentThreadId, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, summaryTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, title, summary, status, parentThreadId, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, summaryTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, title, summary, status, parentThreadId, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, summaryTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: reminder

Access: `db.reminder`

```
METHODS:
  db.reminder.findMany({ select, where?, orderBy?, first?, offset? })
  db.reminder.findOne({ id, select })
  db.reminder.create({ data: { entityId, title, dueAt, completedAt, recurrence, status, relatedEntityId, relatedEntityType, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, recurrenceTrgmSimilarity, statusTrgmSimilarity, relatedEntityTypeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.reminder.update({ where: { id }, data, select })
  db.reminder.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  title: string
  dueAt: string
  completedAt: string
  recurrence: string
  status: string
  relatedEntityId: string
  relatedEntityType: string
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  titleTrgmSimilarity: number
  recurrenceTrgmSimilarity: number
  statusTrgmSimilarity: number
  relatedEntityTypeTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  title: string
  dueAt: string
  completedAt: string
  recurrence: string
  status: string
  relatedEntityId: string
  relatedEntityType: string
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  titleTrgmSimilarity: number
  recurrenceTrgmSimilarity: number
  statusTrgmSimilarity: number
  relatedEntityTypeTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, dueAt, completedAt, recurrence, status, relatedEntityId, relatedEntityType, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, recurrenceTrgmSimilarity, statusTrgmSimilarity, relatedEntityTypeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, title, dueAt, completedAt, recurrence, status, relatedEntityId, relatedEntityType, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, recurrenceTrgmSimilarity, statusTrgmSimilarity, relatedEntityTypeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, title, dueAt, completedAt, recurrence, status, relatedEntityId, relatedEntityType, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, recurrenceTrgmSimilarity, statusTrgmSimilarity, relatedEntityTypeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, title, dueAt, completedAt, recurrence, status, relatedEntityId, relatedEntityType, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, recurrenceTrgmSimilarity, statusTrgmSimilarity, relatedEntityTypeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: image

Access: `db.image`

```
METHODS:
  db.image.findMany({ select, where?, orderBy?, first?, offset? })
  db.image.findOne({ id, select })
  db.image.create({ data: { entityId, url, meta, altText, caption, embedding, urlTrgmSimilarity, altTextTrgmSimilarity, captionTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.image.update({ where: { id }, data, select })
  db.image.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  url: string
  meta: unknown
  altText: string
  caption: string
  embedding: number[]
  urlTrgmSimilarity: number
  altTextTrgmSimilarity: number
  captionTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  url: string
  meta: unknown
  altText: string
  caption: string
  embedding: number[]
  urlTrgmSimilarity: number
  altTextTrgmSimilarity: number
  captionTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, url, meta, altText, caption, embedding, urlTrgmSimilarity, altTextTrgmSimilarity, captionTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, url, meta, altText, caption, embedding, urlTrgmSimilarity, altTextTrgmSimilarity, captionTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, url, meta, altText, caption, embedding, urlTrgmSimilarity, altTextTrgmSimilarity, captionTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, url, meta, altText, caption, embedding, urlTrgmSimilarity, altTextTrgmSimilarity, captionTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: listItem

Access: `db.listItem`

```
METHODS:
  db.listItem.findMany({ select, where?, orderBy?, first?, offset? })
  db.listItem.findOne({ id, select })
  db.listItem.create({ data: { entityId, listId, content, position, isChecked, refId, refType, contentTrgmSimilarity, refTypeTrgmSimilarity, searchScore }, select })
  db.listItem.update({ where: { id }, data, select })
  db.listItem.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  listId: string
  content: string
  position: number
  isChecked: boolean
  refId: string
  refType: string
  contentTrgmSimilarity: number
  refTypeTrgmSimilarity: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  listId: string
  content: string
  position: number
  isChecked: boolean
  refId: string
  refType: string
  contentTrgmSimilarity: number
  refTypeTrgmSimilarity: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, listId, content, position, isChecked, refId, refType, contentTrgmSimilarity, refTypeTrgmSimilarity, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, listId, content, position, isChecked, refId, refType, contentTrgmSimilarity, refTypeTrgmSimilarity, searchScore }
  create:   { id, entityId, createdAt, updatedAt, listId, content, position, isChecked, refId, refType, contentTrgmSimilarity, refTypeTrgmSimilarity, searchScore }
  update:   { id, entityId, createdAt, updatedAt, listId, content, position, isChecked, refId, refType, contentTrgmSimilarity, refTypeTrgmSimilarity, searchScore }
  delete:   { id }
```

### MODEL: companyLink

Access: `db.companyLink`

```
METHODS:
  db.companyLink.findMany({ select, where?, orderBy?, first?, offset? })
  db.companyLink.findOne({ id, select })
  db.companyLink.create({ data: { entityId, title, url, embedding, companyId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.companyLink.update({ where: { id }, data, select })
  db.companyLink.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  title: string
  url: string
  embedding: number[]
  companyId: string
  titleTrgmSimilarity: number
  urlTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  title: string
  url: string
  embedding: number[]
  companyId: string
  titleTrgmSimilarity: number
  urlTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, url, embedding, companyId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, title, url, embedding, companyId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, title, url, embedding, companyId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, title, url, embedding, companyId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: contactLink

Access: `db.contactLink`

```
METHODS:
  db.contactLink.findMany({ select, where?, orderBy?, first?, offset? })
  db.contactLink.findOne({ id, select })
  db.contactLink.create({ data: { entityId, title, url, embedding, contactId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.contactLink.update({ where: { id }, data, select })
  db.contactLink.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  title: string
  url: string
  embedding: number[]
  contactId: string
  titleTrgmSimilarity: number
  urlTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  title: string
  url: string
  embedding: number[]
  contactId: string
  titleTrgmSimilarity: number
  urlTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, url, embedding, contactId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, title, url, embedding, contactId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, title, url, embedding, contactId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, title, url, embedding, contactId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: eventLink

Access: `db.eventLink`

```
METHODS:
  db.eventLink.findMany({ select, where?, orderBy?, first?, offset? })
  db.eventLink.findOne({ id, select })
  db.eventLink.create({ data: { entityId, title, url, embedding, eventId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.eventLink.update({ where: { id }, data, select })
  db.eventLink.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  title: string
  url: string
  embedding: number[]
  eventId: string
  titleTrgmSimilarity: number
  urlTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  title: string
  url: string
  embedding: number[]
  eventId: string
  titleTrgmSimilarity: number
  urlTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, url, embedding, eventId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, title, url, embedding, eventId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, title, url, embedding, eventId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, title, url, embedding, eventId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: venueLink

Access: `db.venueLink`

```
METHODS:
  db.venueLink.findMany({ select, where?, orderBy?, first?, offset? })
  db.venueLink.findOne({ id, select })
  db.venueLink.create({ data: { entityId, title, url, embedding, venueId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.venueLink.update({ where: { id }, data, select })
  db.venueLink.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  title: string
  url: string
  embedding: number[]
  venueId: string
  titleTrgmSimilarity: number
  urlTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  title: string
  url: string
  embedding: number[]
  venueId: string
  titleTrgmSimilarity: number
  urlTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, url, embedding, venueId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, title, url, embedding, venueId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, title, url, embedding, venueId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, title, url, embedding, venueId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: agentSpawn

Access: `db.agentSpawn`

```
METHODS:
  db.agentSpawn.findMany({ select, where?, orderBy?, first?, offset? })
  db.agentSpawn.findOne({ id, select })
  db.agentSpawn.create({ data: { entityId, parentAgentId, childAgentId, sessionId, task, status, result, maxIterations, startedAt, completedAt, agentId, taskTrgmSimilarity, statusTrgmSimilarity, searchScore }, select })
  db.agentSpawn.update({ where: { id }, data, select })
  db.agentSpawn.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  parentAgentId: string
  childAgentId: string
  sessionId: string
  task: string
  status: string
  result: unknown
  maxIterations: number
  startedAt: string
  completedAt: string
  agentId: string
  taskTrgmSimilarity: number
  statusTrgmSimilarity: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  parentAgentId: string
  childAgentId: string
  sessionId: string
  task: string
  status: string
  result: unknown
  maxIterations: number
  startedAt: string
  completedAt: string
  agentId: string
  taskTrgmSimilarity: number
  statusTrgmSimilarity: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, parentAgentId, childAgentId, sessionId, task, status, result, maxIterations, startedAt, completedAt, agentId, taskTrgmSimilarity, statusTrgmSimilarity, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, parentAgentId, childAgentId, sessionId, task, status, result, maxIterations, startedAt, completedAt, agentId, taskTrgmSimilarity, statusTrgmSimilarity, searchScore }
  create:   { id, entityId, createdAt, updatedAt, parentAgentId, childAgentId, sessionId, task, status, result, maxIterations, startedAt, completedAt, agentId, taskTrgmSimilarity, statusTrgmSimilarity, searchScore }
  update:   { id, entityId, createdAt, updatedAt, parentAgentId, childAgentId, sessionId, task, status, result, maxIterations, startedAt, completedAt, agentId, taskTrgmSimilarity, statusTrgmSimilarity, searchScore }
  delete:   { id }
```

### MODEL: habit

Access: `db.habit`

```
METHODS:
  db.habit.findMany({ select, where?, orderBy?, first?, offset? })
  db.habit.findOne({ id, select })
  db.habit.create({ data: { entityId, name, frequency, targetCount, currentStreak, bestStreak, category, tags, nameTrgmSimilarity, frequencyTrgmSimilarity, categoryTrgmSimilarity, searchScore }, select })
  db.habit.update({ where: { id }, data, select })
  db.habit.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  name: string
  frequency: string
  targetCount: number
  currentStreak: number
  bestStreak: number
  category: string
  tags: string[]
  nameTrgmSimilarity: number
  frequencyTrgmSimilarity: number
  categoryTrgmSimilarity: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  name: string
  frequency: string
  targetCount: number
  currentStreak: number
  bestStreak: number
  category: string
  tags: string[]
  nameTrgmSimilarity: number
  frequencyTrgmSimilarity: number
  categoryTrgmSimilarity: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, frequency, targetCount, currentStreak, bestStreak, category, tags, nameTrgmSimilarity, frequencyTrgmSimilarity, categoryTrgmSimilarity, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, name, frequency, targetCount, currentStreak, bestStreak, category, tags, nameTrgmSimilarity, frequencyTrgmSimilarity, categoryTrgmSimilarity, searchScore }
  create:   { id, entityId, createdAt, updatedAt, name, frequency, targetCount, currentStreak, bestStreak, category, tags, nameTrgmSimilarity, frequencyTrgmSimilarity, categoryTrgmSimilarity, searchScore }
  update:   { id, entityId, createdAt, updatedAt, name, frequency, targetCount, currentStreak, bestStreak, category, tags, nameTrgmSimilarity, frequencyTrgmSimilarity, categoryTrgmSimilarity, searchScore }
  delete:   { id }
```

### MODEL: workflow

Access: `db.workflow`

```
METHODS:
  db.workflow.findMany({ select, where?, orderBy?, first?, offset? })
  db.workflow.findOne({ id, select })
  db.workflow.create({ data: { entityId, name, description, triggerType, triggerConfig, isActive, tags, nameTrgmSimilarity, descriptionTrgmSimilarity, triggerTypeTrgmSimilarity, searchScore }, select })
  db.workflow.update({ where: { id }, data, select })
  db.workflow.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  name: string
  description: string
  triggerType: string
  triggerConfig: unknown
  isActive: boolean
  tags: string[]
  nameTrgmSimilarity: number
  descriptionTrgmSimilarity: number
  triggerTypeTrgmSimilarity: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  name: string
  description: string
  triggerType: string
  triggerConfig: unknown
  isActive: boolean
  tags: string[]
  nameTrgmSimilarity: number
  descriptionTrgmSimilarity: number
  triggerTypeTrgmSimilarity: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, description, triggerType, triggerConfig, isActive, tags, nameTrgmSimilarity, descriptionTrgmSimilarity, triggerTypeTrgmSimilarity, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, name, description, triggerType, triggerConfig, isActive, tags, nameTrgmSimilarity, descriptionTrgmSimilarity, triggerTypeTrgmSimilarity, searchScore }
  create:   { id, entityId, createdAt, updatedAt, name, description, triggerType, triggerConfig, isActive, tags, nameTrgmSimilarity, descriptionTrgmSimilarity, triggerTypeTrgmSimilarity, searchScore }
  update:   { id, entityId, createdAt, updatedAt, name, description, triggerType, triggerConfig, isActive, tags, nameTrgmSimilarity, descriptionTrgmSimilarity, triggerTypeTrgmSimilarity, searchScore }
  delete:   { id }
```

### MODEL: expense

Access: `db.expense`

```
METHODS:
  db.expense.findMany({ select, where?, orderBy?, first?, offset? })
  db.expense.findOne({ id, select })
  db.expense.create({ data: { entityId, amount, currency, date, category, description, merchant, receiptUrl, isRecurring, tags, currencyTrgmSimilarity, categoryTrgmSimilarity, descriptionTrgmSimilarity, merchantTrgmSimilarity, receiptUrlTrgmSimilarity, searchScore }, select })
  db.expense.update({ where: { id }, data, select })
  db.expense.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  amount: string
  currency: string
  date: string
  category: string
  description: string
  merchant: string
  receiptUrl: string
  isRecurring: boolean
  tags: string[]
  currencyTrgmSimilarity: number
  categoryTrgmSimilarity: number
  descriptionTrgmSimilarity: number
  merchantTrgmSimilarity: number
  receiptUrlTrgmSimilarity: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  amount: string
  currency: string
  date: string
  category: string
  description: string
  merchant: string
  receiptUrl: string
  isRecurring: boolean
  tags: string[]
  currencyTrgmSimilarity: number
  categoryTrgmSimilarity: number
  descriptionTrgmSimilarity: number
  merchantTrgmSimilarity: number
  receiptUrlTrgmSimilarity: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, amount, currency, date, category, description, merchant, receiptUrl, isRecurring, tags, currencyTrgmSimilarity, categoryTrgmSimilarity, descriptionTrgmSimilarity, merchantTrgmSimilarity, receiptUrlTrgmSimilarity, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, amount, currency, date, category, description, merchant, receiptUrl, isRecurring, tags, currencyTrgmSimilarity, categoryTrgmSimilarity, descriptionTrgmSimilarity, merchantTrgmSimilarity, receiptUrlTrgmSimilarity, searchScore }
  create:   { id, entityId, createdAt, updatedAt, amount, currency, date, category, description, merchant, receiptUrl, isRecurring, tags, currencyTrgmSimilarity, categoryTrgmSimilarity, descriptionTrgmSimilarity, merchantTrgmSimilarity, receiptUrlTrgmSimilarity, searchScore }
  update:   { id, entityId, createdAt, updatedAt, amount, currency, date, category, description, merchant, receiptUrl, isRecurring, tags, currencyTrgmSimilarity, categoryTrgmSimilarity, descriptionTrgmSimilarity, merchantTrgmSimilarity, receiptUrlTrgmSimilarity, searchScore }
  delete:   { id }
```

### MODEL: billingSubscription

Access: `db.billingSubscription`

```
METHODS:
  db.billingSubscription.findMany({ select, where?, orderBy?, first?, offset? })
  db.billingSubscription.findOne({ id, select })
  db.billingSubscription.create({ data: { entityId, name, amount, currency, frequency, provider, nextBillingDate, cancellationDate, status, tags, notes, nameTrgmSimilarity, currencyTrgmSimilarity, frequencyTrgmSimilarity, providerTrgmSimilarity, statusTrgmSimilarity, notesTrgmSimilarity, searchScore }, select })
  db.billingSubscription.update({ where: { id }, data, select })
  db.billingSubscription.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  name: string
  amount: string
  currency: string
  frequency: string
  provider: string
  nextBillingDate: string
  cancellationDate: string
  status: string
  tags: string[]
  notes: string
  nameTrgmSimilarity: number
  currencyTrgmSimilarity: number
  frequencyTrgmSimilarity: number
  providerTrgmSimilarity: number
  statusTrgmSimilarity: number
  notesTrgmSimilarity: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  name: string
  amount: string
  currency: string
  frequency: string
  provider: string
  nextBillingDate: string
  cancellationDate: string
  status: string
  tags: string[]
  notes: string
  nameTrgmSimilarity: number
  currencyTrgmSimilarity: number
  frequencyTrgmSimilarity: number
  providerTrgmSimilarity: number
  statusTrgmSimilarity: number
  notesTrgmSimilarity: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, amount, currency, frequency, provider, nextBillingDate, cancellationDate, status, tags, notes, nameTrgmSimilarity, currencyTrgmSimilarity, frequencyTrgmSimilarity, providerTrgmSimilarity, statusTrgmSimilarity, notesTrgmSimilarity, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, name, amount, currency, frequency, provider, nextBillingDate, cancellationDate, status, tags, notes, nameTrgmSimilarity, currencyTrgmSimilarity, frequencyTrgmSimilarity, providerTrgmSimilarity, statusTrgmSimilarity, notesTrgmSimilarity, searchScore }
  create:   { id, entityId, createdAt, updatedAt, name, amount, currency, frequency, provider, nextBillingDate, cancellationDate, status, tags, notes, nameTrgmSimilarity, currencyTrgmSimilarity, frequencyTrgmSimilarity, providerTrgmSimilarity, statusTrgmSimilarity, notesTrgmSimilarity, searchScore }
  update:   { id, entityId, createdAt, updatedAt, name, amount, currency, frequency, provider, nextBillingDate, cancellationDate, status, tags, notes, nameTrgmSimilarity, currencyTrgmSimilarity, frequencyTrgmSimilarity, providerTrgmSimilarity, statusTrgmSimilarity, notesTrgmSimilarity, searchScore }
  delete:   { id }
```

### MODEL: idea

Access: `db.idea`

```
METHODS:
  db.idea.findMany({ select, where?, orderBy?, first?, offset? })
  db.idea.findOne({ id, select })
  db.idea.create({ data: { entityId, content, source, status, tags, embeddingText, embedding, embeddingTextBm25Score, contentTrgmSimilarity, sourceTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.idea.update({ where: { id }, data, select })
  db.idea.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  content: string
  source: string
  status: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  contentTrgmSimilarity: number
  sourceTrgmSimilarity: number
  statusTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  content: string
  source: string
  status: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  contentTrgmSimilarity: number
  sourceTrgmSimilarity: number
  statusTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, content, source, status, tags, embeddingText, embedding, embeddingTextBm25Score, contentTrgmSimilarity, sourceTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, content, source, status, tags, embeddingText, embedding, embeddingTextBm25Score, contentTrgmSimilarity, sourceTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, content, source, status, tags, embeddingText, embedding, embeddingTextBm25Score, contentTrgmSimilarity, sourceTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, content, source, status, tags, embeddingText, embedding, embeddingTextBm25Score, contentTrgmSimilarity, sourceTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: list

Access: `db.list`

```
METHODS:
  db.list.findMany({ select, where?, orderBy?, first?, offset? })
  db.list.findOne({ id, select })
  db.list.create({ data: { entityId, name, description, type, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, typeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.list.update({ where: { id }, data, select })
  db.list.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  name: string
  description: string
  type: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  nameTrgmSimilarity: number
  descriptionTrgmSimilarity: number
  typeTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  name: string
  description: string
  type: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  nameTrgmSimilarity: number
  descriptionTrgmSimilarity: number
  typeTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, description, type, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, typeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, name, description, type, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, typeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, name, description, type, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, typeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, name, description, type, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, typeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: repository

Access: `db.repository`

```
METHODS:
  db.repository.findMany({ select, where?, orderBy?, first?, offset? })
  db.repository.findOne({ id, select })
  db.repository.create({ data: { entityId, name, url, description, defaultBranch, lastSyncedAt, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, urlTrgmSimilarity, descriptionTrgmSimilarity, defaultBranchTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.repository.update({ where: { id }, data, select })
  db.repository.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  name: string
  url: string
  description: string
  defaultBranch: string
  lastSyncedAt: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  nameTrgmSimilarity: number
  urlTrgmSimilarity: number
  descriptionTrgmSimilarity: number
  defaultBranchTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  name: string
  url: string
  description: string
  defaultBranch: string
  lastSyncedAt: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  nameTrgmSimilarity: number
  urlTrgmSimilarity: number
  descriptionTrgmSimilarity: number
  defaultBranchTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, url, description, defaultBranch, lastSyncedAt, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, urlTrgmSimilarity, descriptionTrgmSimilarity, defaultBranchTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, name, url, description, defaultBranch, lastSyncedAt, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, urlTrgmSimilarity, descriptionTrgmSimilarity, defaultBranchTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, name, url, description, defaultBranch, lastSyncedAt, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, urlTrgmSimilarity, descriptionTrgmSimilarity, defaultBranchTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, name, url, description, defaultBranch, lastSyncedAt, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, urlTrgmSimilarity, descriptionTrgmSimilarity, defaultBranchTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: deal

Access: `db.deal`

```
METHODS:
  db.deal.findMany({ select, where?, orderBy?, first?, offset? })
  db.deal.findOne({ id, select })
  db.deal.create({ data: { entityId, name, stage, value, currency, expectedCloseDate, notes, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, stageTrgmSimilarity, currencyTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.deal.update({ where: { id }, data, select })
  db.deal.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  name: string
  stage: string
  value: string
  currency: string
  expectedCloseDate: string
  notes: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  nameTrgmSimilarity: number
  stageTrgmSimilarity: number
  currencyTrgmSimilarity: number
  notesTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  name: string
  stage: string
  value: string
  currency: string
  expectedCloseDate: string
  notes: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  nameTrgmSimilarity: number
  stageTrgmSimilarity: number
  currencyTrgmSimilarity: number
  notesTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, stage, value, currency, expectedCloseDate, notes, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, stageTrgmSimilarity, currencyTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, name, stage, value, currency, expectedCloseDate, notes, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, stageTrgmSimilarity, currencyTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, name, stage, value, currency, expectedCloseDate, notes, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, stageTrgmSimilarity, currencyTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, name, stage, value, currency, expectedCloseDate, notes, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, stageTrgmSimilarity, currencyTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: goal

Access: `db.goal`

```
METHODS:
  db.goal.findMany({ select, where?, orderBy?, first?, offset? })
  db.goal.findOne({ id, select })
  db.goal.create({ data: { entityId, title, description, targetDate, status, category, progressPct, tags, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, descriptionTrgmSimilarity, statusTrgmSimilarity, categoryTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.goal.update({ where: { id }, data, select })
  db.goal.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  title: string
  description: string
  targetDate: string
  status: string
  category: string
  progressPct: number
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  titleTrgmSimilarity: number
  descriptionTrgmSimilarity: number
  statusTrgmSimilarity: number
  categoryTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  title: string
  description: string
  targetDate: string
  status: string
  category: string
  progressPct: number
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  titleTrgmSimilarity: number
  descriptionTrgmSimilarity: number
  statusTrgmSimilarity: number
  categoryTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, description, targetDate, status, category, progressPct, tags, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, descriptionTrgmSimilarity, statusTrgmSimilarity, categoryTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, title, description, targetDate, status, category, progressPct, tags, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, descriptionTrgmSimilarity, statusTrgmSimilarity, categoryTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, title, description, targetDate, status, category, progressPct, tags, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, descriptionTrgmSimilarity, statusTrgmSimilarity, categoryTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, title, description, targetDate, status, category, progressPct, tags, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, descriptionTrgmSimilarity, statusTrgmSimilarity, categoryTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: note

Access: `db.note`

```
METHODS:
  db.note.findMany({ select, where?, orderBy?, first?, offset? })
  db.note.findOne({ id, select })
  db.note.create({ data: { entityId, content, notableType, notableId, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, contentBm25Score, embeddingTextBm25Score, contentTrgmSimilarity, notableTypeTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.note.update({ where: { id }, data, select })
  db.note.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  content: string
  notableType: string
  notableId: string
  abstract: string
  overview: string
  activeCount: number
  lastAccessedAt: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  contentBm25Score: number
  embeddingTextBm25Score: number
  contentTrgmSimilarity: number
  notableTypeTrgmSimilarity: number
  abstractTrgmSimilarity: number
  overviewTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  content: string
  notableType: string
  notableId: string
  abstract: string
  overview: string
  activeCount: number
  lastAccessedAt: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  contentBm25Score: number
  embeddingTextBm25Score: number
  contentTrgmSimilarity: number
  notableTypeTrgmSimilarity: number
  abstractTrgmSimilarity: number
  overviewTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, content, notableType, notableId, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, contentBm25Score, embeddingTextBm25Score, contentTrgmSimilarity, notableTypeTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, content, notableType, notableId, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, contentBm25Score, embeddingTextBm25Score, contentTrgmSimilarity, notableTypeTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, content, notableType, notableId, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, contentBm25Score, embeddingTextBm25Score, contentTrgmSimilarity, notableTypeTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, content, notableType, notableId, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, contentBm25Score, embeddingTextBm25Score, contentTrgmSimilarity, notableTypeTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: prompt

Access: `db.prompt`

```
METHODS:
  db.prompt.findMany({ select, where?, orderBy?, first?, offset? })
  db.prompt.findOne({ id, select })
  db.prompt.create({ data: { entityId, name, content, type, model, version, isActive, tags, embeddingText, embedding, contentBm25Score, embeddingTextBm25Score, nameTrgmSimilarity, contentTrgmSimilarity, typeTrgmSimilarity, modelTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.prompt.update({ where: { id }, data, select })
  db.prompt.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  name: string
  content: string
  type: string
  model: string
  version: number
  isActive: boolean
  tags: string[]
  embeddingText: string
  embedding: number[]
  contentBm25Score: number
  embeddingTextBm25Score: number
  nameTrgmSimilarity: number
  contentTrgmSimilarity: number
  typeTrgmSimilarity: number
  modelTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  name: string
  content: string
  type: string
  model: string
  version: number
  isActive: boolean
  tags: string[]
  embeddingText: string
  embedding: number[]
  contentBm25Score: number
  embeddingTextBm25Score: number
  nameTrgmSimilarity: number
  contentTrgmSimilarity: number
  typeTrgmSimilarity: number
  modelTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, content, type, model, version, isActive, tags, embeddingText, embedding, contentBm25Score, embeddingTextBm25Score, nameTrgmSimilarity, contentTrgmSimilarity, typeTrgmSimilarity, modelTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, name, content, type, model, version, isActive, tags, embeddingText, embedding, contentBm25Score, embeddingTextBm25Score, nameTrgmSimilarity, contentTrgmSimilarity, typeTrgmSimilarity, modelTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, name, content, type, model, version, isActive, tags, embeddingText, embedding, contentBm25Score, embeddingTextBm25Score, nameTrgmSimilarity, contentTrgmSimilarity, typeTrgmSimilarity, modelTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, name, content, type, model, version, isActive, tags, embeddingText, embedding, contentBm25Score, embeddingTextBm25Score, nameTrgmSimilarity, contentTrgmSimilarity, typeTrgmSimilarity, modelTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: blueprint

Access: `db.blueprint`

```
METHODS:
  db.blueprint.findMany({ select, where?, orderBy?, first?, offset? })
  db.blueprint.findOne({ id, select })
  db.blueprint.create({ data: { entityId, title, steps, triggerConditions, conversationId, tags, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, triggerConditionsTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.blueprint.update({ where: { id }, data, select })
  db.blueprint.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  title: string
  steps: unknown
  triggerConditions: string
  conversationId: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  titleTrgmSimilarity: number
  triggerConditionsTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  title: string
  steps: unknown
  triggerConditions: string
  conversationId: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  titleTrgmSimilarity: number
  triggerConditionsTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, steps, triggerConditions, conversationId, tags, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, triggerConditionsTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, title, steps, triggerConditions, conversationId, tags, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, triggerConditionsTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, title, steps, triggerConditions, conversationId, tags, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, triggerConditionsTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, title, steps, triggerConditions, conversationId, tags, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, triggerConditionsTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: template

Access: `db.template`

```
METHODS:
  db.template.findMany({ select, where?, orderBy?, first?, offset? })
  db.template.findOne({ id, select })
  db.template.create({ data: { entityId, name, description, type, content, variables, isActive, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, typeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.template.update({ where: { id }, data, select })
  db.template.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  name: string
  description: string
  type: string
  content: unknown
  variables: unknown
  isActive: boolean
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  nameTrgmSimilarity: number
  descriptionTrgmSimilarity: number
  typeTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  name: string
  description: string
  type: string
  content: unknown
  variables: unknown
  isActive: boolean
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  nameTrgmSimilarity: number
  descriptionTrgmSimilarity: number
  typeTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, description, type, content, variables, isActive, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, typeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, name, description, type, content, variables, isActive, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, typeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, name, description, type, content, variables, isActive, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, typeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, name, description, type, content, variables, isActive, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, typeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: tool

Access: `db.tool`

```
METHODS:
  db.tool.findMany({ select, where?, orderBy?, first?, offset? })
  db.tool.findOne({ id, select })
  db.tool.create({ data: { entityId, name, description, type, inputSchema, outputSchema, endpoint, authMethod, isActive, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, typeTrgmSimilarity, endpointTrgmSimilarity, authMethodTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.tool.update({ where: { id }, data, select })
  db.tool.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  name: string
  description: string
  type: string
  inputSchema: unknown
  outputSchema: unknown
  endpoint: string
  authMethod: string
  isActive: boolean
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  nameTrgmSimilarity: number
  descriptionTrgmSimilarity: number
  typeTrgmSimilarity: number
  endpointTrgmSimilarity: number
  authMethodTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  name: string
  description: string
  type: string
  inputSchema: unknown
  outputSchema: unknown
  endpoint: string
  authMethod: string
  isActive: boolean
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  nameTrgmSimilarity: number
  descriptionTrgmSimilarity: number
  typeTrgmSimilarity: number
  endpointTrgmSimilarity: number
  authMethodTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, description, type, inputSchema, outputSchema, endpoint, authMethod, isActive, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, typeTrgmSimilarity, endpointTrgmSimilarity, authMethodTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, name, description, type, inputSchema, outputSchema, endpoint, authMethod, isActive, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, typeTrgmSimilarity, endpointTrgmSimilarity, authMethodTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, name, description, type, inputSchema, outputSchema, endpoint, authMethod, isActive, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, typeTrgmSimilarity, endpointTrgmSimilarity, authMethodTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, name, description, type, inputSchema, outputSchema, endpoint, authMethod, isActive, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, typeTrgmSimilarity, endpointTrgmSimilarity, authMethodTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: recipe

Access: `db.recipe`

```
METHODS:
  db.recipe.findMany({ select, where?, orderBy?, first?, offset? })
  db.recipe.findOne({ id, select })
  db.recipe.create({ data: { entityId, name, description, cuisine, prepTimeMinutes, cookTimeMinutes, servings, difficulty, ingredients, instructions, sourceUrl, imageUrl, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, cuisineTrgmSimilarity, difficultyTrgmSimilarity, sourceUrlTrgmSimilarity, imageUrlTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.recipe.update({ where: { id }, data, select })
  db.recipe.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  name: string
  description: string
  cuisine: string
  prepTimeMinutes: number
  cookTimeMinutes: number
  servings: number
  difficulty: string
  ingredients: unknown
  instructions: unknown
  sourceUrl: string
  imageUrl: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  nameTrgmSimilarity: number
  descriptionTrgmSimilarity: number
  cuisineTrgmSimilarity: number
  difficultyTrgmSimilarity: number
  sourceUrlTrgmSimilarity: number
  imageUrlTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  name: string
  description: string
  cuisine: string
  prepTimeMinutes: number
  cookTimeMinutes: number
  servings: number
  difficulty: string
  ingredients: unknown
  instructions: unknown
  sourceUrl: string
  imageUrl: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  nameTrgmSimilarity: number
  descriptionTrgmSimilarity: number
  cuisineTrgmSimilarity: number
  difficultyTrgmSimilarity: number
  sourceUrlTrgmSimilarity: number
  imageUrlTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, description, cuisine, prepTimeMinutes, cookTimeMinutes, servings, difficulty, ingredients, instructions, sourceUrl, imageUrl, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, cuisineTrgmSimilarity, difficultyTrgmSimilarity, sourceUrlTrgmSimilarity, imageUrlTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, name, description, cuisine, prepTimeMinutes, cookTimeMinutes, servings, difficulty, ingredients, instructions, sourceUrl, imageUrl, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, cuisineTrgmSimilarity, difficultyTrgmSimilarity, sourceUrlTrgmSimilarity, imageUrlTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, name, description, cuisine, prepTimeMinutes, cookTimeMinutes, servings, difficulty, ingredients, instructions, sourceUrl, imageUrl, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, cuisineTrgmSimilarity, difficultyTrgmSimilarity, sourceUrlTrgmSimilarity, imageUrlTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, name, description, cuisine, prepTimeMinutes, cookTimeMinutes, servings, difficulty, ingredients, instructions, sourceUrl, imageUrl, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, cuisineTrgmSimilarity, difficultyTrgmSimilarity, sourceUrlTrgmSimilarity, imageUrlTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: trip

Access: `db.trip`

```
METHODS:
  db.trip.findMany({ select, where?, orderBy?, first?, offset? })
  db.trip.findOne({ id, select })
  db.trip.create({ data: { entityId, name, destination, startDate, endDate, status, notes, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, destinationTrgmSimilarity, statusTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.trip.update({ where: { id }, data, select })
  db.trip.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  name: string
  destination: string
  startDate: string
  endDate: string
  status: string
  notes: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  nameTrgmSimilarity: number
  destinationTrgmSimilarity: number
  statusTrgmSimilarity: number
  notesTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  name: string
  destination: string
  startDate: string
  endDate: string
  status: string
  notes: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  nameTrgmSimilarity: number
  destinationTrgmSimilarity: number
  statusTrgmSimilarity: number
  notesTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, destination, startDate, endDate, status, notes, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, destinationTrgmSimilarity, statusTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, name, destination, startDate, endDate, status, notes, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, destinationTrgmSimilarity, statusTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, name, destination, startDate, endDate, status, notes, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, destinationTrgmSimilarity, statusTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, name, destination, startDate, endDate, status, notes, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, destinationTrgmSimilarity, statusTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: memory

Access: `db.memory`

```
METHODS:
  db.memory.findMany({ select, where?, orderBy?, first?, offset? })
  db.memory.findOne({ id, select })
  db.memory.create({ data: { entityId, content, memoryType, memoryCategory, agentId, importance, verified, source, relatedEntityType, relatedEntityId, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, embeddingTextBm25Score, contentTrgmSimilarity, memoryTypeTrgmSimilarity, memoryCategoryTrgmSimilarity, sourceTrgmSimilarity, relatedEntityTypeTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.memory.update({ where: { id }, data, select })
  db.memory.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  content: string
  memoryType: string
  memoryCategory: string
  agentId: string
  importance: number
  verified: boolean
  source: string
  relatedEntityType: string
  relatedEntityId: string
  abstract: string
  overview: string
  activeCount: number
  lastAccessedAt: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  contentTrgmSimilarity: number
  memoryTypeTrgmSimilarity: number
  memoryCategoryTrgmSimilarity: number
  sourceTrgmSimilarity: number
  relatedEntityTypeTrgmSimilarity: number
  abstractTrgmSimilarity: number
  overviewTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  content: string
  memoryType: string
  memoryCategory: string
  agentId: string
  importance: number
  verified: boolean
  source: string
  relatedEntityType: string
  relatedEntityId: string
  abstract: string
  overview: string
  activeCount: number
  lastAccessedAt: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  contentTrgmSimilarity: number
  memoryTypeTrgmSimilarity: number
  memoryCategoryTrgmSimilarity: number
  sourceTrgmSimilarity: number
  relatedEntityTypeTrgmSimilarity: number
  abstractTrgmSimilarity: number
  overviewTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, content, memoryType, memoryCategory, agentId, importance, verified, source, relatedEntityType, relatedEntityId, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, embeddingTextBm25Score, contentTrgmSimilarity, memoryTypeTrgmSimilarity, memoryCategoryTrgmSimilarity, sourceTrgmSimilarity, relatedEntityTypeTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, content, memoryType, memoryCategory, agentId, importance, verified, source, relatedEntityType, relatedEntityId, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, embeddingTextBm25Score, contentTrgmSimilarity, memoryTypeTrgmSimilarity, memoryCategoryTrgmSimilarity, sourceTrgmSimilarity, relatedEntityTypeTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, content, memoryType, memoryCategory, agentId, importance, verified, source, relatedEntityType, relatedEntityId, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, embeddingTextBm25Score, contentTrgmSimilarity, memoryTypeTrgmSimilarity, memoryCategoryTrgmSimilarity, sourceTrgmSimilarity, relatedEntityTypeTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, content, memoryType, memoryCategory, agentId, importance, verified, source, relatedEntityType, relatedEntityId, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, embeddingTextBm25Score, contentTrgmSimilarity, memoryTypeTrgmSimilarity, memoryCategoryTrgmSimilarity, sourceTrgmSimilarity, relatedEntityTypeTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: rule

Access: `db.rule`

```
METHODS:
  db.rule.findMany({ select, where?, orderBy?, first?, offset? })
  db.rule.findOne({ id, select })
  db.rule.create({ data: { entityId, title, content, kind, severity, isActive, slug, verification, tags, embeddingText, embedding, triggerConcept, embeddingTextBm25Score, titleTrgmSimilarity, contentTrgmSimilarity, kindTrgmSimilarity, severityTrgmSimilarity, slugTrgmSimilarity, verificationTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, triggerConceptVectorDistance, searchScore }, select })
  db.rule.update({ where: { id }, data, select })
  db.rule.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  title: string
  content: string
  kind: string
  severity: string
  isActive: boolean
  slug: string
  verification: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  triggerConcept: number[]
  embeddingTextBm25Score: number
  titleTrgmSimilarity: number
  contentTrgmSimilarity: number
  kindTrgmSimilarity: number
  severityTrgmSimilarity: number
  slugTrgmSimilarity: number
  verificationTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  triggerConceptVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  title: string
  content: string
  kind: string
  severity: string
  isActive: boolean
  slug: string
  verification: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  triggerConcept: number[]
  embeddingTextBm25Score: number
  titleTrgmSimilarity: number
  contentTrgmSimilarity: number
  kindTrgmSimilarity: number
  severityTrgmSimilarity: number
  slugTrgmSimilarity: number
  verificationTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  triggerConceptVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, content, kind, severity, isActive, slug, verification, tags, embeddingText, embedding, triggerConcept, embeddingTextBm25Score, titleTrgmSimilarity, contentTrgmSimilarity, kindTrgmSimilarity, severityTrgmSimilarity, slugTrgmSimilarity, verificationTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, triggerConceptVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, title, content, kind, severity, isActive, slug, verification, tags, embeddingText, embedding, triggerConcept, embeddingTextBm25Score, titleTrgmSimilarity, contentTrgmSimilarity, kindTrgmSimilarity, severityTrgmSimilarity, slugTrgmSimilarity, verificationTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, triggerConceptVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, title, content, kind, severity, isActive, slug, verification, tags, embeddingText, embedding, triggerConcept, embeddingTextBm25Score, titleTrgmSimilarity, contentTrgmSimilarity, kindTrgmSimilarity, severityTrgmSimilarity, slugTrgmSimilarity, verificationTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, triggerConceptVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, title, content, kind, severity, isActive, slug, verification, tags, embeddingText, embedding, triggerConcept, embeddingTextBm25Score, titleTrgmSimilarity, contentTrgmSimilarity, kindTrgmSimilarity, severityTrgmSimilarity, slugTrgmSimilarity, verificationTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, triggerConceptVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: task

Access: `db.task`

```
METHODS:
  db.task.findMany({ select, where?, orderBy?, first?, offset? })
  db.task.findOne({ id, select })
  db.task.create({ data: { entityId, title, description, status, priority, projectId, taskType, assignedAgentId, parentTaskId, dueDate, completedAt, conversationId, dependencies, tags, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, descriptionTrgmSimilarity, statusTrgmSimilarity, taskTypeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.task.update({ where: { id }, data, select })
  db.task.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  title: string
  description: string
  status: string
  priority: number
  projectId: string
  taskType: string
  assignedAgentId: string
  parentTaskId: string
  dueDate: string
  completedAt: string
  conversationId: string
  dependencies: string[]
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  titleTrgmSimilarity: number
  descriptionTrgmSimilarity: number
  statusTrgmSimilarity: number
  taskTypeTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  title: string
  description: string
  status: string
  priority: number
  projectId: string
  taskType: string
  assignedAgentId: string
  parentTaskId: string
  dueDate: string
  completedAt: string
  conversationId: string
  dependencies: string[]
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  titleTrgmSimilarity: number
  descriptionTrgmSimilarity: number
  statusTrgmSimilarity: number
  taskTypeTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, description, status, priority, projectId, taskType, assignedAgentId, parentTaskId, dueDate, completedAt, conversationId, dependencies, tags, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, descriptionTrgmSimilarity, statusTrgmSimilarity, taskTypeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, title, description, status, priority, projectId, taskType, assignedAgentId, parentTaskId, dueDate, completedAt, conversationId, dependencies, tags, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, descriptionTrgmSimilarity, statusTrgmSimilarity, taskTypeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, title, description, status, priority, projectId, taskType, assignedAgentId, parentTaskId, dueDate, completedAt, conversationId, dependencies, tags, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, descriptionTrgmSimilarity, statusTrgmSimilarity, taskTypeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, title, description, status, priority, projectId, taskType, assignedAgentId, parentTaskId, dueDate, completedAt, conversationId, dependencies, tags, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, descriptionTrgmSimilarity, statusTrgmSimilarity, taskTypeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: agent

Access: `db.agent`

```
METHODS:
  db.agent.findMany({ select, where?, orderBy?, first?, offset? })
  db.agent.findOne({ id, select })
  db.agent.create({ data: { entityId, name, role, capabilities, config, status, persona, backstory, communicationStyle, systemPrompt, preferredModel, fallbackModels, temperature, mood, focus, lastActiveAt, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, roleTrgmSimilarity, statusTrgmSimilarity, personaTrgmSimilarity, backstoryTrgmSimilarity, communicationStyleTrgmSimilarity, systemPromptTrgmSimilarity, preferredModelTrgmSimilarity, moodTrgmSimilarity, focusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.agent.update({ where: { id }, data, select })
  db.agent.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  name: string
  role: string
  capabilities: unknown
  config: unknown
  status: string
  persona: string
  backstory: string
  communicationStyle: string
  systemPrompt: string
  preferredModel: string
  fallbackModels: string[]
  temperature: string
  mood: string
  focus: string
  lastActiveAt: string
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  nameTrgmSimilarity: number
  roleTrgmSimilarity: number
  statusTrgmSimilarity: number
  personaTrgmSimilarity: number
  backstoryTrgmSimilarity: number
  communicationStyleTrgmSimilarity: number
  systemPromptTrgmSimilarity: number
  preferredModelTrgmSimilarity: number
  moodTrgmSimilarity: number
  focusTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  name: string
  role: string
  capabilities: unknown
  config: unknown
  status: string
  persona: string
  backstory: string
  communicationStyle: string
  systemPrompt: string
  preferredModel: string
  fallbackModels: string[]
  temperature: string
  mood: string
  focus: string
  lastActiveAt: string
  embeddingText: string
  embedding: number[]
  embeddingTextBm25Score: number
  nameTrgmSimilarity: number
  roleTrgmSimilarity: number
  statusTrgmSimilarity: number
  personaTrgmSimilarity: number
  backstoryTrgmSimilarity: number
  communicationStyleTrgmSimilarity: number
  systemPromptTrgmSimilarity: number
  preferredModelTrgmSimilarity: number
  moodTrgmSimilarity: number
  focusTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, role, capabilities, config, status, persona, backstory, communicationStyle, systemPrompt, preferredModel, fallbackModels, temperature, mood, focus, lastActiveAt, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, roleTrgmSimilarity, statusTrgmSimilarity, personaTrgmSimilarity, backstoryTrgmSimilarity, communicationStyleTrgmSimilarity, systemPromptTrgmSimilarity, preferredModelTrgmSimilarity, moodTrgmSimilarity, focusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, name, role, capabilities, config, status, persona, backstory, communicationStyle, systemPrompt, preferredModel, fallbackModels, temperature, mood, focus, lastActiveAt, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, roleTrgmSimilarity, statusTrgmSimilarity, personaTrgmSimilarity, backstoryTrgmSimilarity, communicationStyleTrgmSimilarity, systemPromptTrgmSimilarity, preferredModelTrgmSimilarity, moodTrgmSimilarity, focusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, name, role, capabilities, config, status, persona, backstory, communicationStyle, systemPrompt, preferredModel, fallbackModels, temperature, mood, focus, lastActiveAt, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, roleTrgmSimilarity, statusTrgmSimilarity, personaTrgmSimilarity, backstoryTrgmSimilarity, communicationStyleTrgmSimilarity, systemPromptTrgmSimilarity, preferredModelTrgmSimilarity, moodTrgmSimilarity, focusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, name, role, capabilities, config, status, persona, backstory, communicationStyle, systemPrompt, preferredModel, fallbackModels, temperature, mood, focus, lastActiveAt, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, roleTrgmSimilarity, statusTrgmSimilarity, personaTrgmSimilarity, backstoryTrgmSimilarity, communicationStyleTrgmSimilarity, systemPromptTrgmSimilarity, preferredModelTrgmSimilarity, moodTrgmSimilarity, focusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: session

Access: `db.session`

```
METHODS:
  db.session.findMany({ select, where?, orderBy?, first?, offset? })
  db.session.findOne({ id, select })
  db.session.create({ data: { entityId, title, agentId, startedAt, endedAt, status, contextSummary, sessionSummary, archivedMessages, compressionCount, archivedAt, extractedMemoryIds, contextsUsed, skillsUsed, embeddingText, embedding, uagentTrgmSimilarity, fingerprintModeTrgmSimilarity, csrfSecretTrgmSimilarity, searchScore }, select })
  db.session.update({ where: { id }, data, select })
  db.session.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  title: string
  agentId: string
  startedAt: string
  endedAt: string
  status: string
  contextSummary: string
  sessionSummary: string
  archivedMessages: unknown
  compressionCount: number
  archivedAt: string
  extractedMemoryIds: string[]
  contextsUsed: unknown
  skillsUsed: string[]
  embeddingText: string
  embedding: number[]
  uagentTrgmSimilarity: number
  fingerprintModeTrgmSimilarity: number
  csrfSecretTrgmSimilarity: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  title: string
  agentId: string
  startedAt: string
  endedAt: string
  status: string
  contextSummary: string
  sessionSummary: string
  archivedMessages: unknown
  compressionCount: number
  archivedAt: string
  extractedMemoryIds: string[]
  contextsUsed: unknown
  skillsUsed: string[]
  embeddingText: string
  embedding: number[]
  uagentTrgmSimilarity: number
  fingerprintModeTrgmSimilarity: number
  csrfSecretTrgmSimilarity: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, agentId, startedAt, endedAt, status, contextSummary, sessionSummary, archivedMessages, compressionCount, archivedAt, extractedMemoryIds, contextsUsed, skillsUsed, embeddingText, embedding, uagentTrgmSimilarity, fingerprintModeTrgmSimilarity, csrfSecretTrgmSimilarity, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, title, agentId, startedAt, endedAt, status, contextSummary, sessionSummary, archivedMessages, compressionCount, archivedAt, extractedMemoryIds, contextsUsed, skillsUsed, embeddingText, embedding, uagentTrgmSimilarity, fingerprintModeTrgmSimilarity, csrfSecretTrgmSimilarity, searchScore }
  create:   { id, entityId, createdAt, updatedAt, title, agentId, startedAt, endedAt, status, contextSummary, sessionSummary, archivedMessages, compressionCount, archivedAt, extractedMemoryIds, contextsUsed, skillsUsed, embeddingText, embedding, uagentTrgmSimilarity, fingerprintModeTrgmSimilarity, csrfSecretTrgmSimilarity, searchScore }
  update:   { id, entityId, createdAt, updatedAt, title, agentId, startedAt, endedAt, status, contextSummary, sessionSummary, archivedMessages, compressionCount, archivedAt, extractedMemoryIds, contextsUsed, skillsUsed, embeddingText, embedding, uagentTrgmSimilarity, fingerprintModeTrgmSimilarity, csrfSecretTrgmSimilarity, searchScore }
  delete:   { id }
```

### MODEL: skill

Access: `db.skill`

```
METHODS:
  db.skill.findMany({ select, where?, orderBy?, first?, offset? })
  db.skill.findOne({ id, select })
  db.skill.create({ data: { entityId, name, slug, description, content, procedure, interface, requirements, prerequisites, alwaysLoad, filePath, contentHash, category, isActive, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, intentTrigger, embeddingTextBm25Score, nameTrgmSimilarity, slugTrgmSimilarity, descriptionTrgmSimilarity, contentTrgmSimilarity, procedureTrgmSimilarity, filePathTrgmSimilarity, contentHashTrgmSimilarity, categoryTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, intentTriggerVectorDistance, searchScore }, select })
  db.skill.update({ where: { id }, data, select })
  db.skill.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  name: string
  slug: string
  description: string
  content: string
  procedure: string
  interface: unknown
  requirements: unknown
  prerequisites: unknown
  alwaysLoad: boolean
  filePath: string
  contentHash: string
  category: string
  isActive: boolean
  abstract: string
  overview: string
  activeCount: number
  lastAccessedAt: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  intentTrigger: number[]
  embeddingTextBm25Score: number
  nameTrgmSimilarity: number
  slugTrgmSimilarity: number
  descriptionTrgmSimilarity: number
  contentTrgmSimilarity: number
  procedureTrgmSimilarity: number
  filePathTrgmSimilarity: number
  contentHashTrgmSimilarity: number
  categoryTrgmSimilarity: number
  abstractTrgmSimilarity: number
  overviewTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  intentTriggerVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  name: string
  slug: string
  description: string
  content: string
  procedure: string
  interface: unknown
  requirements: unknown
  prerequisites: unknown
  alwaysLoad: boolean
  filePath: string
  contentHash: string
  category: string
  isActive: boolean
  abstract: string
  overview: string
  activeCount: number
  lastAccessedAt: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  intentTrigger: number[]
  embeddingTextBm25Score: number
  nameTrgmSimilarity: number
  slugTrgmSimilarity: number
  descriptionTrgmSimilarity: number
  contentTrgmSimilarity: number
  procedureTrgmSimilarity: number
  filePathTrgmSimilarity: number
  contentHashTrgmSimilarity: number
  categoryTrgmSimilarity: number
  abstractTrgmSimilarity: number
  overviewTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  intentTriggerVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, slug, description, content, procedure, interface, requirements, prerequisites, alwaysLoad, filePath, contentHash, category, isActive, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, intentTrigger, embeddingTextBm25Score, nameTrgmSimilarity, slugTrgmSimilarity, descriptionTrgmSimilarity, contentTrgmSimilarity, procedureTrgmSimilarity, filePathTrgmSimilarity, contentHashTrgmSimilarity, categoryTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, intentTriggerVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, name, slug, description, content, procedure, interface, requirements, prerequisites, alwaysLoad, filePath, contentHash, category, isActive, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, intentTrigger, embeddingTextBm25Score, nameTrgmSimilarity, slugTrgmSimilarity, descriptionTrgmSimilarity, contentTrgmSimilarity, procedureTrgmSimilarity, filePathTrgmSimilarity, contentHashTrgmSimilarity, categoryTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, intentTriggerVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, name, slug, description, content, procedure, interface, requirements, prerequisites, alwaysLoad, filePath, contentHash, category, isActive, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, intentTrigger, embeddingTextBm25Score, nameTrgmSimilarity, slugTrgmSimilarity, descriptionTrgmSimilarity, contentTrgmSimilarity, procedureTrgmSimilarity, filePathTrgmSimilarity, contentHashTrgmSimilarity, categoryTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, intentTriggerVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, name, slug, description, content, procedure, interface, requirements, prerequisites, alwaysLoad, filePath, contentHash, category, isActive, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, intentTrigger, embeddingTextBm25Score, nameTrgmSimilarity, slugTrgmSimilarity, descriptionTrgmSimilarity, contentTrgmSimilarity, procedureTrgmSimilarity, filePathTrgmSimilarity, contentHashTrgmSimilarity, categoryTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, intentTriggerVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: project

Access: `db.project`

```
METHODS:
  db.project.findMany({ select, where?, orderBy?, first?, offset? })
  db.project.findOne({ id, select })
  db.project.create({ data: { entityId, name, description, status, startDate, dueDate, tags, embeddingText, embedding, searchTsv, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.project.update({ where: { id }, data, select })
  db.project.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  name: string
  description: string
  status: string
  startDate: string
  dueDate: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  searchTsv: string
  searchTsvRank: number
  embeddingTextBm25Score: number
  nameTrgmSimilarity: number
  descriptionTrgmSimilarity: number
  statusTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  name: string
  description: string
  status: string
  startDate: string
  dueDate: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  searchTsv: string
  searchTsvRank: number
  embeddingTextBm25Score: number
  nameTrgmSimilarity: number
  descriptionTrgmSimilarity: number
  statusTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, description, status, startDate, dueDate, tags, embeddingText, embedding, searchTsv, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, name, description, status, startDate, dueDate, tags, embeddingText, embedding, searchTsv, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, name, description, status, startDate, dueDate, tags, embeddingText, embedding, searchTsv, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, name, description, status, startDate, dueDate, tags, embeddingText, embedding, searchTsv, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: document

Access: `db.document`

```
METHODS:
  db.document.findMany({ select, where?, orderBy?, first?, offset? })
  db.document.findOne({ id, select })
  db.document.create({ data: { entityId, title, url, content, sourceType, isRead, savedAt, parentDocumentId, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, searchTsv, searchTsvRank, contentBm25Score, embeddingTextBm25Score, titleTrgmSimilarity, urlTrgmSimilarity, contentTrgmSimilarity, sourceTypeTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.document.update({ where: { id }, data, select })
  db.document.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  title: string
  url: string
  content: string
  sourceType: string
  isRead: boolean
  savedAt: string
  parentDocumentId: string
  abstract: string
  overview: string
  activeCount: number
  lastAccessedAt: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  searchTsv: string
  searchTsvRank: number
  contentBm25Score: number
  embeddingTextBm25Score: number
  titleTrgmSimilarity: number
  urlTrgmSimilarity: number
  contentTrgmSimilarity: number
  sourceTypeTrgmSimilarity: number
  abstractTrgmSimilarity: number
  overviewTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  title: string
  url: string
  content: string
  sourceType: string
  isRead: boolean
  savedAt: string
  parentDocumentId: string
  abstract: string
  overview: string
  activeCount: number
  lastAccessedAt: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  searchTsv: string
  searchTsvRank: number
  contentBm25Score: number
  embeddingTextBm25Score: number
  titleTrgmSimilarity: number
  urlTrgmSimilarity: number
  contentTrgmSimilarity: number
  sourceTypeTrgmSimilarity: number
  abstractTrgmSimilarity: number
  overviewTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, url, content, sourceType, isRead, savedAt, parentDocumentId, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, searchTsv, searchTsvRank, contentBm25Score, embeddingTextBm25Score, titleTrgmSimilarity, urlTrgmSimilarity, contentTrgmSimilarity, sourceTypeTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, title, url, content, sourceType, isRead, savedAt, parentDocumentId, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, searchTsv, searchTsvRank, contentBm25Score, embeddingTextBm25Score, titleTrgmSimilarity, urlTrgmSimilarity, contentTrgmSimilarity, sourceTypeTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, title, url, content, sourceType, isRead, savedAt, parentDocumentId, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, searchTsv, searchTsvRank, contentBm25Score, embeddingTextBm25Score, titleTrgmSimilarity, urlTrgmSimilarity, contentTrgmSimilarity, sourceTypeTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, title, url, content, sourceType, isRead, savedAt, parentDocumentId, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, searchTsv, searchTsvRank, contentBm25Score, embeddingTextBm25Score, titleTrgmSimilarity, urlTrgmSimilarity, contentTrgmSimilarity, sourceTypeTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: company

Access: `db.company`

```
METHODS:
  db.company.findMany({ select, where?, orderBy?, first?, offset? })
  db.company.findOne({ id, select })
  db.company.create({ data: { entityId, name, domain, industry, description, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, domainTrgmSimilarity, industryTrgmSimilarity, descriptionTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.company.update({ where: { id }, data, select })
  db.company.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  name: string
  domain: string
  industry: string
  description: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  searchTsv: string
  mainImageId: string
  searchTsvRank: number
  embeddingTextBm25Score: number
  nameTrgmSimilarity: number
  domainTrgmSimilarity: number
  industryTrgmSimilarity: number
  descriptionTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  name: string
  domain: string
  industry: string
  description: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  searchTsv: string
  mainImageId: string
  searchTsvRank: number
  embeddingTextBm25Score: number
  nameTrgmSimilarity: number
  domainTrgmSimilarity: number
  industryTrgmSimilarity: number
  descriptionTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, domain, industry, description, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, domainTrgmSimilarity, industryTrgmSimilarity, descriptionTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, name, domain, industry, description, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, domainTrgmSimilarity, industryTrgmSimilarity, descriptionTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, name, domain, industry, description, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, domainTrgmSimilarity, industryTrgmSimilarity, descriptionTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, name, domain, industry, description, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, domainTrgmSimilarity, industryTrgmSimilarity, descriptionTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: event

Access: `db.event`

```
METHODS:
  db.event.findMany({ select, where?, orderBy?, first?, offset? })
  db.event.findOne({ id, select })
  db.event.create({ data: { entityId, name, eventType, location, city, startedAt, endedAt, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, eventTypeTrgmSimilarity, locationTrgmSimilarity, cityTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.event.update({ where: { id }, data, select })
  db.event.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  name: string
  eventType: string
  location: string
  city: string
  startedAt: string
  endedAt: string
  notes: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  searchTsv: string
  mainImageId: string
  searchTsvRank: number
  embeddingTextBm25Score: number
  nameTrgmSimilarity: number
  eventTypeTrgmSimilarity: number
  locationTrgmSimilarity: number
  cityTrgmSimilarity: number
  notesTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  name: string
  eventType: string
  location: string
  city: string
  startedAt: string
  endedAt: string
  notes: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  searchTsv: string
  mainImageId: string
  searchTsvRank: number
  embeddingTextBm25Score: number
  nameTrgmSimilarity: number
  eventTypeTrgmSimilarity: number
  locationTrgmSimilarity: number
  cityTrgmSimilarity: number
  notesTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, eventTypeTrgmSimilarity, locationTrgmSimilarity, cityTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, eventTypeTrgmSimilarity, locationTrgmSimilarity, cityTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, eventTypeTrgmSimilarity, locationTrgmSimilarity, cityTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, eventTypeTrgmSimilarity, locationTrgmSimilarity, cityTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: contact

Access: `db.contact`

```
METHODS:
  db.contact.findMany({ select, where?, orderBy?, first?, offset? })
  db.contact.findOne({ id, select })
  db.contact.create({ data: { entityId, firstName, lastName, email, phone, headline, bio, location, birthday, relationshipType, howWeMet, twitterHandle, linkedinUrl, githubUsername, instagramHandle, website, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, firstNameTrgmSimilarity, lastNameTrgmSimilarity, emailTrgmSimilarity, phoneTrgmSimilarity, headlineTrgmSimilarity, bioTrgmSimilarity, locationTrgmSimilarity, relationshipTypeTrgmSimilarity, howWeMetTrgmSimilarity, twitterHandleTrgmSimilarity, linkedinUrlTrgmSimilarity, githubUsernameTrgmSimilarity, instagramHandleTrgmSimilarity, websiteTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.contact.update({ where: { id }, data, select })
  db.contact.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  firstName: string
  lastName: string
  email: string
  phone: string
  headline: string
  bio: string
  location: string
  birthday: string
  relationshipType: string
  howWeMet: string
  twitterHandle: string
  linkedinUrl: string
  githubUsername: string
  instagramHandle: string
  website: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  searchTsv: string
  mainImageId: string
  searchTsvRank: number
  embeddingTextBm25Score: number
  firstNameTrgmSimilarity: number
  lastNameTrgmSimilarity: number
  emailTrgmSimilarity: number
  phoneTrgmSimilarity: number
  headlineTrgmSimilarity: number
  bioTrgmSimilarity: number
  locationTrgmSimilarity: number
  relationshipTypeTrgmSimilarity: number
  howWeMetTrgmSimilarity: number
  twitterHandleTrgmSimilarity: number
  linkedinUrlTrgmSimilarity: number
  githubUsernameTrgmSimilarity: number
  instagramHandleTrgmSimilarity: number
  websiteTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  firstName: string
  lastName: string
  email: string
  phone: string
  headline: string
  bio: string
  location: string
  birthday: string
  relationshipType: string
  howWeMet: string
  twitterHandle: string
  linkedinUrl: string
  githubUsername: string
  instagramHandle: string
  website: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  searchTsv: string
  mainImageId: string
  searchTsvRank: number
  embeddingTextBm25Score: number
  firstNameTrgmSimilarity: number
  lastNameTrgmSimilarity: number
  emailTrgmSimilarity: number
  phoneTrgmSimilarity: number
  headlineTrgmSimilarity: number
  bioTrgmSimilarity: number
  locationTrgmSimilarity: number
  relationshipTypeTrgmSimilarity: number
  howWeMetTrgmSimilarity: number
  twitterHandleTrgmSimilarity: number
  linkedinUrlTrgmSimilarity: number
  githubUsernameTrgmSimilarity: number
  instagramHandleTrgmSimilarity: number
  websiteTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, birthday, relationshipType, howWeMet, twitterHandle, linkedinUrl, githubUsername, instagramHandle, website, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, firstNameTrgmSimilarity, lastNameTrgmSimilarity, emailTrgmSimilarity, phoneTrgmSimilarity, headlineTrgmSimilarity, bioTrgmSimilarity, locationTrgmSimilarity, relationshipTypeTrgmSimilarity, howWeMetTrgmSimilarity, twitterHandleTrgmSimilarity, linkedinUrlTrgmSimilarity, githubUsernameTrgmSimilarity, instagramHandleTrgmSimilarity, websiteTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, birthday, relationshipType, howWeMet, twitterHandle, linkedinUrl, githubUsername, instagramHandle, website, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, firstNameTrgmSimilarity, lastNameTrgmSimilarity, emailTrgmSimilarity, phoneTrgmSimilarity, headlineTrgmSimilarity, bioTrgmSimilarity, locationTrgmSimilarity, relationshipTypeTrgmSimilarity, howWeMetTrgmSimilarity, twitterHandleTrgmSimilarity, linkedinUrlTrgmSimilarity, githubUsernameTrgmSimilarity, instagramHandleTrgmSimilarity, websiteTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, birthday, relationshipType, howWeMet, twitterHandle, linkedinUrl, githubUsername, instagramHandle, website, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, firstNameTrgmSimilarity, lastNameTrgmSimilarity, emailTrgmSimilarity, phoneTrgmSimilarity, headlineTrgmSimilarity, bioTrgmSimilarity, locationTrgmSimilarity, relationshipTypeTrgmSimilarity, howWeMetTrgmSimilarity, twitterHandleTrgmSimilarity, linkedinUrlTrgmSimilarity, githubUsernameTrgmSimilarity, instagramHandleTrgmSimilarity, websiteTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, birthday, relationshipType, howWeMet, twitterHandle, linkedinUrl, githubUsername, instagramHandle, website, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, firstNameTrgmSimilarity, lastNameTrgmSimilarity, emailTrgmSimilarity, phoneTrgmSimilarity, headlineTrgmSimilarity, bioTrgmSimilarity, locationTrgmSimilarity, relationshipTypeTrgmSimilarity, howWeMetTrgmSimilarity, twitterHandleTrgmSimilarity, linkedinUrlTrgmSimilarity, githubUsernameTrgmSimilarity, instagramHandleTrgmSimilarity, websiteTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

### MODEL: venue

Access: `db.venue`

```
METHODS:
  db.venue.findMany({ select, where?, orderBy?, first?, offset? })
  db.venue.findOne({ id, select })
  db.venue.create({ data: { entityId, name, address, neighborhood, city, category, status, googlePlaceId, rating, priceLevel, isFavorite, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, addressTrgmSimilarity, neighborhoodTrgmSimilarity, cityTrgmSimilarity, categoryTrgmSimilarity, statusTrgmSimilarity, googlePlaceIdTrgmSimilarity, priceLevelTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }, select })
  db.venue.update({ where: { id }, data, select })
  db.venue.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  name: string
  address: string
  neighborhood: string
  city: string
  category: string
  status: string
  googlePlaceId: string
  rating: string
  priceLevel: string
  isFavorite: boolean
  notes: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  searchTsv: string
  mainImageId: string
  searchTsvRank: number
  embeddingTextBm25Score: number
  nameTrgmSimilarity: number
  addressTrgmSimilarity: number
  neighborhoodTrgmSimilarity: number
  cityTrgmSimilarity: number
  categoryTrgmSimilarity: number
  statusTrgmSimilarity: number
  googlePlaceIdTrgmSimilarity: number
  priceLevelTrgmSimilarity: number
  notesTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

EDITABLE FIELDS:
  entityId: string
  name: string
  address: string
  neighborhood: string
  city: string
  category: string
  status: string
  googlePlaceId: string
  rating: string
  priceLevel: string
  isFavorite: boolean
  notes: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  searchTsv: string
  mainImageId: string
  searchTsvRank: number
  embeddingTextBm25Score: number
  nameTrgmSimilarity: number
  addressTrgmSimilarity: number
  neighborhoodTrgmSimilarity: number
  cityTrgmSimilarity: number
  categoryTrgmSimilarity: number
  statusTrgmSimilarity: number
  googlePlaceIdTrgmSimilarity: number
  priceLevelTrgmSimilarity: number
  notesTrgmSimilarity: number
  embeddingTextTrgmSimilarity: number
  embeddingVectorDistance: number
  searchScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, address, neighborhood, city, category, status, googlePlaceId, rating, priceLevel, isFavorite, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, addressTrgmSimilarity, neighborhoodTrgmSimilarity, cityTrgmSimilarity, categoryTrgmSimilarity, statusTrgmSimilarity, googlePlaceIdTrgmSimilarity, priceLevelTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  findOne:  { id, entityId, createdAt, updatedAt, name, address, neighborhood, city, category, status, googlePlaceId, rating, priceLevel, isFavorite, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, addressTrgmSimilarity, neighborhoodTrgmSimilarity, cityTrgmSimilarity, categoryTrgmSimilarity, statusTrgmSimilarity, googlePlaceIdTrgmSimilarity, priceLevelTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create:   { id, entityId, createdAt, updatedAt, name, address, neighborhood, city, category, status, googlePlaceId, rating, priceLevel, isFavorite, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, addressTrgmSimilarity, neighborhoodTrgmSimilarity, cityTrgmSimilarity, categoryTrgmSimilarity, statusTrgmSimilarity, googlePlaceIdTrgmSimilarity, priceLevelTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update:   { id, entityId, createdAt, updatedAt, name, address, neighborhood, city, category, status, googlePlaceId, rating, priceLevel, isFavorite, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, addressTrgmSimilarity, neighborhoodTrgmSimilarity, cityTrgmSimilarity, categoryTrgmSimilarity, statusTrgmSimilarity, googlePlaceIdTrgmSimilarity, priceLevelTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete:   { id }
```

## PATTERNS

```typescript
// All methods require .execute() to run
const result = await db.modelName.findMany({ select: { id: true } }).execute();

// Select specific fields
const partial = await db.modelName.findMany({ select: { id: true, name: true } }).execute();

// Filter with where clause
const filtered = await db.modelName.findMany({ select: { id: true }, where: { name: 'test' } }).execute();
```
