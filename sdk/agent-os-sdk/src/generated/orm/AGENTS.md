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
  db.chat.create({ data: { entityId, title, startedAt, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  title: string
  startedAt: string
  embedding: Vector
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, startedAt, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, title, startedAt, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, title, startedAt, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, title, startedAt, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: project

Access: `db.project`

```
METHODS:
  db.project.findMany({ select, where?, orderBy?, first?, offset? })
  db.project.findOne({ id, select })
  db.project.create({ data: { entityId, name, description, status, startDate, dueDate, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  name: string
  description: string
  status: string
  startDate: string
  dueDate: string
  embedding: Vector
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, description, status, startDate, dueDate, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, name, description, status, startDate, dueDate, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, name, description, status, startDate, dueDate, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, name, description, status, startDate, dueDate, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: repository

Access: `db.repository`

```
METHODS:
  db.repository.findMany({ select, where?, orderBy?, first?, offset? })
  db.repository.findOne({ id, select })
  db.repository.create({ data: { entityId, name, url, description, defaultBranch, lastSyncedAt, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  name: string
  url: string
  description: string
  defaultBranch: string
  lastSyncedAt: string
  embedding: Vector
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, url, description, defaultBranch, lastSyncedAt, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, name, url, description, defaultBranch, lastSyncedAt, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, name, url, description, defaultBranch, lastSyncedAt, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, name, url, description, defaultBranch, lastSyncedAt, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: session

Access: `db.session`

```
METHODS:
  db.session.findMany({ select, where?, orderBy?, first?, offset? })
  db.session.findOne({ id, select })
  db.session.create({ data: { entityId, title, startedAt, endedAt, status, contextSummary, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  title: string
  startedAt: string
  endedAt: string
  status: string
  contextSummary: string
  embedding: Vector
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, startedAt, endedAt, status, contextSummary, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, title, startedAt, endedAt, status, contextSummary, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, title, startedAt, endedAt, status, contextSummary, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, title, startedAt, endedAt, status, contextSummary, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: blueprint

Access: `db.blueprint`

```
METHODS:
  db.blueprint.findMany({ select, where?, orderBy?, first?, offset? })
  db.blueprint.findOne({ id, select })
  db.blueprint.create({ data: { entityId, title, steps, triggerConditions, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  title: string
  steps: unknown
  triggerConditions: string
  embedding: Vector
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, steps, triggerConditions, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, title, steps, triggerConditions, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, title, steps, triggerConditions, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, title, steps, triggerConditions, embedding, embeddingDistance }
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
  embedding: Vector
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  url: string
  meta: unknown
  altText: string
  caption: string
  embedding: Vector
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, url, meta, altText, caption, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, url, meta, altText, caption, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, url, meta, altText, caption, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, url, meta, altText, caption, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: milestone

Access: `db.milestone`

```
METHODS:
  db.milestone.findMany({ select, where?, orderBy?, first?, offset? })
  db.milestone.findOne({ id, select })
  db.milestone.create({ data: { entityId, name, dueDate, embedding, projectId, embeddingDistance }, select })
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
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  name: string
  dueDate: string
  embedding: Vector
  projectId: string
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, dueDate, embedding, projectId, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, name, dueDate, embedding, projectId, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, name, dueDate, embedding, projectId, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, name, dueDate, embedding, projectId, embeddingDistance }
  delete:   { id }
```

### MODEL: chatMessage

Access: `db.chatMessage`

```
METHODS:
  db.chatMessage.findMany({ select, where?, orderBy?, first?, offset? })
  db.chatMessage.findOne({ id, select })
  db.chatMessage.create({ data: { entityId, role, content, toolCalls, embedding, chatId, embeddingDistance }, select })
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
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  role: string
  content: string
  toolCalls: unknown
  embedding: Vector
  chatId: string
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, role, content, toolCalls, embedding, chatId, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, role, content, toolCalls, embedding, chatId, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, role, content, toolCalls, embedding, chatId, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, role, content, toolCalls, embedding, chatId, embeddingDistance }
  delete:   { id }
```

### MODEL: chunk

Access: `db.chunk`

```
METHODS:
  db.chunk.findMany({ select, where?, orderBy?, first?, offset? })
  db.chunk.findOne({ id, select })
  db.chunk.create({ data: { entityId, content, startLine, endLine, embedding, fileId, repositoryId, embeddingDistance }, select })
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
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  content: string
  startLine: number
  endLine: number
  embedding: Vector
  fileId: string
  repositoryId: string
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, content, startLine, endLine, embedding, fileId, repositoryId, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, content, startLine, endLine, embedding, fileId, repositoryId, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, content, startLine, endLine, embedding, fileId, repositoryId, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, content, startLine, endLine, embedding, fileId, repositoryId, embeddingDistance }
  delete:   { id }
```

### MODEL: memory

Access: `db.memory`

```
METHODS:
  db.memory.findMany({ select, where?, orderBy?, first?, offset? })
  db.memory.findOne({ id, select })
  db.memory.create({ data: { entityId, content, tags, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  content: string
  tags: string[]
  embedding: Vector
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, content, tags, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, content, tags, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, content, tags, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, content, tags, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: deal

Access: `db.deal`

```
METHODS:
  db.deal.findMany({ select, where?, orderBy?, first?, offset? })
  db.deal.findOne({ id, select })
  db.deal.create({ data: { entityId, name, stage, value, notes, tags, embedding, embeddingDistance }, select })
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
  tags: string[]
  embedding: Vector
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  name: string
  stage: string
  value: string
  notes: string
  tags: string[]
  embedding: Vector
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, stage, value, notes, tags, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, name, stage, value, notes, tags, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, name, stage, value, notes, tags, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, name, stage, value, notes, tags, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: document

Access: `db.document`

```
METHODS:
  db.document.findMany({ select, where?, orderBy?, first?, offset? })
  db.document.findOne({ id, select })
  db.document.create({ data: { entityId, title, url, content, sourceType, tags, embedding, embeddingDistance }, select })
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
  tags: string[]
  embedding: Vector
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  title: string
  url: string
  content: string
  sourceType: string
  tags: string[]
  embedding: Vector
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, url, content, sourceType, tags, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, title, url, content, sourceType, tags, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, title, url, content, sourceType, tags, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, title, url, content, sourceType, tags, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: task

Access: `db.task`

```
METHODS:
  db.task.findMany({ select, where?, orderBy?, first?, offset? })
  db.task.findOne({ id, select })
  db.task.create({ data: { entityId, title, description, status, priority, tags, embedding, embeddingDistance }, select })
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
  tags: string[]
  embedding: Vector
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  title: string
  description: string
  status: string
  priority: number
  tags: string[]
  embedding: Vector
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, description, status, priority, tags, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, title, description, status, priority, tags, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, title, description, status, priority, tags, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, title, description, status, priority, tags, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: rule

Access: `db.rule`

```
METHODS:
  db.rule.findMany({ select, where?, orderBy?, first?, offset? })
  db.rule.findOne({ id, select })
  db.rule.create({ data: { entityId, title, content, kind, isActive, tags, embedding, embeddingDistance }, select })
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
  tags: string[]
  embedding: Vector
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  title: string
  content: string
  kind: string
  isActive: boolean
  tags: string[]
  embedding: Vector
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, content, kind, isActive, tags, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, title, content, kind, isActive, tags, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, title, content, kind, isActive, tags, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, title, content, kind, isActive, tags, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: skill

Access: `db.skill`

```
METHODS:
  db.skill.findMany({ select, where?, orderBy?, first?, offset? })
  db.skill.findOne({ id, select })
  db.skill.create({ data: { entityId, name, description, content, isActive, tags, embedding, embeddingDistance }, select })
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
  tags: string[]
  embedding: Vector
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  name: string
  description: string
  content: string
  isActive: boolean
  tags: string[]
  embedding: Vector
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, description, content, isActive, tags, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, name, description, content, isActive, tags, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, name, description, content, isActive, tags, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, name, description, content, isActive, tags, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: expense

Access: `db.expense`

```
METHODS:
  db.expense.findMany({ select, where?, orderBy?, first?, offset? })
  db.expense.findOne({ id, select })
  db.expense.create({ data: { entityId, amount, currency, date, category, description, merchant, receiptUrl, tags, embedding, embeddingDistance }, select })
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
  tags: string[]
  embedding: Vector
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  amount: string
  currency: string
  date: string
  category: string
  description: string
  merchant: string
  receiptUrl: string
  tags: string[]
  embedding: Vector
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, amount, currency, date, category, description, merchant, receiptUrl, tags, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, amount, currency, date, category, description, merchant, receiptUrl, tags, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, amount, currency, date, category, description, merchant, receiptUrl, tags, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, amount, currency, date, category, description, merchant, receiptUrl, tags, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: note

Access: `db.note`

```
METHODS:
  db.note.findMany({ select, where?, orderBy?, first?, offset? })
  db.note.findOne({ id, select })
  db.note.create({ data: { entityId, content, tags, embedding, contactId, embeddingDistance }, select })
  db.note.update({ where: { id }, data, select })
  db.note.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  content: string
  tags: string[]
  embedding: Vector
  contactId: string
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  content: string
  tags: string[]
  embedding: Vector
  contactId: string
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, content, tags, embedding, contactId, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, content, tags, embedding, contactId, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, content, tags, embedding, contactId, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, content, tags, embedding, contactId, embeddingDistance }
  delete:   { id }
```

### MODEL: message

Access: `db.message`

```
METHODS:
  db.message.findMany({ select, where?, orderBy?, first?, offset? })
  db.message.findOne({ id, select })
  db.message.create({ data: { entityId, threadId, remoteId, from, to, subject, bodyText, receivedAt, tags, embedding, emailAccountId, embeddingDistance }, select })
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
  tags: string[]
  embedding: Vector
  emailAccountId: string
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  threadId: string
  remoteId: string
  from: string
  to: string[]
  subject: string
  bodyText: string
  receivedAt: string
  tags: string[]
  embedding: Vector
  emailAccountId: string
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, threadId, remoteId, from, to, subject, bodyText, receivedAt, tags, embedding, emailAccountId, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, threadId, remoteId, from, to, subject, bodyText, receivedAt, tags, embedding, emailAccountId, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, threadId, remoteId, from, to, subject, bodyText, receivedAt, tags, embedding, emailAccountId, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, threadId, remoteId, from, to, subject, bodyText, receivedAt, tags, embedding, emailAccountId, embeddingDistance }
  delete:   { id }
```

### MODEL: company

Access: `db.company`

```
METHODS:
  db.company.findMany({ select, where?, orderBy?, first?, offset? })
  db.company.findOne({ id, select })
  db.company.create({ data: { entityId, name, domain, industry, description, tags, embedding, mainImageId, imageId, embeddingDistance }, select })
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
  embedding: Vector
  mainImageId: string
  imageId: string
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  name: string
  domain: string
  industry: string
  description: string
  tags: string[]
  embedding: Vector
  mainImageId: string
  imageId: string
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, domain, industry, description, tags, embedding, mainImageId, imageId, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, name, domain, industry, description, tags, embedding, mainImageId, imageId, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, name, domain, industry, description, tags, embedding, mainImageId, imageId, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, name, domain, industry, description, tags, embedding, mainImageId, imageId, embeddingDistance }
  delete:   { id }
```

### MODEL: venue

Access: `db.venue`

```
METHODS:
  db.venue.findMany({ select, where?, orderBy?, first?, offset? })
  db.venue.findOne({ id, select })
  db.venue.create({ data: { entityId, name, neighborhood, city, status, notes, tags, embedding, mainImageId, imageId, embeddingDistance }, select })
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
  tags: string[]
  embedding: Vector
  mainImageId: string
  imageId: string
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  name: string
  neighborhood: string
  city: string
  status: string
  notes: string
  tags: string[]
  embedding: Vector
  mainImageId: string
  imageId: string
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, neighborhood, city, status, notes, tags, embedding, mainImageId, imageId, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, name, neighborhood, city, status, notes, tags, embedding, mainImageId, imageId, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, name, neighborhood, city, status, notes, tags, embedding, mainImageId, imageId, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, name, neighborhood, city, status, notes, tags, embedding, mainImageId, imageId, embeddingDistance }
  delete:   { id }
```

### MODEL: contact

Access: `db.contact`

```
METHODS:
  db.contact.findMany({ select, where?, orderBy?, first?, offset? })
  db.contact.findOne({ id, select })
  db.contact.create({ data: { entityId, firstName, lastName, email, phone, headline, bio, location, tags, embedding, mainImageId, imageId, embeddingDistance }, select })
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
  tags: string[]
  embedding: Vector
  mainImageId: string
  imageId: string
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
  tags: string[]
  embedding: Vector
  mainImageId: string
  imageId: string
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, tags, embedding, mainImageId, imageId, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, tags, embedding, mainImageId, imageId, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, tags, embedding, mainImageId, imageId, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, tags, embedding, mainImageId, imageId, embeddingDistance }
  delete:   { id }
```

### MODEL: event

Access: `db.event`

```
METHODS:
  db.event.findMany({ select, where?, orderBy?, first?, offset? })
  db.event.findOne({ id, select })
  db.event.create({ data: { entityId, name, eventType, location, city, startedAt, endedAt, notes, tags, embedding, mainImageId, imageId, embeddingDistance }, select })
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
  embedding: Vector
  mainImageId: string
  imageId: string
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
  embedding: Vector
  mainImageId: string
  imageId: string
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, tags, embedding, mainImageId, imageId, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, tags, embedding, mainImageId, imageId, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, tags, embedding, mainImageId, imageId, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, tags, embedding, mainImageId, imageId, embeddingDistance }
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
