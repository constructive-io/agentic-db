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
  db.process.create({ data: { entityId, pid, agentId, command, startedAt, endedAt, status, exitCode, logsPath }, select })
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

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, pid, agentId, command, startedAt, endedAt, status, exitCode, logsPath }]
  findOne:  { id, entityId, createdAt, updatedAt, pid, agentId, command, startedAt, endedAt, status, exitCode, logsPath }
  create:   { id, entityId, createdAt, updatedAt, pid, agentId, command, startedAt, endedAt, status, exitCode, logsPath }
  update:   { id, entityId, createdAt, updatedAt, pid, agentId, command, startedAt, endedAt, status, exitCode, logsPath }
  delete:   { id }
```

### MODEL: scheduledJob

Access: `db.scheduledJob`

```
METHODS:
  db.scheduledJob.findMany({ select, where?, orderBy?, first?, offset? })
  db.scheduledJob.findOne({ id, select })
  db.scheduledJob.create({ data: { entityId, name, schedule, command, agentId, active, lastRun, nextRun }, select })
  db.scheduledJob.update({ where: { id }, data, select })
  db.scheduledJob.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  name: string
  schedule: string
  command: string
  agentId: string
  active: boolean
  lastRun: string
  nextRun: string

EDITABLE FIELDS:
  entityId: string
  name: string
  schedule: string
  command: string
  agentId: string
  active: boolean
  lastRun: string
  nextRun: string

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, schedule, command, agentId, active, lastRun, nextRun }]
  findOne:  { id, entityId, createdAt, updatedAt, name, schedule, command, agentId, active, lastRun, nextRun }
  create:   { id, entityId, createdAt, updatedAt, name, schedule, command, agentId, active, lastRun, nextRun }
  update:   { id, entityId, createdAt, updatedAt, name, schedule, command, agentId, active, lastRun, nextRun }
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
  db.calendarEvent.create({ data: { entityId, calendarAccountId, remoteId, title, description, startAt, endAt, allDay, location, recurrenceRule, status, tags, embeddingText, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

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
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, calendarAccountId, remoteId, title, description, startAt, endAt, allDay, location, recurrenceRule, status, tags, embeddingText, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, calendarAccountId, remoteId, title, description, startAt, endAt, allDay, location, recurrenceRule, status, tags, embeddingText, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, calendarAccountId, remoteId, title, description, startAt, endAt, allDay, location, recurrenceRule, status, tags, embeddingText, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, calendarAccountId, remoteId, title, description, startAt, endAt, allDay, location, recurrenceRule, status, tags, embeddingText, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: interaction

Access: `db.interaction`

```
METHODS:
  db.interaction.findMany({ select, where?, orderBy?, first?, offset? })
  db.interaction.findOne({ id, select })
  db.interaction.create({ data: { entityId, contactId, type, occurredAt, summary, sentiment, tags, embeddingText, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

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
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, contactId, type, occurredAt, summary, sentiment, tags, embeddingText, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, contactId, type, occurredAt, summary, sentiment, tags, embeddingText, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, contactId, type, occurredAt, summary, sentiment, tags, embeddingText, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, contactId, type, occurredAt, summary, sentiment, tags, embeddingText, embedding, embeddingDistance }
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
  db.habitLog.create({ data: { entityId, habitId, completedAt, activityType, durationMinutes, distance, distanceUnit, reps, sets, weightAmount, weightUnit, calories, data, notes, tags }, select })
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

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, habitId, completedAt, activityType, durationMinutes, distance, distanceUnit, reps, sets, weightAmount, weightUnit, calories, data, notes, tags }]
  findOne:  { id, entityId, createdAt, updatedAt, habitId, completedAt, activityType, durationMinutes, distance, distanceUnit, reps, sets, weightAmount, weightUnit, calories, data, notes, tags }
  create:   { id, entityId, createdAt, updatedAt, habitId, completedAt, activityType, durationMinutes, distance, distanceUnit, reps, sets, weightAmount, weightUnit, calories, data, notes, tags }
  update:   { id, entityId, createdAt, updatedAt, habitId, completedAt, activityType, durationMinutes, distance, distanceUnit, reps, sets, weightAmount, weightUnit, calories, data, notes, tags }
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
  db.milestone.create({ data: { entityId, projectId, name, dueDate, status }, select })
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

EDITABLE FIELDS:
  entityId: string
  projectId: string
  name: string
  dueDate: string
  status: string

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, projectId, name, dueDate, status }]
  findOne:  { id, entityId, createdAt, updatedAt, projectId, name, dueDate, status }
  create:   { id, entityId, createdAt, updatedAt, projectId, name, dueDate, status }
  update:   { id, entityId, createdAt, updatedAt, projectId, name, dueDate, status }
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
  db.file.create({ data: { entityId, repositoryId, path, language, hash }, select })
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

EDITABLE FIELDS:
  entityId: string
  repositoryId: string
  path: string
  language: string
  hash: string

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, repositoryId, path, language, hash }]
  findOne:  { id, entityId, createdAt, updatedAt, repositoryId, path, language, hash }
  create:   { id, entityId, createdAt, updatedAt, repositoryId, path, language, hash }
  update:   { id, entityId, createdAt, updatedAt, repositoryId, path, language, hash }
  delete:   { id }
```

### MODEL: chunk

Access: `db.chunk`

```
METHODS:
  db.chunk.findMany({ select, where?, orderBy?, first?, offset? })
  db.chunk.findOne({ id, select })
  db.chunk.create({ data: { entityId, fileId, repositoryId, content, startLine, endLine, embeddingText, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  fileId: string
  repositoryId: string
  content: string
  startLine: number
  endLine: number
  embeddingText: string
  embedding: number[]
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, fileId, repositoryId, content, startLine, endLine, embeddingText, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, fileId, repositoryId, content, startLine, endLine, embeddingText, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, fileId, repositoryId, content, startLine, endLine, embeddingText, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, fileId, repositoryId, content, startLine, endLine, embeddingText, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: calendarAccount

Access: `db.calendarAccount`

```
METHODS:
  db.calendarAccount.findMany({ select, where?, orderBy?, first?, offset? })
  db.calendarAccount.findOne({ id, select })
  db.calendarAccount.create({ data: { entityId, email, provider, syncToken, lastSyncedAt }, select })
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

EDITABLE FIELDS:
  entityId: string
  email: string
  provider: string
  syncToken: string
  lastSyncedAt: string

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, email, provider, syncToken, lastSyncedAt }]
  findOne:  { id, entityId, createdAt, updatedAt, email, provider, syncToken, lastSyncedAt }
  create:   { id, entityId, createdAt, updatedAt, email, provider, syncToken, lastSyncedAt }
  update:   { id, entityId, createdAt, updatedAt, email, provider, syncToken, lastSyncedAt }
  delete:   { id }
```

### MODEL: tag

Access: `db.tag`

```
METHODS:
  db.tag.findMany({ select, where?, orderBy?, first?, offset? })
  db.tag.findOne({ id, select })
  db.tag.create({ data: { entityId, name, color, category, usageCount }, select })
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

EDITABLE FIELDS:
  entityId: string
  name: string
  color: string
  category: string
  usageCount: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, color, category, usageCount }]
  findOne:  { id, entityId, createdAt, updatedAt, name, color, category, usageCount }
  create:   { id, entityId, createdAt, updatedAt, name, color, category, usageCount }
  update:   { id, entityId, createdAt, updatedAt, name, color, category, usageCount }
  delete:   { id }
```

### MODEL: feedback

Access: `db.feedback`

```
METHODS:
  db.feedback.findMany({ select, where?, orderBy?, first?, offset? })
  db.feedback.findOne({ id, select })
  db.feedback.create({ data: { entityId, targetType, targetId, rating, comment, source }, select })
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

EDITABLE FIELDS:
  entityId: string
  targetType: string
  targetId: string
  rating: number
  comment: string
  source: string

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, targetType, targetId, rating, comment, source }]
  findOne:  { id, entityId, createdAt, updatedAt, targetType, targetId, rating, comment, source }
  create:   { id, entityId, createdAt, updatedAt, targetType, targetId, rating, comment, source }
  update:   { id, entityId, createdAt, updatedAt, targetType, targetId, rating, comment, source }
  delete:   { id }
```

### MODEL: attachment

Access: `db.attachment`

```
METHODS:
  db.attachment.findMany({ select, where?, orderBy?, first?, offset? })
  db.attachment.findOne({ id, select })
  db.attachment.create({ data: { entityId, url, filename, mimeType, sizeBytes, attachableType, attachableId }, select })
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

EDITABLE FIELDS:
  entityId: string
  url: string
  filename: string
  mimeType: string
  sizeBytes: number
  attachableType: string
  attachableId: string

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, url, filename, mimeType, sizeBytes, attachableType, attachableId }]
  findOne:  { id, entityId, createdAt, updatedAt, url, filename, mimeType, sizeBytes, attachableType, attachableId }
  create:   { id, entityId, createdAt, updatedAt, url, filename, mimeType, sizeBytes, attachableType, attachableId }
  update:   { id, entityId, createdAt, updatedAt, url, filename, mimeType, sizeBytes, attachableType, attachableId }
  delete:   { id }
```

### MODEL: emailAccount

Access: `db.emailAccount`

```
METHODS:
  db.emailAccount.findMany({ select, where?, orderBy?, first?, offset? })
  db.emailAccount.findOne({ id, select })
  db.emailAccount.create({ data: { entityId, email, provider, syncState }, select })
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

EDITABLE FIELDS:
  entityId: string
  email: string
  provider: string
  syncState: unknown

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, email, provider, syncState }]
  findOne:  { id, entityId, createdAt, updatedAt, email, provider, syncState }
  create:   { id, entityId, createdAt, updatedAt, email, provider, syncState }
  update:   { id, entityId, createdAt, updatedAt, email, provider, syncState }
  delete:   { id }
```

### MODEL: message

Access: `db.message`

```
METHODS:
  db.message.findMany({ select, where?, orderBy?, first?, offset? })
  db.message.findOne({ id, select })
  db.message.create({ data: { entityId, emailAccountId, threadId, remoteId, fromAddress, toAddresses, subject, bodyText, receivedAt, tags, embeddingText, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

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
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, emailAccountId, threadId, remoteId, fromAddress, toAddresses, subject, bodyText, receivedAt, tags, embeddingText, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, emailAccountId, threadId, remoteId, fromAddress, toAddresses, subject, bodyText, receivedAt, tags, embeddingText, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, emailAccountId, threadId, remoteId, fromAddress, toAddresses, subject, bodyText, receivedAt, tags, embeddingText, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, emailAccountId, threadId, remoteId, fromAddress, toAddresses, subject, bodyText, receivedAt, tags, embeddingText, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: activityLog

Access: `db.activityLog`

```
METHODS:
  db.activityLog.findMany({ select, where?, orderBy?, first?, offset? })
  db.activityLog.findOne({ id, select })
  db.activityLog.create({ data: { entityId, actorType, actorId, action, targetType, targetId, metadata }, select })
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

EDITABLE FIELDS:
  entityId: string
  actorType: string
  actorId: string
  action: string
  targetType: string
  targetId: string
  metadata: unknown

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, actorType, actorId, action, targetType, targetId, metadata }]
  findOne:  { id, entityId, createdAt, updatedAt, actorType, actorId, action, targetType, targetId, metadata }
  create:   { id, entityId, createdAt, updatedAt, actorType, actorId, action, targetType, targetId, metadata }
  update:   { id, entityId, createdAt, updatedAt, actorType, actorId, action, targetType, targetId, metadata }
  delete:   { id }
```

### MODEL: userSetting

Access: `db.userSetting`

```
METHODS:
  db.userSetting.findMany({ select, where?, orderBy?, first?, offset? })
  db.userSetting.findOne({ id, select })
  db.userSetting.create({ data: { entityId, key, value, category }, select })
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

EDITABLE FIELDS:
  entityId: string
  key: string
  value: unknown
  category: string

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, key, value, category }]
  findOne:  { id, entityId, createdAt, updatedAt, key, value, category }
  create:   { id, entityId, createdAt, updatedAt, key, value, category }
  update:   { id, entityId, createdAt, updatedAt, key, value, category }
  delete:   { id }
```

### MODEL: executionLog

Access: `db.executionLog`

```
METHODS:
  db.executionLog.findMany({ select, where?, orderBy?, first?, offset? })
  db.executionLog.findOne({ id, select })
  db.executionLog.create({ data: { entityId, sessionId, stepName, input, output, toolCalls, durationMs }, select })
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

EDITABLE FIELDS:
  entityId: string
  sessionId: string
  stepName: string
  input: string
  output: string
  toolCalls: unknown
  durationMs: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, sessionId, stepName, input, output, toolCalls, durationMs }]
  findOne:  { id, entityId, createdAt, updatedAt, sessionId, stepName, input, output, toolCalls, durationMs }
  create:   { id, entityId, createdAt, updatedAt, sessionId, stepName, input, output, toolCalls, durationMs }
  update:   { id, entityId, createdAt, updatedAt, sessionId, stepName, input, output, toolCalls, durationMs }
  delete:   { id }
```

### MODEL: webhook

Access: `db.webhook`

```
METHODS:
  db.webhook.findMany({ select, where?, orderBy?, first?, offset? })
  db.webhook.findOne({ id, select })
  db.webhook.create({ data: { entityId, integrationId, url, eventType, secret, isActive }, select })
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

EDITABLE FIELDS:
  entityId: string
  integrationId: string
  url: string
  eventType: string
  secret: string
  isActive: boolean

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, integrationId, url, eventType, secret, isActive }]
  findOne:  { id, entityId, createdAt, updatedAt, integrationId, url, eventType, secret, isActive }
  create:   { id, entityId, createdAt, updatedAt, integrationId, url, eventType, secret, isActive }
  update:   { id, entityId, createdAt, updatedAt, integrationId, url, eventType, secret, isActive }
  delete:   { id }
```

### MODEL: notification

Access: `db.notification`

```
METHODS:
  db.notification.findMany({ select, where?, orderBy?, first?, offset? })
  db.notification.findOne({ id, select })
  db.notification.create({ data: { entityId, title, body, type, priority, readAt, actionUrl, sourceEntityId, sourceEntityType }, select })
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

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, body, type, priority, readAt, actionUrl, sourceEntityId, sourceEntityType }]
  findOne:  { id, entityId, createdAt, updatedAt, title, body, type, priority, readAt, actionUrl, sourceEntityId, sourceEntityType }
  create:   { id, entityId, createdAt, updatedAt, title, body, type, priority, readAt, actionUrl, sourceEntityId, sourceEntityType }
  update:   { id, entityId, createdAt, updatedAt, title, body, type, priority, readAt, actionUrl, sourceEntityId, sourceEntityType }
  delete:   { id }
```

### MODEL: workflowRun

Access: `db.workflowRun`

```
METHODS:
  db.workflowRun.findMany({ select, where?, orderBy?, first?, offset? })
  db.workflowRun.findOne({ id, select })
  db.workflowRun.create({ data: { entityId, workflowId, status, startedAt, completedAt, input, output, error }, select })
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

EDITABLE FIELDS:
  entityId: string
  workflowId: string
  status: string
  startedAt: string
  completedAt: string
  input: unknown
  output: unknown
  error: string

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, workflowId, status, startedAt, completedAt, input, output, error }]
  findOne:  { id, entityId, createdAt, updatedAt, workflowId, status, startedAt, completedAt, input, output, error }
  create:   { id, entityId, createdAt, updatedAt, workflowId, status, startedAt, completedAt, input, output, error }
  update:   { id, entityId, createdAt, updatedAt, workflowId, status, startedAt, completedAt, input, output, error }
  delete:   { id }
```

### MODEL: workflowStep

Access: `db.workflowStep`

```
METHODS:
  db.workflowStep.findMany({ select, where?, orderBy?, first?, offset? })
  db.workflowStep.findOne({ id, select })
  db.workflowStep.create({ data: { entityId, workflowId, stepOrder, actionType, actionConfig, onSuccessStep, onFailureStep, timeoutMs }, select })
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

EDITABLE FIELDS:
  entityId: string
  workflowId: string
  stepOrder: number
  actionType: string
  actionConfig: unknown
  onSuccessStep: number
  onFailureStep: number
  timeoutMs: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, workflowId, stepOrder, actionType, actionConfig, onSuccessStep, onFailureStep, timeoutMs }]
  findOne:  { id, entityId, createdAt, updatedAt, workflowId, stepOrder, actionType, actionConfig, onSuccessStep, onFailureStep, timeoutMs }
  create:   { id, entityId, createdAt, updatedAt, workflowId, stepOrder, actionType, actionConfig, onSuccessStep, onFailureStep, timeoutMs }
  update:   { id, entityId, createdAt, updatedAt, workflowId, stepOrder, actionType, actionConfig, onSuccessStep, onFailureStep, timeoutMs }
  delete:   { id }
```

### MODEL: integration

Access: `db.integration`

```
METHODS:
  db.integration.findMany({ select, where?, orderBy?, first?, offset? })
  db.integration.findOne({ id, select })
  db.integration.create({ data: { entityId, name, provider, type, credentialsRef, config, status, lastSyncedAt }, select })
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

EDITABLE FIELDS:
  entityId: string
  name: string
  provider: string
  type: string
  credentialsRef: string
  config: unknown
  status: string
  lastSyncedAt: string

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, provider, type, credentialsRef, config, status, lastSyncedAt }]
  findOne:  { id, entityId, createdAt, updatedAt, name, provider, type, credentialsRef, config, status, lastSyncedAt }
  create:   { id, entityId, createdAt, updatedAt, name, provider, type, credentialsRef, config, status, lastSyncedAt }
  update:   { id, entityId, createdAt, updatedAt, name, provider, type, credentialsRef, config, status, lastSyncedAt }
  delete:   { id }
```

### MODEL: skillExecution

Access: `db.skillExecution`

```
METHODS:
  db.skillExecution.findMany({ select, where?, orderBy?, first?, offset? })
  db.skillExecution.findOne({ id, select })
  db.skillExecution.create({ data: { entityId, skillId, agentId, sessionId, status, startedAt, completedAt, durationMs, input, output, error }, select })
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

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, skillId, agentId, sessionId, status, startedAt, completedAt, durationMs, input, output, error }]
  findOne:  { id, entityId, createdAt, updatedAt, skillId, agentId, sessionId, status, startedAt, completedAt, durationMs, input, output, error }
  create:   { id, entityId, createdAt, updatedAt, skillId, agentId, sessionId, status, startedAt, completedAt, durationMs, input, output, error }
  update:   { id, entityId, createdAt, updatedAt, skillId, agentId, sessionId, status, startedAt, completedAt, durationMs, input, output, error }
  delete:   { id }
```

### MODEL: chat

Access: `db.chat`

```
METHODS:
  db.chat.findMany({ select, where?, orderBy?, first?, offset? })
  db.chat.findOne({ id, select })
  db.chat.create({ data: { entityId, title, startedAt, embeddingText, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  title: string
  startedAt: string
  embeddingText: string
  embedding: number[]
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, startedAt, embeddingText, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, title, startedAt, embeddingText, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, title, startedAt, embeddingText, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, title, startedAt, embeddingText, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: chatMessage

Access: `db.chatMessage`

```
METHODS:
  db.chatMessage.findMany({ select, where?, orderBy?, first?, offset? })
  db.chatMessage.findOne({ id, select })
  db.chatMessage.create({ data: { entityId, chatId, threadId, role, content, toolCalls, embeddingText, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  chatId: string
  threadId: string
  role: string
  content: string
  toolCalls: unknown
  embeddingText: string
  embedding: number[]
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, chatId, threadId, role, content, toolCalls, embeddingText, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, chatId, threadId, role, content, toolCalls, embeddingText, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, chatId, threadId, role, content, toolCalls, embeddingText, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, chatId, threadId, role, content, toolCalls, embeddingText, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: thread

Access: `db.thread`

```
METHODS:
  db.thread.findMany({ select, where?, orderBy?, first?, offset? })
  db.thread.findOne({ id, select })
  db.thread.create({ data: { entityId, title, summary, status, parentThreadId, embeddingText, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  title: string
  summary: string
  status: string
  parentThreadId: string
  embeddingText: string
  embedding: number[]
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, summary, status, parentThreadId, embeddingText, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, title, summary, status, parentThreadId, embeddingText, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, title, summary, status, parentThreadId, embeddingText, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, title, summary, status, parentThreadId, embeddingText, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: session

Access: `db.session`

```
METHODS:
  db.session.findMany({ select, where?, orderBy?, first?, offset? })
  db.session.findOne({ id, select })
  db.session.create({ data: { entityId, title, agentId, startedAt, endedAt, status, contextSummary, embeddingText, embedding, embeddingDistance }, select })
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
  embeddingText: string
  embedding: number[]
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  title: string
  agentId: string
  startedAt: string
  endedAt: string
  status: string
  contextSummary: string
  embeddingText: string
  embedding: number[]
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, agentId, startedAt, endedAt, status, contextSummary, embeddingText, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, title, agentId, startedAt, endedAt, status, contextSummary, embeddingText, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, title, agentId, startedAt, endedAt, status, contextSummary, embeddingText, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, title, agentId, startedAt, endedAt, status, contextSummary, embeddingText, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: reminder

Access: `db.reminder`

```
METHODS:
  db.reminder.findMany({ select, where?, orderBy?, first?, offset? })
  db.reminder.findOne({ id, select })
  db.reminder.create({ data: { entityId, title, dueAt, completedAt, recurrence, status, relatedEntityId, relatedEntityType, embeddingText, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

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
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, dueAt, completedAt, recurrence, status, relatedEntityId, relatedEntityType, embeddingText, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, title, dueAt, completedAt, recurrence, status, relatedEntityId, relatedEntityType, embeddingText, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, title, dueAt, completedAt, recurrence, status, relatedEntityId, relatedEntityType, embeddingText, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, title, dueAt, completedAt, recurrence, status, relatedEntityId, relatedEntityType, embeddingText, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: image

Access: `db.image`

```
METHODS:
  db.image.findMany({ select, where?, orderBy?, first?, offset? })
  db.image.findOne({ id, select })
  db.image.create({ data: { entityId, url, meta, altText, caption, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  url: string
  meta: unknown
  altText: string
  caption: string
  embedding: number[]
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, url, meta, altText, caption, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, url, meta, altText, caption, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, url, meta, altText, caption, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, url, meta, altText, caption, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: listItem

Access: `db.listItem`

```
METHODS:
  db.listItem.findMany({ select, where?, orderBy?, first?, offset? })
  db.listItem.findOne({ id, select })
  db.listItem.create({ data: { entityId, listId, content, position, isChecked, refId, refType }, select })
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

EDITABLE FIELDS:
  entityId: string
  listId: string
  content: string
  position: number
  isChecked: boolean
  refId: string
  refType: string

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, listId, content, position, isChecked, refId, refType }]
  findOne:  { id, entityId, createdAt, updatedAt, listId, content, position, isChecked, refId, refType }
  create:   { id, entityId, createdAt, updatedAt, listId, content, position, isChecked, refId, refType }
  update:   { id, entityId, createdAt, updatedAt, listId, content, position, isChecked, refId, refType }
  delete:   { id }
```

### MODEL: companyLink

Access: `db.companyLink`

```
METHODS:
  db.companyLink.findMany({ select, where?, orderBy?, first?, offset? })
  db.companyLink.findOne({ id, select })
  db.companyLink.create({ data: { entityId, title, url, embedding, companyId, embeddingDistance }, select })
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
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  title: string
  url: string
  embedding: number[]
  companyId: string
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, url, embedding, companyId, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, title, url, embedding, companyId, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, title, url, embedding, companyId, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, title, url, embedding, companyId, embeddingDistance }
  delete:   { id }
```

### MODEL: contactLink

Access: `db.contactLink`

```
METHODS:
  db.contactLink.findMany({ select, where?, orderBy?, first?, offset? })
  db.contactLink.findOne({ id, select })
  db.contactLink.create({ data: { entityId, title, url, embedding, contactId, embeddingDistance }, select })
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
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  title: string
  url: string
  embedding: number[]
  contactId: string
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, url, embedding, contactId, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, title, url, embedding, contactId, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, title, url, embedding, contactId, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, title, url, embedding, contactId, embeddingDistance }
  delete:   { id }
```

### MODEL: eventLink

Access: `db.eventLink`

```
METHODS:
  db.eventLink.findMany({ select, where?, orderBy?, first?, offset? })
  db.eventLink.findOne({ id, select })
  db.eventLink.create({ data: { entityId, title, url, embedding, eventId, embeddingDistance }, select })
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
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  title: string
  url: string
  embedding: number[]
  eventId: string
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, url, embedding, eventId, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, title, url, embedding, eventId, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, title, url, embedding, eventId, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, title, url, embedding, eventId, embeddingDistance }
  delete:   { id }
```

### MODEL: venueLink

Access: `db.venueLink`

```
METHODS:
  db.venueLink.findMany({ select, where?, orderBy?, first?, offset? })
  db.venueLink.findOne({ id, select })
  db.venueLink.create({ data: { entityId, title, url, embedding, venueId, embeddingDistance }, select })
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
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  title: string
  url: string
  embedding: number[]
  venueId: string
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, url, embedding, venueId, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, title, url, embedding, venueId, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, title, url, embedding, venueId, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, title, url, embedding, venueId, embeddingDistance }
  delete:   { id }
```

### MODEL: habit

Access: `db.habit`

```
METHODS:
  db.habit.findMany({ select, where?, orderBy?, first?, offset? })
  db.habit.findOne({ id, select })
  db.habit.create({ data: { entityId, name, frequency, targetCount, currentStreak, bestStreak, category, tags }, select })
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

EDITABLE FIELDS:
  entityId: string
  name: string
  frequency: string
  targetCount: number
  currentStreak: number
  bestStreak: number
  category: string
  tags: string[]

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, frequency, targetCount, currentStreak, bestStreak, category, tags }]
  findOne:  { id, entityId, createdAt, updatedAt, name, frequency, targetCount, currentStreak, bestStreak, category, tags }
  create:   { id, entityId, createdAt, updatedAt, name, frequency, targetCount, currentStreak, bestStreak, category, tags }
  update:   { id, entityId, createdAt, updatedAt, name, frequency, targetCount, currentStreak, bestStreak, category, tags }
  delete:   { id }
```

### MODEL: workflow

Access: `db.workflow`

```
METHODS:
  db.workflow.findMany({ select, where?, orderBy?, first?, offset? })
  db.workflow.findOne({ id, select })
  db.workflow.create({ data: { entityId, name, description, triggerType, triggerConfig, isActive, tags }, select })
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

EDITABLE FIELDS:
  entityId: string
  name: string
  description: string
  triggerType: string
  triggerConfig: unknown
  isActive: boolean
  tags: string[]

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, description, triggerType, triggerConfig, isActive, tags }]
  findOne:  { id, entityId, createdAt, updatedAt, name, description, triggerType, triggerConfig, isActive, tags }
  create:   { id, entityId, createdAt, updatedAt, name, description, triggerType, triggerConfig, isActive, tags }
  update:   { id, entityId, createdAt, updatedAt, name, description, triggerType, triggerConfig, isActive, tags }
  delete:   { id }
```

### MODEL: expense

Access: `db.expense`

```
METHODS:
  db.expense.findMany({ select, where?, orderBy?, first?, offset? })
  db.expense.findOne({ id, select })
  db.expense.create({ data: { entityId, amount, currency, date, category, description, merchant, receiptUrl, isRecurring, tags }, select })
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

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, amount, currency, date, category, description, merchant, receiptUrl, isRecurring, tags }]
  findOne:  { id, entityId, createdAt, updatedAt, amount, currency, date, category, description, merchant, receiptUrl, isRecurring, tags }
  create:   { id, entityId, createdAt, updatedAt, amount, currency, date, category, description, merchant, receiptUrl, isRecurring, tags }
  update:   { id, entityId, createdAt, updatedAt, amount, currency, date, category, description, merchant, receiptUrl, isRecurring, tags }
  delete:   { id }
```

### MODEL: billingSubscription

Access: `db.billingSubscription`

```
METHODS:
  db.billingSubscription.findMany({ select, where?, orderBy?, first?, offset? })
  db.billingSubscription.findOne({ id, select })
  db.billingSubscription.create({ data: { entityId, name, amount, currency, frequency, provider, nextBillingDate, cancellationDate, status, tags, notes }, select })
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

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, amount, currency, frequency, provider, nextBillingDate, cancellationDate, status, tags, notes }]
  findOne:  { id, entityId, createdAt, updatedAt, name, amount, currency, frequency, provider, nextBillingDate, cancellationDate, status, tags, notes }
  create:   { id, entityId, createdAt, updatedAt, name, amount, currency, frequency, provider, nextBillingDate, cancellationDate, status, tags, notes }
  update:   { id, entityId, createdAt, updatedAt, name, amount, currency, frequency, provider, nextBillingDate, cancellationDate, status, tags, notes }
  delete:   { id }
```

### MODEL: idea

Access: `db.idea`

```
METHODS:
  db.idea.findMany({ select, where?, orderBy?, first?, offset? })
  db.idea.findOne({ id, select })
  db.idea.create({ data: { entityId, content, source, status, tags, embeddingText, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  content: string
  source: string
  status: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, content, source, status, tags, embeddingText, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, content, source, status, tags, embeddingText, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, content, source, status, tags, embeddingText, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, content, source, status, tags, embeddingText, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: list

Access: `db.list`

```
METHODS:
  db.list.findMany({ select, where?, orderBy?, first?, offset? })
  db.list.findOne({ id, select })
  db.list.create({ data: { entityId, name, description, type, tags, embeddingText, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  name: string
  description: string
  type: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, description, type, tags, embeddingText, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, name, description, type, tags, embeddingText, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, name, description, type, tags, embeddingText, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, name, description, type, tags, embeddingText, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: note

Access: `db.note`

```
METHODS:
  db.note.findMany({ select, where?, orderBy?, first?, offset? })
  db.note.findOne({ id, select })
  db.note.create({ data: { entityId, content, notableType, notableId, tags, embeddingText, embedding, embeddingDistance }, select })
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
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  content: string
  notableType: string
  notableId: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, content, notableType, notableId, tags, embeddingText, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, content, notableType, notableId, tags, embeddingText, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, content, notableType, notableId, tags, embeddingText, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, content, notableType, notableId, tags, embeddingText, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: repository

Access: `db.repository`

```
METHODS:
  db.repository.findMany({ select, where?, orderBy?, first?, offset? })
  db.repository.findOne({ id, select })
  db.repository.create({ data: { entityId, name, url, description, defaultBranch, lastSyncedAt, tags, embeddingText, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

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
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, url, description, defaultBranch, lastSyncedAt, tags, embeddingText, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, name, url, description, defaultBranch, lastSyncedAt, tags, embeddingText, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, name, url, description, defaultBranch, lastSyncedAt, tags, embeddingText, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, name, url, description, defaultBranch, lastSyncedAt, tags, embeddingText, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: deal

Access: `db.deal`

```
METHODS:
  db.deal.findMany({ select, where?, orderBy?, first?, offset? })
  db.deal.findOne({ id, select })
  db.deal.create({ data: { entityId, name, stage, value, currency, expectedCloseDate, notes, tags, embeddingText, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

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
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, stage, value, currency, expectedCloseDate, notes, tags, embeddingText, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, name, stage, value, currency, expectedCloseDate, notes, tags, embeddingText, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, name, stage, value, currency, expectedCloseDate, notes, tags, embeddingText, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, name, stage, value, currency, expectedCloseDate, notes, tags, embeddingText, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: goal

Access: `db.goal`

```
METHODS:
  db.goal.findMany({ select, where?, orderBy?, first?, offset? })
  db.goal.findOne({ id, select })
  db.goal.create({ data: { entityId, title, description, targetDate, status, category, progressPct, tags, embeddingText, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

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
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, description, targetDate, status, category, progressPct, tags, embeddingText, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, title, description, targetDate, status, category, progressPct, tags, embeddingText, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, title, description, targetDate, status, category, progressPct, tags, embeddingText, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, title, description, targetDate, status, category, progressPct, tags, embeddingText, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: prompt

Access: `db.prompt`

```
METHODS:
  db.prompt.findMany({ select, where?, orderBy?, first?, offset? })
  db.prompt.findOne({ id, select })
  db.prompt.create({ data: { entityId, name, content, type, model, version, isActive, tags, embeddingText, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

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
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, content, type, model, version, isActive, tags, embeddingText, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, name, content, type, model, version, isActive, tags, embeddingText, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, name, content, type, model, version, isActive, tags, embeddingText, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, name, content, type, model, version, isActive, tags, embeddingText, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: blueprint

Access: `db.blueprint`

```
METHODS:
  db.blueprint.findMany({ select, where?, orderBy?, first?, offset? })
  db.blueprint.findOne({ id, select })
  db.blueprint.create({ data: { entityId, title, steps, triggerConditions, conversationId, tags, embeddingText, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  title: string
  steps: unknown
  triggerConditions: string
  conversationId: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, steps, triggerConditions, conversationId, tags, embeddingText, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, title, steps, triggerConditions, conversationId, tags, embeddingText, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, title, steps, triggerConditions, conversationId, tags, embeddingText, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, title, steps, triggerConditions, conversationId, tags, embeddingText, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: template

Access: `db.template`

```
METHODS:
  db.template.findMany({ select, where?, orderBy?, first?, offset? })
  db.template.findOne({ id, select })
  db.template.create({ data: { entityId, name, description, type, content, variables, isActive, tags, embeddingText, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

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
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, description, type, content, variables, isActive, tags, embeddingText, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, name, description, type, content, variables, isActive, tags, embeddingText, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, name, description, type, content, variables, isActive, tags, embeddingText, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, name, description, type, content, variables, isActive, tags, embeddingText, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: tool

Access: `db.tool`

```
METHODS:
  db.tool.findMany({ select, where?, orderBy?, first?, offset? })
  db.tool.findOne({ id, select })
  db.tool.create({ data: { entityId, name, description, type, inputSchema, outputSchema, endpoint, authMethod, isActive, tags, embeddingText, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

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
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, description, type, inputSchema, outputSchema, endpoint, authMethod, isActive, tags, embeddingText, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, name, description, type, inputSchema, outputSchema, endpoint, authMethod, isActive, tags, embeddingText, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, name, description, type, inputSchema, outputSchema, endpoint, authMethod, isActive, tags, embeddingText, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, name, description, type, inputSchema, outputSchema, endpoint, authMethod, isActive, tags, embeddingText, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: memory

Access: `db.memory`

```
METHODS:
  db.memory.findMany({ select, where?, orderBy?, first?, offset? })
  db.memory.findOne({ id, select })
  db.memory.create({ data: { entityId, content, memoryType, agentId, importance, verified, source, relatedEntityType, relatedEntityId, tags, embeddingText, embedding, embeddingDistance }, select })
  db.memory.update({ where: { id }, data, select })
  db.memory.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  content: string
  memoryType: string
  agentId: string
  importance: number
  verified: boolean
  source: string
  relatedEntityType: string
  relatedEntityId: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  content: string
  memoryType: string
  agentId: string
  importance: number
  verified: boolean
  source: string
  relatedEntityType: string
  relatedEntityId: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, content, memoryType, agentId, importance, verified, source, relatedEntityType, relatedEntityId, tags, embeddingText, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, content, memoryType, agentId, importance, verified, source, relatedEntityType, relatedEntityId, tags, embeddingText, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, content, memoryType, agentId, importance, verified, source, relatedEntityType, relatedEntityId, tags, embeddingText, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, content, memoryType, agentId, importance, verified, source, relatedEntityType, relatedEntityId, tags, embeddingText, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: recipe

Access: `db.recipe`

```
METHODS:
  db.recipe.findMany({ select, where?, orderBy?, first?, offset? })
  db.recipe.findOne({ id, select })
  db.recipe.create({ data: { entityId, name, description, cuisine, prepTimeMinutes, cookTimeMinutes, servings, difficulty, ingredients, instructions, sourceUrl, imageUrl, tags, embeddingText, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

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
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, description, cuisine, prepTimeMinutes, cookTimeMinutes, servings, difficulty, ingredients, instructions, sourceUrl, imageUrl, tags, embeddingText, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, name, description, cuisine, prepTimeMinutes, cookTimeMinutes, servings, difficulty, ingredients, instructions, sourceUrl, imageUrl, tags, embeddingText, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, name, description, cuisine, prepTimeMinutes, cookTimeMinutes, servings, difficulty, ingredients, instructions, sourceUrl, imageUrl, tags, embeddingText, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, name, description, cuisine, prepTimeMinutes, cookTimeMinutes, servings, difficulty, ingredients, instructions, sourceUrl, imageUrl, tags, embeddingText, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: trip

Access: `db.trip`

```
METHODS:
  db.trip.findMany({ select, where?, orderBy?, first?, offset? })
  db.trip.findOne({ id, select })
  db.trip.create({ data: { entityId, name, destination, startDate, endDate, status, notes, tags, embeddingText, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

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
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, destination, startDate, endDate, status, notes, tags, embeddingText, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, name, destination, startDate, endDate, status, notes, tags, embeddingText, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, name, destination, startDate, endDate, status, notes, tags, embeddingText, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, name, destination, startDate, endDate, status, notes, tags, embeddingText, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: rule

Access: `db.rule`

```
METHODS:
  db.rule.findMany({ select, where?, orderBy?, first?, offset? })
  db.rule.findOne({ id, select })
  db.rule.create({ data: { entityId, title, content, kind, severity, isActive, slug, verification, tags, embeddingText, embedding, triggerConcept, embeddingDistance, triggerConceptDistance }, select })
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
  embeddingDistance: number
  triggerConceptDistance: number

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
  embeddingDistance: number
  triggerConceptDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, content, kind, severity, isActive, slug, verification, tags, embeddingText, embedding, triggerConcept, embeddingDistance, triggerConceptDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, title, content, kind, severity, isActive, slug, verification, tags, embeddingText, embedding, triggerConcept, embeddingDistance, triggerConceptDistance }
  create:   { id, entityId, createdAt, updatedAt, title, content, kind, severity, isActive, slug, verification, tags, embeddingText, embedding, triggerConcept, embeddingDistance, triggerConceptDistance }
  update:   { id, entityId, createdAt, updatedAt, title, content, kind, severity, isActive, slug, verification, tags, embeddingText, embedding, triggerConcept, embeddingDistance, triggerConceptDistance }
  delete:   { id }
```

### MODEL: skill

Access: `db.skill`

```
METHODS:
  db.skill.findMany({ select, where?, orderBy?, first?, offset? })
  db.skill.findOne({ id, select })
  db.skill.create({ data: { entityId, name, slug, description, content, procedure, interface, requirements, filePath, contentHash, category, isActive, tags, embeddingText, embedding, intentTrigger, embeddingDistance, intentTriggerDistance }, select })
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
  filePath: string
  contentHash: string
  category: string
  isActive: boolean
  tags: string[]
  embeddingText: string
  embedding: number[]
  intentTrigger: number[]
  embeddingDistance: number
  intentTriggerDistance: number

EDITABLE FIELDS:
  entityId: string
  name: string
  slug: string
  description: string
  content: string
  procedure: string
  interface: unknown
  requirements: unknown
  filePath: string
  contentHash: string
  category: string
  isActive: boolean
  tags: string[]
  embeddingText: string
  embedding: number[]
  intentTrigger: number[]
  embeddingDistance: number
  intentTriggerDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, slug, description, content, procedure, interface, requirements, filePath, contentHash, category, isActive, tags, embeddingText, embedding, intentTrigger, embeddingDistance, intentTriggerDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, name, slug, description, content, procedure, interface, requirements, filePath, contentHash, category, isActive, tags, embeddingText, embedding, intentTrigger, embeddingDistance, intentTriggerDistance }
  create:   { id, entityId, createdAt, updatedAt, name, slug, description, content, procedure, interface, requirements, filePath, contentHash, category, isActive, tags, embeddingText, embedding, intentTrigger, embeddingDistance, intentTriggerDistance }
  update:   { id, entityId, createdAt, updatedAt, name, slug, description, content, procedure, interface, requirements, filePath, contentHash, category, isActive, tags, embeddingText, embedding, intentTrigger, embeddingDistance, intentTriggerDistance }
  delete:   { id }
```

### MODEL: agent

Access: `db.agent`

```
METHODS:
  db.agent.findMany({ select, where?, orderBy?, first?, offset? })
  db.agent.findOne({ id, select })
  db.agent.create({ data: { entityId, name, role, capabilities, config, status, persona, backstory, communicationStyle, systemPrompt, preferredModel, fallbackModels, temperature, mood, focus, lastActiveAt, embeddingText, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

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
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, role, capabilities, config, status, persona, backstory, communicationStyle, systemPrompt, preferredModel, fallbackModels, temperature, mood, focus, lastActiveAt, embeddingText, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, name, role, capabilities, config, status, persona, backstory, communicationStyle, systemPrompt, preferredModel, fallbackModels, temperature, mood, focus, lastActiveAt, embeddingText, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, name, role, capabilities, config, status, persona, backstory, communicationStyle, systemPrompt, preferredModel, fallbackModels, temperature, mood, focus, lastActiveAt, embeddingText, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, name, role, capabilities, config, status, persona, backstory, communicationStyle, systemPrompt, preferredModel, fallbackModels, temperature, mood, focus, lastActiveAt, embeddingText, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: task

Access: `db.task`

```
METHODS:
  db.task.findMany({ select, where?, orderBy?, first?, offset? })
  db.task.findOne({ id, select })
  db.task.create({ data: { entityId, title, description, status, priority, projectId, taskType, assignedAgentId, parentTaskId, dueDate, completedAt, conversationId, dependencies, tags, embeddingText, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

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
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, description, status, priority, projectId, taskType, assignedAgentId, parentTaskId, dueDate, completedAt, conversationId, dependencies, tags, embeddingText, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, title, description, status, priority, projectId, taskType, assignedAgentId, parentTaskId, dueDate, completedAt, conversationId, dependencies, tags, embeddingText, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, title, description, status, priority, projectId, taskType, assignedAgentId, parentTaskId, dueDate, completedAt, conversationId, dependencies, tags, embeddingText, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, title, description, status, priority, projectId, taskType, assignedAgentId, parentTaskId, dueDate, completedAt, conversationId, dependencies, tags, embeddingText, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: project

Access: `db.project`

```
METHODS:
  db.project.findMany({ select, where?, orderBy?, first?, offset? })
  db.project.findOne({ id, select })
  db.project.create({ data: { entityId, name, description, status, startDate, dueDate, tags, embeddingText, embedding, searchTsv, searchTsvRank, embeddingDistance }, select })
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
  embeddingDistance: number

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
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, description, status, startDate, dueDate, tags, embeddingText, embedding, searchTsv, searchTsvRank, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, name, description, status, startDate, dueDate, tags, embeddingText, embedding, searchTsv, searchTsvRank, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, name, description, status, startDate, dueDate, tags, embeddingText, embedding, searchTsv, searchTsvRank, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, name, description, status, startDate, dueDate, tags, embeddingText, embedding, searchTsv, searchTsvRank, embeddingDistance }
  delete:   { id }
```

### MODEL: document

Access: `db.document`

```
METHODS:
  db.document.findMany({ select, where?, orderBy?, first?, offset? })
  db.document.findOne({ id, select })
  db.document.create({ data: { entityId, title, url, content, sourceType, isRead, savedAt, tags, embeddingText, embedding, searchTsv, searchTsvRank, embeddingDistance }, select })
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
  tags: string[]
  embeddingText: string
  embedding: number[]
  searchTsv: string
  searchTsvRank: number
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  title: string
  url: string
  content: string
  sourceType: string
  isRead: boolean
  savedAt: string
  tags: string[]
  embeddingText: string
  embedding: number[]
  searchTsv: string
  searchTsvRank: number
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, url, content, sourceType, isRead, savedAt, tags, embeddingText, embedding, searchTsv, searchTsvRank, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, title, url, content, sourceType, isRead, savedAt, tags, embeddingText, embedding, searchTsv, searchTsvRank, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, title, url, content, sourceType, isRead, savedAt, tags, embeddingText, embedding, searchTsv, searchTsvRank, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, title, url, content, sourceType, isRead, savedAt, tags, embeddingText, embedding, searchTsv, searchTsvRank, embeddingDistance }
  delete:   { id }
```

### MODEL: company

Access: `db.company`

```
METHODS:
  db.company.findMany({ select, where?, orderBy?, first?, offset? })
  db.company.findOne({ id, select })
  db.company.create({ data: { entityId, name, domain, industry, description, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }, select })
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
  embeddingDistance: number

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
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, domain, industry, description, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, name, domain, industry, description, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, name, domain, industry, description, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, name, domain, industry, description, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }
  delete:   { id }
```

### MODEL: event

Access: `db.event`

```
METHODS:
  db.event.findMany({ select, where?, orderBy?, first?, offset? })
  db.event.findOne({ id, select })
  db.event.create({ data: { entityId, name, eventType, location, city, startedAt, endedAt, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }, select })
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
  embeddingDistance: number

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
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }
  delete:   { id }
```

### MODEL: contact

Access: `db.contact`

```
METHODS:
  db.contact.findMany({ select, where?, orderBy?, first?, offset? })
  db.contact.findOne({ id, select })
  db.contact.create({ data: { entityId, firstName, lastName, email, phone, headline, bio, location, birthday, relationshipType, howWeMet, twitterHandle, linkedinUrl, githubUsername, instagramHandle, website, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }, select })
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
  embeddingDistance: number

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
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, birthday, relationshipType, howWeMet, twitterHandle, linkedinUrl, githubUsername, instagramHandle, website, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, birthday, relationshipType, howWeMet, twitterHandle, linkedinUrl, githubUsername, instagramHandle, website, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, birthday, relationshipType, howWeMet, twitterHandle, linkedinUrl, githubUsername, instagramHandle, website, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, birthday, relationshipType, howWeMet, twitterHandle, linkedinUrl, githubUsername, instagramHandle, website, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }
  delete:   { id }
```

### MODEL: venue

Access: `db.venue`

```
METHODS:
  db.venue.findMany({ select, where?, orderBy?, first?, offset? })
  db.venue.findOne({ id, select })
  db.venue.create({ data: { entityId, name, address, neighborhood, city, category, status, googlePlaceId, rating, priceLevel, isFavorite, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }, select })
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
  embeddingDistance: number

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
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, address, neighborhood, city, category, status, googlePlaceId, rating, priceLevel, isFavorite, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, name, address, neighborhood, city, category, status, googlePlaceId, rating, priceLevel, isFavorite, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, name, address, neighborhood, city, category, status, googlePlaceId, rating, priceLevel, isFavorite, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, name, address, neighborhood, city, category, status, googlePlaceId, rating, priceLevel, isFavorite, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }
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
