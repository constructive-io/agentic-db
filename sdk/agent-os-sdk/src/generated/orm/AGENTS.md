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

### MODEL: company

Access: `db.company`

```
METHODS:
  db.company.findMany({ select, where?, orderBy?, first?, offset? })
  db.company.findOne({ id, select })
  db.company.create({ data: { entityId, name, domain, industry, description, tags, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

EDITABLE FIELDS:
  entityId: string
  name: string
  domain: string
  industry: string
  description: string
  tags: string[]
  embedding: Vector
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, domain, industry, description, tags, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, name, domain, industry, description, tags, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, name, domain, industry, description, tags, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, name, domain, industry, description, tags, embedding, embeddingDistance }
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

### MODEL: venue

Access: `db.venue`

```
METHODS:
  db.venue.findMany({ select, where?, orderBy?, first?, offset? })
  db.venue.findOne({ id, select })
  db.venue.create({ data: { entityId, name, neighborhood, city, status, notes, tags, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, neighborhood, city, status, notes, tags, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, name, neighborhood, city, status, notes, tags, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, name, neighborhood, city, status, notes, tags, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, name, neighborhood, city, status, notes, tags, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: contact

Access: `db.contact`

```
METHODS:
  db.contact.findMany({ select, where?, orderBy?, first?, offset? })
  db.contact.findOne({ id, select })
  db.contact.create({ data: { entityId, firstName, lastName, email, phone, headline, bio, location, tags, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, tags, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, tags, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, tags, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, tags, embedding, embeddingDistance }
  delete:   { id }
```

### MODEL: event

Access: `db.event`

```
METHODS:
  db.event.findMany({ select, where?, orderBy?, first?, offset? })
  db.event.findOne({ id, select })
  db.event.create({ data: { entityId, name, eventType, location, city, startedAt, endedAt, notes, tags, embedding, embeddingDistance }, select })
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
  embeddingDistance: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, tags, embedding, embeddingDistance }]
  findOne:  { id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, tags, embedding, embeddingDistance }
  create:   { id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, tags, embedding, embeddingDistance }
  update:   { id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, tags, embedding, embeddingDistance }
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

### MODEL: task

Access: `db.task`

```
METHODS:
  db.task.findMany({ select, where?, orderBy?, first?, offset? })
  db.task.findOne({ id, select })
  db.task.create({ data: { entityId, title, description, status, priority, tags, embedding, embeddingDistance, bm25DescriptionScore }, select })
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
  bm25DescriptionScore: number

EDITABLE FIELDS:
  entityId: string
  title: string
  description: string
  status: string
  priority: number
  tags: string[]
  embedding: Vector
  embeddingDistance: number
  bm25DescriptionScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, title, description, status, priority, tags, embedding, embeddingDistance, bm25DescriptionScore }]
  findOne:  { id, entityId, createdAt, updatedAt, title, description, status, priority, tags, embedding, embeddingDistance, bm25DescriptionScore }
  create:   { id, entityId, createdAt, updatedAt, title, description, status, priority, tags, embedding, embeddingDistance, bm25DescriptionScore }
  update:   { id, entityId, createdAt, updatedAt, title, description, status, priority, tags, embedding, embeddingDistance, bm25DescriptionScore }
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
  db.note.create({ data: { entityId, content, tags, embedding, contactId, embeddingDistance, bm25ContentScore }, select })
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
  bm25ContentScore: number

EDITABLE FIELDS:
  entityId: string
  content: string
  tags: string[]
  embedding: Vector
  contactId: string
  embeddingDistance: number
  bm25ContentScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, content, tags, embedding, contactId, embeddingDistance, bm25ContentScore }]
  findOne:  { id, entityId, createdAt, updatedAt, content, tags, embedding, contactId, embeddingDistance, bm25ContentScore }
  create:   { id, entityId, createdAt, updatedAt, content, tags, embedding, contactId, embeddingDistance, bm25ContentScore }
  update:   { id, entityId, createdAt, updatedAt, content, tags, embedding, contactId, embeddingDistance, bm25ContentScore }
  delete:   { id }
```

### MODEL: message

Access: `db.message`

```
METHODS:
  db.message.findMany({ select, where?, orderBy?, first?, offset? })
  db.message.findOne({ id, select })
  db.message.create({ data: { entityId, threadId, remoteId, from, to, subject, bodyText, receivedAt, tags, embedding, emailAccountId, embeddingDistance, bm25BodyTextScore }, select })
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
  bm25BodyTextScore: number

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
  bm25BodyTextScore: number

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, threadId, remoteId, from, to, subject, bodyText, receivedAt, tags, embedding, emailAccountId, embeddingDistance, bm25BodyTextScore }]
  findOne:  { id, entityId, createdAt, updatedAt, threadId, remoteId, from, to, subject, bodyText, receivedAt, tags, embedding, emailAccountId, embeddingDistance, bm25BodyTextScore }
  create:   { id, entityId, createdAt, updatedAt, threadId, remoteId, from, to, subject, bodyText, receivedAt, tags, embedding, emailAccountId, embeddingDistance, bm25BodyTextScore }
  update:   { id, entityId, createdAt, updatedAt, threadId, remoteId, from, to, subject, bodyText, receivedAt, tags, embedding, emailAccountId, embeddingDistance, bm25BodyTextScore }
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
