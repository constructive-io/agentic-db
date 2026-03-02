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

### MODEL: note

Access: `db.note`

```
METHODS:
  db.note.findMany({ select, where?, orderBy?, first?, offset? })
  db.note.findOne({ id, select })
  db.note.create({ data: { entityId, content, contactId }, select })
  db.note.update({ where: { id }, data, select })
  db.note.delete({ where: { id } })

FIELDS:
  id: string (primary key)
  entityId: string
  createdAt: string
  updatedAt: string
  content: string
  contactId: string

EDITABLE FIELDS:
  entityId: string
  content: string
  contactId: string

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, content, contactId }]
  findOne:  { id, entityId, createdAt, updatedAt, content, contactId }
  create:   { id, entityId, createdAt, updatedAt, content, contactId }
  update:   { id, entityId, createdAt, updatedAt, content, contactId }
  delete:   { id }
```

### MODEL: venue

Access: `db.venue`

```
METHODS:
  db.venue.findMany({ select, where?, orderBy?, first?, offset? })
  db.venue.findOne({ id, select })
  db.venue.create({ data: { entityId, name, neighborhood, city, status, notes }, select })
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

EDITABLE FIELDS:
  entityId: string
  name: string
  neighborhood: string
  city: string
  status: string
  notes: string

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, neighborhood, city, status, notes }]
  findOne:  { id, entityId, createdAt, updatedAt, name, neighborhood, city, status, notes }
  create:   { id, entityId, createdAt, updatedAt, name, neighborhood, city, status, notes }
  update:   { id, entityId, createdAt, updatedAt, name, neighborhood, city, status, notes }
  delete:   { id }
```

### MODEL: contact

Access: `db.contact`

```
METHODS:
  db.contact.findMany({ select, where?, orderBy?, first?, offset? })
  db.contact.findOne({ id, select })
  db.contact.create({ data: { entityId, firstName, lastName, email, phone, headline, bio, location }, select })
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

EDITABLE FIELDS:
  entityId: string
  firstName: string
  lastName: string
  email: string
  phone: string
  headline: string
  bio: string
  location: string

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location }]
  findOne:  { id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location }
  create:   { id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location }
  update:   { id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location }
  delete:   { id }
```

### MODEL: event

Access: `db.event`

```
METHODS:
  db.event.findMany({ select, where?, orderBy?, first?, offset? })
  db.event.findOne({ id, select })
  db.event.create({ data: { entityId, name, eventType, location, city, startedAt, endedAt, notes }, select })
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

EDITABLE FIELDS:
  entityId: string
  name: string
  eventType: string
  location: string
  city: string
  startedAt: string
  endedAt: string
  notes: string

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes }]
  findOne:  { id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes }
  create:   { id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes }
  update:   { id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes }
  delete:   { id }
```

### MODEL: deal

Access: `db.deal`

```
METHODS:
  db.deal.findMany({ select, where?, orderBy?, first?, offset? })
  db.deal.findOne({ id, select })
  db.deal.create({ data: { entityId, name, stage, value, notes }, select })
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

EDITABLE FIELDS:
  entityId: string
  name: string
  stage: string
  value: string
  notes: string

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, stage, value, notes }]
  findOne:  { id, entityId, createdAt, updatedAt, name, stage, value, notes }
  create:   { id, entityId, createdAt, updatedAt, name, stage, value, notes }
  update:   { id, entityId, createdAt, updatedAt, name, stage, value, notes }
  delete:   { id }
```

### MODEL: company

Access: `db.company`

```
METHODS:
  db.company.findMany({ select, where?, orderBy?, first?, offset? })
  db.company.findOne({ id, select })
  db.company.create({ data: { entityId, name, domain, industry, description, test1772427893521, test1772427893568, test1772427893598, embedding, embeddingText }, select })
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
  test1772427893521: number[]
  test1772427893568: number[]
  test1772427893598: number[]
  embedding: number[]
  embeddingText: string

EDITABLE FIELDS:
  entityId: string
  name: string
  domain: string
  industry: string
  description: string
  test1772427893521: number[]
  test1772427893568: number[]
  test1772427893598: number[]
  embedding: number[]
  embeddingText: string

OUTPUT: Promise<JSON>
  findMany: [{ id, entityId, createdAt, updatedAt, name, domain, industry, description, test1772427893521, test1772427893568, test1772427893598, embedding, embeddingText }]
  findOne:  { id, entityId, createdAt, updatedAt, name, domain, industry, description, test1772427893521, test1772427893568, test1772427893598, embedding, embeddingText }
  create:   { id, entityId, createdAt, updatedAt, name, domain, industry, description, test1772427893521, test1772427893568, test1772427893598, embedding, embeddingText }
  update:   { id, entityId, createdAt, updatedAt, name, domain, industry, description, test1772427893521, test1772427893568, test1772427893598, embedding, embeddingText }
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
