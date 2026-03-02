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

### MODEL: tag

Access: `db.tag`

```
METHODS:
  db.tag.findMany({ select, where?, orderBy?, first?, offset? })
  db.tag.findOne({ id, select })
  db.tag.create({ data: { name }, select })
  db.tag.update({ where: { id }, data, select })
  db.tag.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  name: string

EDITABLE FIELDS:
  name: string

OUTPUT: Promise<JSON>
  findMany: [{ id, name }]
  findOne:  { id, name }
  create:   { id, name }
  update:   { id, name }
  delete:   { id }
```

### MODEL: calendarSync

Access: `db.calendarSync`

```
METHODS:
  db.calendarSync.findMany({ select, where?, orderBy?, first?, offset? })
  db.calendarSync.findOne({ id, select })
  db.calendarSync.create({ data: { entityId, provider, syncToken, lastSyncedAt }, select })
  db.calendarSync.update({ where: { id }, data, select })
  db.calendarSync.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  provider: string
  syncToken: string
  lastSyncedAt: string

EDITABLE FIELDS:
  entityId: string
  provider: string
  syncToken: string
  lastSyncedAt: string

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, provider, syncToken, lastSyncedAt }]
  findOne:  { id, entityId, createdAt, updatedAt, provider, syncToken, lastSyncedAt }
  create:   { id, entityId, createdAt, updatedAt, provider, syncToken, lastSyncedAt }
  update:   { id, entityId, createdAt, updatedAt, provider, syncToken, lastSyncedAt }
  delete:   { id }
```

### MODEL: file

Access: `db.file`

```
METHODS:
  db.file.findMany({ select, where?, orderBy?, first?, offset? })
  db.file.findOne({ id, select })
  db.file.create({ data: { entityId, path, language, hash, repositoryId }, select })
  db.file.update({ where: { id }, data, select })
  db.file.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  path: string
  language: string
  hash: string
  repositoryId: string

EDITABLE FIELDS:
  entityId: string
  path: string
  language: string
  hash: string
  repositoryId: string

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, path, language, hash, repositoryId }]
  findOne:  { id, entityId, createdAt, updatedAt, path, language, hash, repositoryId }
  create:   { id, entityId, createdAt, updatedAt, path, language, hash, repositoryId }
  update:   { id, entityId, createdAt, updatedAt, path, language, hash, repositoryId }
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

### MODEL: executionLog

Access: `db.executionLog`

```
METHODS:
  db.executionLog.findMany({ select, where?, orderBy?, first?, offset? })
  db.executionLog.findOne({ id, select })
  db.executionLog.create({ data: { entityId, stepName, input, output, toolCalls, durationMs, sessionId }, select })
  db.executionLog.update({ where: { id }, data, select })
  db.executionLog.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  stepName: string
  input: string
  output: string
  toolCalls: unknown
  durationMs: number
  sessionId: string

EDITABLE FIELDS:
  entityId: string
  stepName: string
  input: string
  output: string
  toolCalls: unknown
  durationMs: number
  sessionId: string

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, stepName, input, output, toolCalls, durationMs, sessionId }]
  findOne:  { id, entityId, createdAt, updatedAt, stepName, input, output, toolCalls, durationMs, sessionId }
  create:   { id, entityId, createdAt, updatedAt, stepName, input, output, toolCalls, durationMs, sessionId }
  update:   { id, entityId, createdAt, updatedAt, stepName, input, output, toolCalls, durationMs, sessionId }
  delete:   { id }
```

### MODEL: chat

Access: `db.chat`

```
METHODS:
  db.chat.findMany({ select, where?, orderBy?, first?, offset? })
  db.chat.findOne({ id, select })
  db.chat.create({ data: { entityId, title, startedAt, embedding }, select })
  db.chat.update({ where: { id }, data, select })
  db.chat.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  title: string
  startedAt: string
  embedding: Vector

EDITABLE FIELDS:
  entityId: string
  title: string
  startedAt: string
  embedding: Vector

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, startedAt, embedding }]
  findOne:  { id, entityId, createdAt, updatedAt, title, startedAt, embedding }
  create:   { id, entityId, createdAt, updatedAt, title, startedAt, embedding }
  update:   { id, entityId, createdAt, updatedAt, title, startedAt, embedding }
  delete:   { id }
```

### MODEL: company

Access: `db.company`

```
METHODS:
  db.company.findMany({ select, where?, orderBy?, first?, offset? })
  db.company.findOne({ id, select })
  db.company.create({ data: { entityId, name, domain, industry, description, embedding }, select })
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
  embedding: Vector

EDITABLE FIELDS:
  entityId: string
  name: string
  domain: string
  industry: string
  description: string
  embedding: Vector

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, domain, industry, description, embedding }]
  findOne:  { id, entityId, createdAt, updatedAt, name, domain, industry, description, embedding }
  create:   { id, entityId, createdAt, updatedAt, name, domain, industry, description, embedding }
  update:   { id, entityId, createdAt, updatedAt, name, domain, industry, description, embedding }
  delete:   { id }
```

### MODEL: document

Access: `db.document`

```
METHODS:
  db.document.findMany({ select, where?, orderBy?, first?, offset? })
  db.document.findOne({ id, select })
  db.document.create({ data: { entityId, title, url, content, sourceType, embedding }, select })
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
  embedding: Vector

EDITABLE FIELDS:
  entityId: string
  title: string
  url: string
  content: string
  sourceType: string
  embedding: Vector

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, url, content, sourceType, embedding }]
  findOne:  { id, entityId, createdAt, updatedAt, title, url, content, sourceType, embedding }
  create:   { id, entityId, createdAt, updatedAt, title, url, content, sourceType, embedding }
  update:   { id, entityId, createdAt, updatedAt, title, url, content, sourceType, embedding }
  delete:   { id }
```

### MODEL: project

Access: `db.project`

```
METHODS:
  db.project.findMany({ select, where?, orderBy?, first?, offset? })
  db.project.findOne({ id, select })
  db.project.create({ data: { entityId, name, description, status, startDate, dueDate, embedding }, select })
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
  embedding: Vector

EDITABLE FIELDS:
  entityId: string
  name: string
  description: string
  status: string
  startDate: string
  dueDate: string
  embedding: Vector

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, description, status, startDate, dueDate, embedding }]
  findOne:  { id, entityId, createdAt, updatedAt, name, description, status, startDate, dueDate, embedding }
  create:   { id, entityId, createdAt, updatedAt, name, description, status, startDate, dueDate, embedding }
  update:   { id, entityId, createdAt, updatedAt, name, description, status, startDate, dueDate, embedding }
  delete:   { id }
```

### MODEL: repository

Access: `db.repository`

```
METHODS:
  db.repository.findMany({ select, where?, orderBy?, first?, offset? })
  db.repository.findOne({ id, select })
  db.repository.create({ data: { entityId, name, url, description, defaultBranch, lastSyncedAt, embedding }, select })
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
  embedding: Vector

EDITABLE FIELDS:
  entityId: string
  name: string
  url: string
  description: string
  defaultBranch: string
  lastSyncedAt: string
  embedding: Vector

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, url, description, defaultBranch, lastSyncedAt, embedding }]
  findOne:  { id, entityId, createdAt, updatedAt, name, url, description, defaultBranch, lastSyncedAt, embedding }
  create:   { id, entityId, createdAt, updatedAt, name, url, description, defaultBranch, lastSyncedAt, embedding }
  update:   { id, entityId, createdAt, updatedAt, name, url, description, defaultBranch, lastSyncedAt, embedding }
  delete:   { id }
```

### MODEL: session

Access: `db.session`

```
METHODS:
  db.session.findMany({ select, where?, orderBy?, first?, offset? })
  db.session.findOne({ id, select })
  db.session.create({ data: { entityId, title, startedAt, endedAt, status, contextSummary, embedding }, select })
  db.session.update({ where: { id }, data, select })
  db.session.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  title: string
  startedAt: string
  endedAt: string
  status: string
  contextSummary: string
  embedding: Vector

EDITABLE FIELDS:
  entityId: string
  title: string
  startedAt: string
  endedAt: string
  status: string
  contextSummary: string
  embedding: Vector

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, startedAt, endedAt, status, contextSummary, embedding }]
  findOne:  { id, entityId, createdAt, updatedAt, title, startedAt, endedAt, status, contextSummary, embedding }
  create:   { id, entityId, createdAt, updatedAt, title, startedAt, endedAt, status, contextSummary, embedding }
  update:   { id, entityId, createdAt, updatedAt, title, startedAt, endedAt, status, contextSummary, embedding }
  delete:   { id }
```

### MODEL: venue

Access: `db.venue`

```
METHODS:
  db.venue.findMany({ select, where?, orderBy?, first?, offset? })
  db.venue.findOne({ id, select })
  db.venue.create({ data: { entityId, name, neighborhood, city, status, notes, embedding }, select })
  db.venue.update({ where: { id }, data, select })
  db.venue.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  name: string
  neighborhood: string
  city: string
  status: string
  notes: string
  embedding: Vector

EDITABLE FIELDS:
  entityId: string
  name: string
  neighborhood: string
  city: string
  status: string
  notes: string
  embedding: Vector

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, neighborhood, city, status, notes, embedding }]
  findOne:  { id, entityId, createdAt, updatedAt, name, neighborhood, city, status, notes, embedding }
  create:   { id, entityId, createdAt, updatedAt, name, neighborhood, city, status, notes, embedding }
  update:   { id, entityId, createdAt, updatedAt, name, neighborhood, city, status, notes, embedding }
  delete:   { id }
```

### MODEL: task

Access: `db.task`

```
METHODS:
  db.task.findMany({ select, where?, orderBy?, first?, offset? })
  db.task.findOne({ id, select })
  db.task.create({ data: { entityId, title, description, status, priority, embedding }, select })
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
  embedding: Vector

EDITABLE FIELDS:
  entityId: string
  title: string
  description: string
  status: string
  priority: number
  embedding: Vector

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, description, status, priority, embedding }]
  findOne:  { id, entityId, createdAt, updatedAt, title, description, status, priority, embedding }
  create:   { id, entityId, createdAt, updatedAt, title, description, status, priority, embedding }
  update:   { id, entityId, createdAt, updatedAt, title, description, status, priority, embedding }
  delete:   { id }
```

### MODEL: deal

Access: `db.deal`

```
METHODS:
  db.deal.findMany({ select, where?, orderBy?, first?, offset? })
  db.deal.findOne({ id, select })
  db.deal.create({ data: { entityId, name, stage, value, notes, embedding }, select })
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
  notes: string
  embedding: Vector

EDITABLE FIELDS:
  entityId: string
  name: string
  stage: string
  value: string
  notes: string
  embedding: Vector

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, stage, value, notes, embedding }]
  findOne:  { id, entityId, createdAt, updatedAt, name, stage, value, notes, embedding }
  create:   { id, entityId, createdAt, updatedAt, name, stage, value, notes, embedding }
  update:   { id, entityId, createdAt, updatedAt, name, stage, value, notes, embedding }
  delete:   { id }
```

### MODEL: blueprint

Access: `db.blueprint`

```
METHODS:
  db.blueprint.findMany({ select, where?, orderBy?, first?, offset? })
  db.blueprint.findOne({ id, select })
  db.blueprint.create({ data: { entityId, title, steps, triggerConditions, embedding }, select })
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
  embedding: Vector

EDITABLE FIELDS:
  entityId: string
  title: string
  steps: unknown
  triggerConditions: string
  embedding: Vector

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, steps, triggerConditions, embedding }]
  findOne:  { id, entityId, createdAt, updatedAt, title, steps, triggerConditions, embedding }
  create:   { id, entityId, createdAt, updatedAt, title, steps, triggerConditions, embedding }
  update:   { id, entityId, createdAt, updatedAt, title, steps, triggerConditions, embedding }
  delete:   { id }
```

### MODEL: contact

Access: `db.contact`

```
METHODS:
  db.contact.findMany({ select, where?, orderBy?, first?, offset? })
  db.contact.findOne({ id, select })
  db.contact.create({ data: { entityId, firstName, lastName, email, phone, headline, bio, location, embedding }, select })
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
  embedding: Vector

EDITABLE FIELDS:
  entityId: string
  firstName: string
  lastName: string
  email: string
  phone: string
  headline: string
  bio: string
  location: string
  embedding: Vector

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, embedding }]
  findOne:  { id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, embedding }
  create:   { id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, embedding }
  update:   { id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, embedding }
  delete:   { id }
```

### MODEL: event

Access: `db.event`

```
METHODS:
  db.event.findMany({ select, where?, orderBy?, first?, offset? })
  db.event.findOne({ id, select })
  db.event.create({ data: { entityId, name, eventType, location, city, startedAt, endedAt, notes, embedding }, select })
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
  embedding: Vector

EDITABLE FIELDS:
  entityId: string
  name: string
  eventType: string
  location: string
  city: string
  startedAt: string
  endedAt: string
  notes: string
  embedding: Vector

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, embedding }]
  findOne:  { id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, embedding }
  create:   { id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, embedding }
  update:   { id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, embedding }
  delete:   { id }
```

### MODEL: memory

Access: `db.memory`

```
METHODS:
  db.memory.findMany({ select, where?, orderBy?, first?, offset? })
  db.memory.findOne({ id, select })
  db.memory.create({ data: { entityId, content, tags, embedding }, select })
  db.memory.update({ where: { id }, data, select })
  db.memory.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  content: string
  tags: string[]
  embedding: Vector

EDITABLE FIELDS:
  entityId: string
  content: string
  tags: string[]
  embedding: Vector

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, content, tags, embedding }]
  findOne:  { id, entityId, createdAt, updatedAt, content, tags, embedding }
  create:   { id, entityId, createdAt, updatedAt, content, tags, embedding }
  update:   { id, entityId, createdAt, updatedAt, content, tags, embedding }
  delete:   { id }
```

### MODEL: note

Access: `db.note`

```
METHODS:
  db.note.findMany({ select, where?, orderBy?, first?, offset? })
  db.note.findOne({ id, select })
  db.note.create({ data: { entityId, content, embedding, contactId }, select })
  db.note.update({ where: { id }, data, select })
  db.note.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  content: string
  embedding: Vector
  contactId: string

EDITABLE FIELDS:
  entityId: string
  content: string
  embedding: Vector
  contactId: string

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, content, embedding, contactId }]
  findOne:  { id, entityId, createdAt, updatedAt, content, embedding, contactId }
  create:   { id, entityId, createdAt, updatedAt, content, embedding, contactId }
  update:   { id, entityId, createdAt, updatedAt, content, embedding, contactId }
  delete:   { id }
```

### MODEL: milestone

Access: `db.milestone`

```
METHODS:
  db.milestone.findMany({ select, where?, orderBy?, first?, offset? })
  db.milestone.findOne({ id, select })
  db.milestone.create({ data: { entityId, name, dueDate, embedding, projectId }, select })
  db.milestone.update({ where: { id }, data, select })
  db.milestone.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  name: string
  dueDate: string
  embedding: Vector
  projectId: string

EDITABLE FIELDS:
  entityId: string
  name: string
  dueDate: string
  embedding: Vector
  projectId: string

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, dueDate, embedding, projectId }]
  findOne:  { id, entityId, createdAt, updatedAt, name, dueDate, embedding, projectId }
  create:   { id, entityId, createdAt, updatedAt, name, dueDate, embedding, projectId }
  update:   { id, entityId, createdAt, updatedAt, name, dueDate, embedding, projectId }
  delete:   { id }
```

### MODEL: chatMessage

Access: `db.chatMessage`

```
METHODS:
  db.chatMessage.findMany({ select, where?, orderBy?, first?, offset? })
  db.chatMessage.findOne({ id, select })
  db.chatMessage.create({ data: { entityId, role, content, toolCalls, embedding, chatId }, select })
  db.chatMessage.update({ where: { id }, data, select })
  db.chatMessage.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  role: string
  content: string
  toolCalls: unknown
  embedding: Vector
  chatId: string

EDITABLE FIELDS:
  entityId: string
  role: string
  content: string
  toolCalls: unknown
  embedding: Vector
  chatId: string

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, role, content, toolCalls, embedding, chatId }]
  findOne:  { id, entityId, createdAt, updatedAt, role, content, toolCalls, embedding, chatId }
  create:   { id, entityId, createdAt, updatedAt, role, content, toolCalls, embedding, chatId }
  update:   { id, entityId, createdAt, updatedAt, role, content, toolCalls, embedding, chatId }
  delete:   { id }
```

### MODEL: rule

Access: `db.rule`

```
METHODS:
  db.rule.findMany({ select, where?, orderBy?, first?, offset? })
  db.rule.findOne({ id, select })
  db.rule.create({ data: { entityId, title, content, kind, isActive, embedding }, select })
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
  isActive: boolean
  embedding: Vector

EDITABLE FIELDS:
  entityId: string
  title: string
  content: string
  kind: string
  isActive: boolean
  embedding: Vector

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, content, kind, isActive, embedding }]
  findOne:  { id, entityId, createdAt, updatedAt, title, content, kind, isActive, embedding }
  create:   { id, entityId, createdAt, updatedAt, title, content, kind, isActive, embedding }
  update:   { id, entityId, createdAt, updatedAt, title, content, kind, isActive, embedding }
  delete:   { id }
```

### MODEL: skill

Access: `db.skill`

```
METHODS:
  db.skill.findMany({ select, where?, orderBy?, first?, offset? })
  db.skill.findOne({ id, select })
  db.skill.create({ data: { entityId, name, description, content, isActive, embedding }, select })
  db.skill.update({ where: { id }, data, select })
  db.skill.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  name: string
  description: string
  content: string
  isActive: boolean
  embedding: Vector

EDITABLE FIELDS:
  entityId: string
  name: string
  description: string
  content: string
  isActive: boolean
  embedding: Vector

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, description, content, isActive, embedding }]
  findOne:  { id, entityId, createdAt, updatedAt, name, description, content, isActive, embedding }
  create:   { id, entityId, createdAt, updatedAt, name, description, content, isActive, embedding }
  update:   { id, entityId, createdAt, updatedAt, name, description, content, isActive, embedding }
  delete:   { id }
```

### MODEL: chunk

Access: `db.chunk`

```
METHODS:
  db.chunk.findMany({ select, where?, orderBy?, first?, offset? })
  db.chunk.findOne({ id, select })
  db.chunk.create({ data: { entityId, content, startLine, endLine, embedding, fileId, repositoryId }, select })
  db.chunk.update({ where: { id }, data, select })
  db.chunk.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  content: string
  startLine: number
  endLine: number
  embedding: Vector
  fileId: string
  repositoryId: string

EDITABLE FIELDS:
  entityId: string
  content: string
  startLine: number
  endLine: number
  embedding: Vector
  fileId: string
  repositoryId: string

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, content, startLine, endLine, embedding, fileId, repositoryId }]
  findOne:  { id, entityId, createdAt, updatedAt, content, startLine, endLine, embedding, fileId, repositoryId }
  create:   { id, entityId, createdAt, updatedAt, content, startLine, endLine, embedding, fileId, repositoryId }
  update:   { id, entityId, createdAt, updatedAt, content, startLine, endLine, embedding, fileId, repositoryId }
  delete:   { id }
```

### MODEL: message

Access: `db.message`

```
METHODS:
  db.message.findMany({ select, where?, orderBy?, first?, offset? })
  db.message.findOne({ id, select })
  db.message.create({ data: { entityId, threadId, remoteId, from, to, subject, bodyText, receivedAt, embedding, emailAccountId }, select })
  db.message.update({ where: { id }, data, select })
  db.message.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  threadId: string
  remoteId: string
  from: string
  to: string[]
  subject: string
  bodyText: string
  receivedAt: string
  embedding: Vector
  emailAccountId: string

EDITABLE FIELDS:
  entityId: string
  threadId: string
  remoteId: string
  from: string
  to: string[]
  subject: string
  bodyText: string
  receivedAt: string
  embedding: Vector
  emailAccountId: string

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, threadId, remoteId, from, to, subject, bodyText, receivedAt, embedding, emailAccountId }]
  findOne:  { id, entityId, createdAt, updatedAt, threadId, remoteId, from, to, subject, bodyText, receivedAt, embedding, emailAccountId }
  create:   { id, entityId, createdAt, updatedAt, threadId, remoteId, from, to, subject, bodyText, receivedAt, embedding, emailAccountId }
  update:   { id, entityId, createdAt, updatedAt, threadId, remoteId, from, to, subject, bodyText, receivedAt, embedding, emailAccountId }
  delete:   { id }
```

### MODEL: expense

Access: `db.expense`

```
METHODS:
  db.expense.findMany({ select, where?, orderBy?, first?, offset? })
  db.expense.findOne({ id, select })
  db.expense.create({ data: { entityId, amount, currency, date, category, description, merchant, receiptUrl, embedding }, select })
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
  embedding: Vector

EDITABLE FIELDS:
  entityId: string
  amount: string
  currency: string
  date: string
  category: string
  description: string
  merchant: string
  receiptUrl: string
  embedding: Vector

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, amount, currency, date, category, description, merchant, receiptUrl, embedding }]
  findOne:  { id, entityId, createdAt, updatedAt, amount, currency, date, category, description, merchant, receiptUrl, embedding }
  create:   { id, entityId, createdAt, updatedAt, amount, currency, date, category, description, merchant, receiptUrl, embedding }
  update:   { id, entityId, createdAt, updatedAt, amount, currency, date, category, description, merchant, receiptUrl, embedding }
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
