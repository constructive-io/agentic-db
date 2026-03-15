# agentic-db CLI - Agent Reference

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->
> This document is structured for LLM/agent consumption.

## OVERVIEW

`agentic-db` is a CLI tool for interacting with a GraphQL API.
All commands output JSON to stdout. All commands accept `--help` or `-h` for usage.
Configuration is stored at `~/.agentic-db/config/` via appstash.

## PREREQUISITES

Before running any data commands, you must:

1. Create a context: `agentic-db context create <name> --endpoint <url>`
2. Activate it: `agentic-db context use <name>`
3. Authenticate: `agentic-db auth set-token <token>`

## TOOLS

### TOOL: context

Manage named API endpoint contexts (like kubectl contexts).

```
SUBCOMMANDS:
  agentic-db context create <name> --endpoint <url>   Create a new context
  agentic-db context list                              List all contexts
  agentic-db context use <name>                        Set active context
  agentic-db context current                           Show active context
  agentic-db context delete <name>                     Delete a context

INPUT:
  name:     string (required) - Context identifier
  endpoint: string (required for create) - GraphQL endpoint URL

OUTPUT: JSON
  create:  { name, endpoint }
  list:    [{ name, endpoint, isCurrent, hasCredentials }]
  use:     { name, endpoint }
  current: { name, endpoint }
  delete:  { deleted: name }
```

### TOOL: auth

Manage authentication tokens per context.

```
SUBCOMMANDS:
  agentic-db auth set-token <token>   Store bearer token for current context
  agentic-db auth status               Show auth status for all contexts
  agentic-db auth logout                Remove credentials for current context

INPUT:
  token: string (required for set-token) - Bearer token value

OUTPUT: JSON
  set-token: { context, status: "authenticated" }
  status:    [{ context, authenticated: boolean }]
  logout:    { context, status: "logged out" }
```

### TOOL: company-image

CRUD operations for CompanyImage records.

```
SUBCOMMANDS:
  agentic-db company-image list                               List all records
  agentic-db company-image get --id <value>              Get one record
  agentic-db company-image create --companyId <value> --imageId <value> --entityId <value>
  agentic-db company-image update --id <value> [--companyId <value>] [--imageId <value>] [--entityId <value>]
  agentic-db company-image delete --id <value>           Delete one record

INPUT FIELDS:
  companyId: UUID
  imageId: UUID
  id: UUID (primary key)
  entityId: UUID

EDITABLE FIELDS (for create/update):
  companyId: UUID
  imageId: UUID
  entityId: UUID

OUTPUT: JSON
  list:   [{ companyId, imageId, id, entityId }]
  get:    { companyId, imageId, id, entityId }
  create: { companyId, imageId, id, entityId }
  update: { companyId, imageId, id, entityId }
  delete: { id }
```

### TOOL: contact-company

CRUD operations for ContactCompany records.

```
SUBCOMMANDS:
  agentic-db contact-company list                               List all records
  agentic-db contact-company get --id <value>              Get one record
  agentic-db contact-company create --contactId <value> --companyId <value> --entityId <value>
  agentic-db contact-company update --id <value> [--contactId <value>] [--companyId <value>] [--entityId <value>]
  agentic-db contact-company delete --id <value>           Delete one record

INPUT FIELDS:
  contactId: UUID
  companyId: UUID
  id: UUID (primary key)
  entityId: UUID

EDITABLE FIELDS (for create/update):
  contactId: UUID
  companyId: UUID
  entityId: UUID

OUTPUT: JSON
  list:   [{ contactId, companyId, id, entityId }]
  get:    { contactId, companyId, id, entityId }
  create: { contactId, companyId, id, entityId }
  update: { contactId, companyId, id, entityId }
  delete: { id }
```

### TOOL: contact-event

CRUD operations for ContactEvent records.

```
SUBCOMMANDS:
  agentic-db contact-event list                               List all records
  agentic-db contact-event get --id <value>              Get one record
  agentic-db contact-event create --contactId <value> --eventId <value> --entityId <value>
  agentic-db contact-event update --id <value> [--contactId <value>] [--eventId <value>] [--entityId <value>]
  agentic-db contact-event delete --id <value>           Delete one record

INPUT FIELDS:
  contactId: UUID
  eventId: UUID
  id: UUID (primary key)
  entityId: UUID

EDITABLE FIELDS (for create/update):
  contactId: UUID
  eventId: UUID
  entityId: UUID

OUTPUT: JSON
  list:   [{ contactId, eventId, id, entityId }]
  get:    { contactId, eventId, id, entityId }
  create: { contactId, eventId, id, entityId }
  update: { contactId, eventId, id, entityId }
  delete: { id }
```

### TOOL: contact-image

CRUD operations for ContactImage records.

```
SUBCOMMANDS:
  agentic-db contact-image list                               List all records
  agentic-db contact-image get --id <value>              Get one record
  agentic-db contact-image create --contactId <value> --imageId <value> --entityId <value>
  agentic-db contact-image update --id <value> [--contactId <value>] [--imageId <value>] [--entityId <value>]
  agentic-db contact-image delete --id <value>           Delete one record

INPUT FIELDS:
  contactId: UUID
  imageId: UUID
  id: UUID (primary key)
  entityId: UUID

EDITABLE FIELDS (for create/update):
  contactId: UUID
  imageId: UUID
  entityId: UUID

OUTPUT: JSON
  list:   [{ contactId, imageId, id, entityId }]
  get:    { contactId, imageId, id, entityId }
  create: { contactId, imageId, id, entityId }
  update: { contactId, imageId, id, entityId }
  delete: { id }
```

### TOOL: deal-contact

CRUD operations for DealContact records.

```
SUBCOMMANDS:
  agentic-db deal-contact list                               List all records
  agentic-db deal-contact get --id <value>              Get one record
  agentic-db deal-contact create --dealId <value> --contactId <value> --entityId <value>
  agentic-db deal-contact update --id <value> [--dealId <value>] [--contactId <value>] [--entityId <value>]
  agentic-db deal-contact delete --id <value>           Delete one record

INPUT FIELDS:
  dealId: UUID
  contactId: UUID
  id: UUID (primary key)
  entityId: UUID

EDITABLE FIELDS (for create/update):
  dealId: UUID
  contactId: UUID
  entityId: UUID

OUTPUT: JSON
  list:   [{ dealId, contactId, id, entityId }]
  get:    { dealId, contactId, id, entityId }
  create: { dealId, contactId, id, entityId }
  update: { dealId, contactId, id, entityId }
  delete: { id }
```

### TOOL: event-image

CRUD operations for EventImage records.

```
SUBCOMMANDS:
  agentic-db event-image list                               List all records
  agentic-db event-image get --id <value>              Get one record
  agentic-db event-image create --eventId <value> --imageId <value> --entityId <value>
  agentic-db event-image update --id <value> [--eventId <value>] [--imageId <value>] [--entityId <value>]
  agentic-db event-image delete --id <value>           Delete one record

INPUT FIELDS:
  eventId: UUID
  imageId: UUID
  id: UUID (primary key)
  entityId: UUID

EDITABLE FIELDS (for create/update):
  eventId: UUID
  imageId: UUID
  entityId: UUID

OUTPUT: JSON
  list:   [{ eventId, imageId, id, entityId }]
  get:    { eventId, imageId, id, entityId }
  create: { eventId, imageId, id, entityId }
  update: { eventId, imageId, id, entityId }
  delete: { id }
```

### TOOL: event-venue

CRUD operations for EventVenue records.

```
SUBCOMMANDS:
  agentic-db event-venue list                               List all records
  agentic-db event-venue get --id <value>              Get one record
  agentic-db event-venue create --eventId <value> --venueId <value> --entityId <value>
  agentic-db event-venue update --id <value> [--eventId <value>] [--venueId <value>] [--entityId <value>]
  agentic-db event-venue delete --id <value>           Delete one record

INPUT FIELDS:
  eventId: UUID
  venueId: UUID
  id: UUID (primary key)
  entityId: UUID

EDITABLE FIELDS (for create/update):
  eventId: UUID
  venueId: UUID
  entityId: UUID

OUTPUT: JSON
  list:   [{ eventId, venueId, id, entityId }]
  get:    { eventId, venueId, id, entityId }
  create: { eventId, venueId, id, entityId }
  update: { eventId, venueId, id, entityId }
  delete: { id }
```

### TOOL: venue-image

CRUD operations for VenueImage records.

```
SUBCOMMANDS:
  agentic-db venue-image list                               List all records
  agentic-db venue-image get --id <value>              Get one record
  agentic-db venue-image create --venueId <value> --imageId <value> --entityId <value>
  agentic-db venue-image update --id <value> [--venueId <value>] [--imageId <value>] [--entityId <value>]
  agentic-db venue-image delete --id <value>           Delete one record

INPUT FIELDS:
  venueId: UUID
  imageId: UUID
  id: UUID (primary key)
  entityId: UUID

EDITABLE FIELDS (for create/update):
  venueId: UUID
  imageId: UUID
  entityId: UUID

OUTPUT: JSON
  list:   [{ venueId, imageId, id, entityId }]
  get:    { venueId, imageId, id, entityId }
  create: { venueId, imageId, id, entityId }
  update: { venueId, imageId, id, entityId }
  delete: { id }
```

### TOOL: calendar-sync

CRUD operations for CalendarSync records.

```
SUBCOMMANDS:
  agentic-db calendar-sync list                               List all records
  agentic-db calendar-sync get --id <value>              Get one record
  agentic-db calendar-sync create --entityId <value> --provider <value> --syncToken <value> --lastSyncedAt <value>
  agentic-db calendar-sync update --id <value> [--entityId <value>] [--provider <value>] [--syncToken <value>] [--lastSyncedAt <value>]
  agentic-db calendar-sync delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  provider: String
  syncToken: String
  lastSyncedAt: Datetime

EDITABLE FIELDS (for create/update):
  entityId: UUID
  provider: String
  syncToken: String
  lastSyncedAt: Datetime

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, provider, syncToken, lastSyncedAt }]
  get:    { id, entityId, createdAt, updatedAt, provider, syncToken, lastSyncedAt }
  create: { id, entityId, createdAt, updatedAt, provider, syncToken, lastSyncedAt }
  update: { id, entityId, createdAt, updatedAt, provider, syncToken, lastSyncedAt }
  delete: { id }
```

### TOOL: file

CRUD operations for File records.

```
SUBCOMMANDS:
  agentic-db file list                               List all records
  agentic-db file get --id <value>              Get one record
  agentic-db file create --entityId <value> --path <value> --language <value> --hash <value> --repositoryId <value>
  agentic-db file update --id <value> [--entityId <value>] [--path <value>] [--language <value>] [--hash <value>] [--repositoryId <value>]
  agentic-db file delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  path: String
  language: String
  hash: String
  repositoryId: UUID

EDITABLE FIELDS (for create/update):
  entityId: UUID
  path: String
  language: String
  hash: String
  repositoryId: UUID

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, path, language, hash, repositoryId }]
  get:    { id, entityId, createdAt, updatedAt, path, language, hash, repositoryId }
  create: { id, entityId, createdAt, updatedAt, path, language, hash, repositoryId }
  update: { id, entityId, createdAt, updatedAt, path, language, hash, repositoryId }
  delete: { id }
```

### TOOL: email-account

CRUD operations for EmailAccount records.

```
SUBCOMMANDS:
  agentic-db email-account list                               List all records
  agentic-db email-account get --id <value>              Get one record
  agentic-db email-account create --entityId <value> --email <value> --provider <value> --syncState <value>
  agentic-db email-account update --id <value> [--entityId <value>] [--email <value>] [--provider <value>] [--syncState <value>]
  agentic-db email-account delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  email: String
  provider: String
  syncState: JSON

EDITABLE FIELDS (for create/update):
  entityId: UUID
  email: String
  provider: String
  syncState: JSON

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, email, provider, syncState }]
  get:    { id, entityId, createdAt, updatedAt, email, provider, syncState }
  create: { id, entityId, createdAt, updatedAt, email, provider, syncState }
  update: { id, entityId, createdAt, updatedAt, email, provider, syncState }
  delete: { id }
```

### TOOL: message

CRUD operations for Message records.

```
SUBCOMMANDS:
  agentic-db message list                               List all records
  agentic-db message get --id <value>              Get one record
  agentic-db message create --entityId <value> --threadId <value> --remoteId <value> --from <value> --to <value> --subject <value> --bodyText <value> --receivedAt <value> --tags <value> --embedding <value> --emailAccountId <value> --embeddingDistance <value>
  agentic-db message update --id <value> [--entityId <value>] [--threadId <value>] [--remoteId <value>] [--from <value>] [--to <value>] [--subject <value>] [--bodyText <value>] [--receivedAt <value>] [--tags <value>] [--embedding <value>] [--emailAccountId <value>] [--embeddingDistance <value>]
  agentic-db message delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  threadId: String
  remoteId: String
  from: String
  to: String
  subject: String
  bodyText: String
  receivedAt: Datetime
  tags: String
  embedding: Vector
  emailAccountId: UUID
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  threadId: String
  remoteId: String
  from: String
  to: String
  subject: String
  bodyText: String
  receivedAt: Datetime
  tags: String
  embedding: Vector
  emailAccountId: UUID
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, threadId, remoteId, from, to, subject, bodyText, receivedAt, tags, embedding, emailAccountId, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, threadId, remoteId, from, to, subject, bodyText, receivedAt, tags, embedding, emailAccountId, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, threadId, remoteId, from, to, subject, bodyText, receivedAt, tags, embedding, emailAccountId, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, threadId, remoteId, from, to, subject, bodyText, receivedAt, tags, embedding, emailAccountId, embeddingDistance }
  delete: { id }
```

### TOOL: execution-log

CRUD operations for ExecutionLog records.

```
SUBCOMMANDS:
  agentic-db execution-log list                               List all records
  agentic-db execution-log get --id <value>              Get one record
  agentic-db execution-log create --entityId <value> --stepName <value> --input <value> --output <value> --toolCalls <value> --durationMs <value> --sessionId <value>
  agentic-db execution-log update --id <value> [--entityId <value>] [--stepName <value>] [--input <value>] [--output <value>] [--toolCalls <value>] [--durationMs <value>] [--sessionId <value>]
  agentic-db execution-log delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  stepName: String
  input: String
  output: String
  toolCalls: JSON
  durationMs: Int
  sessionId: UUID

EDITABLE FIELDS (for create/update):
  entityId: UUID
  stepName: String
  input: String
  output: String
  toolCalls: JSON
  durationMs: Int
  sessionId: UUID

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, stepName, input, output, toolCalls, durationMs, sessionId }]
  get:    { id, entityId, createdAt, updatedAt, stepName, input, output, toolCalls, durationMs, sessionId }
  create: { id, entityId, createdAt, updatedAt, stepName, input, output, toolCalls, durationMs, sessionId }
  update: { id, entityId, createdAt, updatedAt, stepName, input, output, toolCalls, durationMs, sessionId }
  delete: { id }
```

### TOOL: chat

CRUD operations for Chat records.

```
SUBCOMMANDS:
  agentic-db chat list                               List all records
  agentic-db chat get --id <value>              Get one record
  agentic-db chat create --entityId <value> --title <value> --startedAt <value> --embedding <value> --embeddingDistance <value>
  agentic-db chat update --id <value> [--entityId <value>] [--title <value>] [--startedAt <value>] [--embedding <value>] [--embeddingDistance <value>]
  agentic-db chat delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  title: String
  startedAt: Datetime
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  title: String
  startedAt: Datetime
  embedding: Vector
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, startedAt, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, title, startedAt, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, title, startedAt, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, title, startedAt, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: project

CRUD operations for Project records.

```
SUBCOMMANDS:
  agentic-db project list                               List all records
  agentic-db project get --id <value>              Get one record
  agentic-db project create --entityId <value> --name <value> --description <value> --status <value> --startDate <value> --dueDate <value> --embedding <value> --embeddingDistance <value>
  agentic-db project update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--status <value>] [--startDate <value>] [--dueDate <value>] [--embedding <value>] [--embeddingDistance <value>]
  agentic-db project delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  name: String
  description: String
  status: String
  startDate: Datetime
  dueDate: Datetime
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  description: String
  status: String
  startDate: Datetime
  dueDate: Datetime
  embedding: Vector
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, description, status, startDate, dueDate, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, name, description, status, startDate, dueDate, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, name, description, status, startDate, dueDate, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, name, description, status, startDate, dueDate, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: repository

CRUD operations for Repository records.

```
SUBCOMMANDS:
  agentic-db repository list                               List all records
  agentic-db repository get --id <value>              Get one record
  agentic-db repository create --entityId <value> --name <value> --url <value> --description <value> --defaultBranch <value> --lastSyncedAt <value> --embedding <value> --embeddingDistance <value>
  agentic-db repository update --id <value> [--entityId <value>] [--name <value>] [--url <value>] [--description <value>] [--defaultBranch <value>] [--lastSyncedAt <value>] [--embedding <value>] [--embeddingDistance <value>]
  agentic-db repository delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  name: String
  url: String
  description: String
  defaultBranch: String
  lastSyncedAt: Datetime
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  url: String
  description: String
  defaultBranch: String
  lastSyncedAt: Datetime
  embedding: Vector
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, url, description, defaultBranch, lastSyncedAt, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, name, url, description, defaultBranch, lastSyncedAt, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, name, url, description, defaultBranch, lastSyncedAt, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, name, url, description, defaultBranch, lastSyncedAt, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: session

CRUD operations for Session records.

```
SUBCOMMANDS:
  agentic-db session list                               List all records
  agentic-db session get --id <value>              Get one record
  agentic-db session create --entityId <value> --title <value> --startedAt <value> --endedAt <value> --status <value> --contextSummary <value> --embedding <value> --embeddingDistance <value>
  agentic-db session update --id <value> [--entityId <value>] [--title <value>] [--startedAt <value>] [--endedAt <value>] [--status <value>] [--contextSummary <value>] [--embedding <value>] [--embeddingDistance <value>]
  agentic-db session delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  title: String
  startedAt: Datetime
  endedAt: Datetime
  status: String
  contextSummary: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  title: String
  startedAt: Datetime
  endedAt: Datetime
  status: String
  contextSummary: String
  embedding: Vector
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, startedAt, endedAt, status, contextSummary, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, title, startedAt, endedAt, status, contextSummary, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, title, startedAt, endedAt, status, contextSummary, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, title, startedAt, endedAt, status, contextSummary, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: blueprint

CRUD operations for Blueprint records.

```
SUBCOMMANDS:
  agentic-db blueprint list                               List all records
  agentic-db blueprint get --id <value>              Get one record
  agentic-db blueprint create --entityId <value> --title <value> --steps <value> --triggerConditions <value> --embedding <value> --embeddingDistance <value>
  agentic-db blueprint update --id <value> [--entityId <value>] [--title <value>] [--steps <value>] [--triggerConditions <value>] [--embedding <value>] [--embeddingDistance <value>]
  agentic-db blueprint delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  title: String
  steps: JSON
  triggerConditions: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  title: String
  steps: JSON
  triggerConditions: String
  embedding: Vector
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, steps, triggerConditions, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, title, steps, triggerConditions, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, title, steps, triggerConditions, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, title, steps, triggerConditions, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: image

CRUD operations for Image records.

```
SUBCOMMANDS:
  agentic-db image list                               List all records
  agentic-db image get --id <value>              Get one record
  agentic-db image create --entityId <value> --url <value> --meta <value> --altText <value> --caption <value> --embedding <value> --embeddingDistance <value>
  agentic-db image update --id <value> [--entityId <value>] [--url <value>] [--meta <value>] [--altText <value>] [--caption <value>] [--embedding <value>] [--embeddingDistance <value>]
  agentic-db image delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  url: String
  meta: JSON
  altText: String
  caption: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  url: String
  meta: JSON
  altText: String
  caption: String
  embedding: Vector
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, url, meta, altText, caption, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, url, meta, altText, caption, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, url, meta, altText, caption, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, url, meta, altText, caption, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: milestone

CRUD operations for Milestone records.

```
SUBCOMMANDS:
  agentic-db milestone list                               List all records
  agentic-db milestone get --id <value>              Get one record
  agentic-db milestone create --entityId <value> --name <value> --dueDate <value> --embedding <value> --projectId <value> --embeddingDistance <value>
  agentic-db milestone update --id <value> [--entityId <value>] [--name <value>] [--dueDate <value>] [--embedding <value>] [--projectId <value>] [--embeddingDistance <value>]
  agentic-db milestone delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  name: String
  dueDate: Datetime
  embedding: Vector
  projectId: UUID
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  dueDate: Datetime
  embedding: Vector
  projectId: UUID
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, dueDate, embedding, projectId, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, name, dueDate, embedding, projectId, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, name, dueDate, embedding, projectId, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, name, dueDate, embedding, projectId, embeddingDistance }
  delete: { id }
```

### TOOL: chat-message

CRUD operations for ChatMessage records.

```
SUBCOMMANDS:
  agentic-db chat-message list                               List all records
  agentic-db chat-message get --id <value>              Get one record
  agentic-db chat-message create --entityId <value> --role <value> --content <value> --toolCalls <value> --embedding <value> --chatId <value> --embeddingDistance <value>
  agentic-db chat-message update --id <value> [--entityId <value>] [--role <value>] [--content <value>] [--toolCalls <value>] [--embedding <value>] [--chatId <value>] [--embeddingDistance <value>]
  agentic-db chat-message delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  role: String
  content: String
  toolCalls: JSON
  embedding: Vector
  chatId: UUID
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  role: String
  content: String
  toolCalls: JSON
  embedding: Vector
  chatId: UUID
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, role, content, toolCalls, embedding, chatId, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, role, content, toolCalls, embedding, chatId, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, role, content, toolCalls, embedding, chatId, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, role, content, toolCalls, embedding, chatId, embeddingDistance }
  delete: { id }
```

### TOOL: chunk

CRUD operations for Chunk records.

```
SUBCOMMANDS:
  agentic-db chunk list                               List all records
  agentic-db chunk get --id <value>              Get one record
  agentic-db chunk create --entityId <value> --content <value> --startLine <value> --endLine <value> --embedding <value> --fileId <value> --repositoryId <value> --embeddingDistance <value>
  agentic-db chunk update --id <value> [--entityId <value>] [--content <value>] [--startLine <value>] [--endLine <value>] [--embedding <value>] [--fileId <value>] [--repositoryId <value>] [--embeddingDistance <value>]
  agentic-db chunk delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  content: String
  startLine: Int
  endLine: Int
  embedding: Vector
  fileId: UUID
  repositoryId: UUID
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  content: String
  startLine: Int
  endLine: Int
  embedding: Vector
  fileId: UUID
  repositoryId: UUID
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, content, startLine, endLine, embedding, fileId, repositoryId, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, content, startLine, endLine, embedding, fileId, repositoryId, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, content, startLine, endLine, embedding, fileId, repositoryId, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, content, startLine, endLine, embedding, fileId, repositoryId, embeddingDistance }
  delete: { id }
```

### TOOL: memory

CRUD operations for Memory records.

```
SUBCOMMANDS:
  agentic-db memory list                               List all records
  agentic-db memory get --id <value>              Get one record
  agentic-db memory create --entityId <value> --content <value> --tags <value> --embedding <value> --embeddingDistance <value>
  agentic-db memory update --id <value> [--entityId <value>] [--content <value>] [--tags <value>] [--embedding <value>] [--embeddingDistance <value>]
  agentic-db memory delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  content: String
  tags: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  content: String
  tags: String
  embedding: Vector
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, content, tags, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, content, tags, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, content, tags, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, content, tags, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: deal

CRUD operations for Deal records.

```
SUBCOMMANDS:
  agentic-db deal list                               List all records
  agentic-db deal get --id <value>              Get one record
  agentic-db deal create --entityId <value> --name <value> --stage <value> --value <value> --notes <value> --tags <value> --embedding <value> --embeddingDistance <value>
  agentic-db deal update --id <value> [--entityId <value>] [--name <value>] [--stage <value>] [--value <value>] [--notes <value>] [--tags <value>] [--embedding <value>] [--embeddingDistance <value>]
  agentic-db deal delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  name: String
  stage: String
  value: BigFloat
  notes: String
  tags: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  stage: String
  value: BigFloat
  notes: String
  tags: String
  embedding: Vector
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, stage, value, notes, tags, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, name, stage, value, notes, tags, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, name, stage, value, notes, tags, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, name, stage, value, notes, tags, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: document

CRUD operations for Document records.

```
SUBCOMMANDS:
  agentic-db document list                               List all records
  agentic-db document get --id <value>              Get one record
  agentic-db document create --entityId <value> --title <value> --url <value> --content <value> --sourceType <value> --tags <value> --embedding <value> --embeddingDistance <value>
  agentic-db document update --id <value> [--entityId <value>] [--title <value>] [--url <value>] [--content <value>] [--sourceType <value>] [--tags <value>] [--embedding <value>] [--embeddingDistance <value>]
  agentic-db document delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  title: String
  url: String
  content: String
  sourceType: String
  tags: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  title: String
  url: String
  content: String
  sourceType: String
  tags: String
  embedding: Vector
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, url, content, sourceType, tags, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, title, url, content, sourceType, tags, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, title, url, content, sourceType, tags, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, title, url, content, sourceType, tags, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: task

CRUD operations for Task records.

```
SUBCOMMANDS:
  agentic-db task list                               List all records
  agentic-db task get --id <value>              Get one record
  agentic-db task create --entityId <value> --title <value> --description <value> --status <value> --priority <value> --tags <value> --embedding <value> --embeddingDistance <value>
  agentic-db task update --id <value> [--entityId <value>] [--title <value>] [--description <value>] [--status <value>] [--priority <value>] [--tags <value>] [--embedding <value>] [--embeddingDistance <value>]
  agentic-db task delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  title: String
  description: String
  status: String
  priority: Int
  tags: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  title: String
  description: String
  status: String
  priority: Int
  tags: String
  embedding: Vector
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, description, status, priority, tags, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, title, description, status, priority, tags, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, title, description, status, priority, tags, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, title, description, status, priority, tags, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: rule

CRUD operations for Rule records.

```
SUBCOMMANDS:
  agentic-db rule list                               List all records
  agentic-db rule get --id <value>              Get one record
  agentic-db rule create --entityId <value> --title <value> --content <value> --kind <value> --isActive <value> --tags <value> --embedding <value> --embeddingDistance <value>
  agentic-db rule update --id <value> [--entityId <value>] [--title <value>] [--content <value>] [--kind <value>] [--isActive <value>] [--tags <value>] [--embedding <value>] [--embeddingDistance <value>]
  agentic-db rule delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  title: String
  content: String
  kind: String
  isActive: Boolean
  tags: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  title: String
  content: String
  kind: String
  isActive: Boolean
  tags: String
  embedding: Vector
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, content, kind, isActive, tags, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, title, content, kind, isActive, tags, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, title, content, kind, isActive, tags, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, title, content, kind, isActive, tags, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: skill

CRUD operations for Skill records.

```
SUBCOMMANDS:
  agentic-db skill list                               List all records
  agentic-db skill get --id <value>              Get one record
  agentic-db skill create --entityId <value> --name <value> --description <value> --content <value> --isActive <value> --tags <value> --embedding <value> --embeddingDistance <value>
  agentic-db skill update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--content <value>] [--isActive <value>] [--tags <value>] [--embedding <value>] [--embeddingDistance <value>]
  agentic-db skill delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  name: String
  description: String
  content: String
  isActive: Boolean
  tags: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  description: String
  content: String
  isActive: Boolean
  tags: String
  embedding: Vector
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, description, content, isActive, tags, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, name, description, content, isActive, tags, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, name, description, content, isActive, tags, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, name, description, content, isActive, tags, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: expense

CRUD operations for Expense records.

```
SUBCOMMANDS:
  agentic-db expense list                               List all records
  agentic-db expense get --id <value>              Get one record
  agentic-db expense create --entityId <value> --amount <value> --currency <value> --date <value> --category <value> --description <value> --merchant <value> --receiptUrl <value> --tags <value> --embedding <value> --embeddingDistance <value>
  agentic-db expense update --id <value> [--entityId <value>] [--amount <value>] [--currency <value>] [--date <value>] [--category <value>] [--description <value>] [--merchant <value>] [--receiptUrl <value>] [--tags <value>] [--embedding <value>] [--embeddingDistance <value>]
  agentic-db expense delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  amount: BigFloat
  currency: String
  date: Date
  category: String
  description: String
  merchant: String
  receiptUrl: String
  tags: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  amount: BigFloat
  currency: String
  date: Date
  category: String
  description: String
  merchant: String
  receiptUrl: String
  tags: String
  embedding: Vector
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, amount, currency, date, category, description, merchant, receiptUrl, tags, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, amount, currency, date, category, description, merchant, receiptUrl, tags, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, amount, currency, date, category, description, merchant, receiptUrl, tags, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, amount, currency, date, category, description, merchant, receiptUrl, tags, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: note

CRUD operations for Note records.

```
SUBCOMMANDS:
  agentic-db note list                               List all records
  agentic-db note get --id <value>              Get one record
  agentic-db note create --entityId <value> --content <value> --tags <value> --embedding <value> --contactId <value> --embeddingDistance <value>
  agentic-db note update --id <value> [--entityId <value>] [--content <value>] [--tags <value>] [--embedding <value>] [--contactId <value>] [--embeddingDistance <value>]
  agentic-db note delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  content: String
  tags: String
  embedding: Vector
  contactId: UUID
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  content: String
  tags: String
  embedding: Vector
  contactId: UUID
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, content, tags, embedding, contactId, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, content, tags, embedding, contactId, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, content, tags, embedding, contactId, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, content, tags, embedding, contactId, embeddingDistance }
  delete: { id }
```

### TOOL: company

CRUD operations for Company records.

```
SUBCOMMANDS:
  agentic-db company list                               List all records
  agentic-db company get --id <value>              Get one record
  agentic-db company create --entityId <value> --name <value> --domain <value> --industry <value> --description <value> --tags <value> --embedding <value> --mainImageId <value> --imageId <value> --embeddingDistance <value>
  agentic-db company update --id <value> [--entityId <value>] [--name <value>] [--domain <value>] [--industry <value>] [--description <value>] [--tags <value>] [--embedding <value>] [--mainImageId <value>] [--imageId <value>] [--embeddingDistance <value>]
  agentic-db company delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  name: String
  domain: String
  industry: String
  description: String
  tags: String
  embedding: Vector
  mainImageId: UUID
  imageId: UUID
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  domain: String
  industry: String
  description: String
  tags: String
  embedding: Vector
  mainImageId: UUID
  imageId: UUID
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, domain, industry, description, tags, embedding, mainImageId, imageId, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, name, domain, industry, description, tags, embedding, mainImageId, imageId, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, name, domain, industry, description, tags, embedding, mainImageId, imageId, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, name, domain, industry, description, tags, embedding, mainImageId, imageId, embeddingDistance }
  delete: { id }
```

### TOOL: venue

CRUD operations for Venue records.

```
SUBCOMMANDS:
  agentic-db venue list                               List all records
  agentic-db venue get --id <value>              Get one record
  agentic-db venue create --entityId <value> --name <value> --neighborhood <value> --city <value> --status <value> --notes <value> --tags <value> --embedding <value> --mainImageId <value> --imageId <value> --embeddingDistance <value>
  agentic-db venue update --id <value> [--entityId <value>] [--name <value>] [--neighborhood <value>] [--city <value>] [--status <value>] [--notes <value>] [--tags <value>] [--embedding <value>] [--mainImageId <value>] [--imageId <value>] [--embeddingDistance <value>]
  agentic-db venue delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  name: String
  neighborhood: String
  city: String
  status: String
  notes: String
  tags: String
  embedding: Vector
  mainImageId: UUID
  imageId: UUID
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  neighborhood: String
  city: String
  status: String
  notes: String
  tags: String
  embedding: Vector
  mainImageId: UUID
  imageId: UUID
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, neighborhood, city, status, notes, tags, embedding, mainImageId, imageId, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, name, neighborhood, city, status, notes, tags, embedding, mainImageId, imageId, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, name, neighborhood, city, status, notes, tags, embedding, mainImageId, imageId, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, name, neighborhood, city, status, notes, tags, embedding, mainImageId, imageId, embeddingDistance }
  delete: { id }
```

### TOOL: event

CRUD operations for Event records.

```
SUBCOMMANDS:
  agentic-db event list                               List all records
  agentic-db event get --id <value>              Get one record
  agentic-db event create --entityId <value> --name <value> --eventType <value> --location <value> --city <value> --startedAt <value> --endedAt <value> --notes <value> --tags <value> --embedding <value> --mainImageId <value> --imageId <value> --embeddingDistance <value>
  agentic-db event update --id <value> [--entityId <value>] [--name <value>] [--eventType <value>] [--location <value>] [--city <value>] [--startedAt <value>] [--endedAt <value>] [--notes <value>] [--tags <value>] [--embedding <value>] [--mainImageId <value>] [--imageId <value>] [--embeddingDistance <value>]
  agentic-db event delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  name: String
  eventType: String
  location: String
  city: String
  startedAt: Datetime
  endedAt: Datetime
  notes: String
  tags: String
  embedding: Vector
  mainImageId: UUID
  imageId: UUID
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  eventType: String
  location: String
  city: String
  startedAt: Datetime
  endedAt: Datetime
  notes: String
  tags: String
  embedding: Vector
  mainImageId: UUID
  imageId: UUID
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, tags, embedding, mainImageId, imageId, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, tags, embedding, mainImageId, imageId, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, tags, embedding, mainImageId, imageId, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, tags, embedding, mainImageId, imageId, embeddingDistance }
  delete: { id }
```

### TOOL: contact

CRUD operations for Contact records.

```
SUBCOMMANDS:
  agentic-db contact list                               List all records
  agentic-db contact get --id <value>              Get one record
  agentic-db contact create --entityId <value> --firstName <value> --lastName <value> --email <value> --phone <value> --headline <value> --bio <value> --location <value> --tags <value> --embedding <value> --mainImageId <value> --imageId <value> --searchTsv <value> --searchTsvRank <value> --embeddingDistance <value>
  agentic-db contact update --id <value> [--entityId <value>] [--firstName <value>] [--lastName <value>] [--email <value>] [--phone <value>] [--headline <value>] [--bio <value>] [--location <value>] [--tags <value>] [--embedding <value>] [--mainImageId <value>] [--imageId <value>] [--searchTsv <value>] [--searchTsvRank <value>] [--embeddingDistance <value>]
  agentic-db contact delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  firstName: String
  lastName: String
  email: String
  phone: String
  headline: String
  bio: String
  location: String
  tags: String
  embedding: Vector
  mainImageId: UUID
  imageId: UUID
  searchTsv: FullText
  searchTsvRank: Float
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  firstName: String
  lastName: String
  email: String
  phone: String
  headline: String
  bio: String
  location: String
  tags: String
  embedding: Vector
  mainImageId: UUID
  imageId: UUID
  searchTsv: FullText
  searchTsvRank: Float
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, tags, embedding, mainImageId, imageId, searchTsv, searchTsvRank, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, tags, embedding, mainImageId, imageId, searchTsv, searchTsvRank, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, tags, embedding, mainImageId, imageId, searchTsv, searchTsvRank, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, tags, embedding, mainImageId, imageId, searchTsv, searchTsvRank, embeddingDistance }
  delete: { id }
```

## WORKFLOWS

### Initial setup

```bash
agentic-db context create dev --endpoint http://localhost:5000/graphql
agentic-db context use dev
agentic-db auth set-token eyJhbGciOiJIUzI1NiIs...
```

### CRUD workflow (company-image)

```bash
# List all
agentic-db company-image list

# Create
agentic-db company-image create --companyId "value" --imageId "value" --entityId "value"

# Get by id
agentic-db company-image get --id <value>

# Update
agentic-db company-image update --id <value> --companyId "new-value"

# Delete
agentic-db company-image delete --id <value>
```

### Piping output

```bash
# Pretty print
agentic-db car list | jq '.'

# Extract field
agentic-db car list | jq '.[].id'

# Count results
agentic-db car list | jq 'length'
```

## ERROR HANDLING

All errors are written to stderr. Exit codes:
- `0`: Success
- `1`: Error (auth failure, not found, validation error, network error)

Common errors:
- "No active context": Run `context use <name>` first
- "Not authenticated": Run `auth set-token <token>` first
- "Record not found": The requested ID does not exist
