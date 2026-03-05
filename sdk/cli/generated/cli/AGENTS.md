# agent-os CLI - Agent Reference

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->
> This document is structured for LLM/agent consumption.

## OVERVIEW

`agent-os` is a CLI tool for interacting with a GraphQL API.
All commands output JSON to stdout. All commands accept `--help` or `-h` for usage.
Configuration is stored at `~/.agent-os/config/` via appstash.

## PREREQUISITES

Before running any data commands, you must:

1. Create a context: `agent-os context create <name> --endpoint <url>`
2. Activate it: `agent-os context use <name>`
3. Authenticate: `agent-os auth set-token <token>`

## TOOLS

### TOOL: context

Manage named API endpoint contexts (like kubectl contexts).

```
SUBCOMMANDS:
  agent-os context create <name> --endpoint <url>   Create a new context
  agent-os context list                              List all contexts
  agent-os context use <name>                        Set active context
  agent-os context current                           Show active context
  agent-os context delete <name>                     Delete a context

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
  agent-os auth set-token <token>   Store bearer token for current context
  agent-os auth status               Show auth status for all contexts
  agent-os auth logout                Remove credentials for current context

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
  agent-os company-image list                               List all records
  agent-os company-image get --id <value>              Get one record
  agent-os company-image create --companyId <value> --imageId <value> --entityId <value>
  agent-os company-image update --id <value> [--companyId <value>] [--imageId <value>] [--entityId <value>]
  agent-os company-image delete --id <value>           Delete one record

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
  agent-os contact-company list                               List all records
  agent-os contact-company get --id <value>              Get one record
  agent-os contact-company create --contactId <value> --companyId <value> --entityId <value>
  agent-os contact-company update --id <value> [--contactId <value>] [--companyId <value>] [--entityId <value>]
  agent-os contact-company delete --id <value>           Delete one record

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
  agent-os contact-event list                               List all records
  agent-os contact-event get --id <value>              Get one record
  agent-os contact-event create --contactId <value> --eventId <value> --entityId <value>
  agent-os contact-event update --id <value> [--contactId <value>] [--eventId <value>] [--entityId <value>]
  agent-os contact-event delete --id <value>           Delete one record

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
  agent-os contact-image list                               List all records
  agent-os contact-image get --id <value>              Get one record
  agent-os contact-image create --contactId <value> --imageId <value> --entityId <value>
  agent-os contact-image update --id <value> [--contactId <value>] [--imageId <value>] [--entityId <value>]
  agent-os contact-image delete --id <value>           Delete one record

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
  agent-os deal-contact list                               List all records
  agent-os deal-contact get --id <value>              Get one record
  agent-os deal-contact create --dealId <value> --contactId <value> --entityId <value>
  agent-os deal-contact update --id <value> [--dealId <value>] [--contactId <value>] [--entityId <value>]
  agent-os deal-contact delete --id <value>           Delete one record

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
  agent-os event-image list                               List all records
  agent-os event-image get --id <value>              Get one record
  agent-os event-image create --eventId <value> --imageId <value> --entityId <value>
  agent-os event-image update --id <value> [--eventId <value>] [--imageId <value>] [--entityId <value>]
  agent-os event-image delete --id <value>           Delete one record

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
  agent-os event-venue list                               List all records
  agent-os event-venue get --id <value>              Get one record
  agent-os event-venue create --eventId <value> --venueId <value> --entityId <value>
  agent-os event-venue update --id <value> [--eventId <value>] [--venueId <value>] [--entityId <value>]
  agent-os event-venue delete --id <value>           Delete one record

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
  agent-os venue-image list                               List all records
  agent-os venue-image get --id <value>              Get one record
  agent-os venue-image create --venueId <value> --imageId <value> --entityId <value>
  agent-os venue-image update --id <value> [--venueId <value>] [--imageId <value>] [--entityId <value>]
  agent-os venue-image delete --id <value>           Delete one record

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
  agent-os calendar-sync list                               List all records
  agent-os calendar-sync get --id <value>              Get one record
  agent-os calendar-sync create --entityId <value> --provider <value> --syncToken <value> --lastSyncedAt <value>
  agent-os calendar-sync update --id <value> [--entityId <value>] [--provider <value>] [--syncToken <value>] [--lastSyncedAt <value>]
  agent-os calendar-sync delete --id <value>           Delete one record

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
  agent-os file list                               List all records
  agent-os file get --id <value>              Get one record
  agent-os file create --entityId <value> --path <value> --language <value> --hash <value> --repositoryId <value>
  agent-os file update --id <value> [--entityId <value>] [--path <value>] [--language <value>] [--hash <value>] [--repositoryId <value>]
  agent-os file delete --id <value>           Delete one record

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
  agent-os email-account list                               List all records
  agent-os email-account get --id <value>              Get one record
  agent-os email-account create --entityId <value> --email <value> --provider <value> --syncState <value>
  agent-os email-account update --id <value> [--entityId <value>] [--email <value>] [--provider <value>] [--syncState <value>]
  agent-os email-account delete --id <value>           Delete one record

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
  agent-os message list                               List all records
  agent-os message get --id <value>              Get one record
  agent-os message create --entityId <value> --threadId <value> --remoteId <value> --from <value> --to <value> --subject <value> --bodyText <value> --receivedAt <value> --tags <value> --embedding <value> --emailAccountId <value> --embeddingDistance <value>
  agent-os message update --id <value> [--entityId <value>] [--threadId <value>] [--remoteId <value>] [--from <value>] [--to <value>] [--subject <value>] [--bodyText <value>] [--receivedAt <value>] [--tags <value>] [--embedding <value>] [--emailAccountId <value>] [--embeddingDistance <value>]
  agent-os message delete --id <value>           Delete one record

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
  agent-os execution-log list                               List all records
  agent-os execution-log get --id <value>              Get one record
  agent-os execution-log create --entityId <value> --stepName <value> --input <value> --output <value> --toolCalls <value> --durationMs <value> --sessionId <value>
  agent-os execution-log update --id <value> [--entityId <value>] [--stepName <value>] [--input <value>] [--output <value>] [--toolCalls <value>] [--durationMs <value>] [--sessionId <value>]
  agent-os execution-log delete --id <value>           Delete one record

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
  agent-os chat list                               List all records
  agent-os chat get --id <value>              Get one record
  agent-os chat create --entityId <value> --title <value> --startedAt <value> --embedding <value> --embeddingDistance <value>
  agent-os chat update --id <value> [--entityId <value>] [--title <value>] [--startedAt <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os chat delete --id <value>           Delete one record

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
  agent-os project list                               List all records
  agent-os project get --id <value>              Get one record
  agent-os project create --entityId <value> --name <value> --description <value> --status <value> --startDate <value> --dueDate <value> --embedding <value> --embeddingDistance <value>
  agent-os project update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--status <value>] [--startDate <value>] [--dueDate <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os project delete --id <value>           Delete one record

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
  agent-os repository list                               List all records
  agent-os repository get --id <value>              Get one record
  agent-os repository create --entityId <value> --name <value> --url <value> --description <value> --defaultBranch <value> --lastSyncedAt <value> --embedding <value> --embeddingDistance <value>
  agent-os repository update --id <value> [--entityId <value>] [--name <value>] [--url <value>] [--description <value>] [--defaultBranch <value>] [--lastSyncedAt <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os repository delete --id <value>           Delete one record

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
  agent-os session list                               List all records
  agent-os session get --id <value>              Get one record
  agent-os session create --entityId <value> --title <value> --startedAt <value> --endedAt <value> --status <value> --contextSummary <value> --embedding <value> --embeddingDistance <value>
  agent-os session update --id <value> [--entityId <value>] [--title <value>] [--startedAt <value>] [--endedAt <value>] [--status <value>] [--contextSummary <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os session delete --id <value>           Delete one record

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
  agent-os blueprint list                               List all records
  agent-os blueprint get --id <value>              Get one record
  agent-os blueprint create --entityId <value> --title <value> --steps <value> --triggerConditions <value> --embedding <value> --embeddingDistance <value>
  agent-os blueprint update --id <value> [--entityId <value>] [--title <value>] [--steps <value>] [--triggerConditions <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os blueprint delete --id <value>           Delete one record

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
  agent-os image list                               List all records
  agent-os image get --id <value>              Get one record
  agent-os image create --entityId <value> --url <value> --meta <value> --altText <value> --caption <value> --embedding <value> --embeddingDistance <value>
  agent-os image update --id <value> [--entityId <value>] [--url <value>] [--meta <value>] [--altText <value>] [--caption <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os image delete --id <value>           Delete one record

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
  agent-os milestone list                               List all records
  agent-os milestone get --id <value>              Get one record
  agent-os milestone create --entityId <value> --name <value> --dueDate <value> --embedding <value> --projectId <value> --embeddingDistance <value>
  agent-os milestone update --id <value> [--entityId <value>] [--name <value>] [--dueDate <value>] [--embedding <value>] [--projectId <value>] [--embeddingDistance <value>]
  agent-os milestone delete --id <value>           Delete one record

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
  agent-os chat-message list                               List all records
  agent-os chat-message get --id <value>              Get one record
  agent-os chat-message create --entityId <value> --role <value> --content <value> --toolCalls <value> --embedding <value> --chatId <value> --embeddingDistance <value>
  agent-os chat-message update --id <value> [--entityId <value>] [--role <value>] [--content <value>] [--toolCalls <value>] [--embedding <value>] [--chatId <value>] [--embeddingDistance <value>]
  agent-os chat-message delete --id <value>           Delete one record

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
  agent-os chunk list                               List all records
  agent-os chunk get --id <value>              Get one record
  agent-os chunk create --entityId <value> --content <value> --startLine <value> --endLine <value> --embedding <value> --fileId <value> --repositoryId <value> --embeddingDistance <value>
  agent-os chunk update --id <value> [--entityId <value>] [--content <value>] [--startLine <value>] [--endLine <value>] [--embedding <value>] [--fileId <value>] [--repositoryId <value>] [--embeddingDistance <value>]
  agent-os chunk delete --id <value>           Delete one record

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
  agent-os memory list                               List all records
  agent-os memory get --id <value>              Get one record
  agent-os memory create --entityId <value> --content <value> --tags <value> --embedding <value> --embeddingDistance <value>
  agent-os memory update --id <value> [--entityId <value>] [--content <value>] [--tags <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os memory delete --id <value>           Delete one record

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
  agent-os deal list                               List all records
  agent-os deal get --id <value>              Get one record
  agent-os deal create --entityId <value> --name <value> --stage <value> --value <value> --notes <value> --tags <value> --embedding <value> --embeddingDistance <value>
  agent-os deal update --id <value> [--entityId <value>] [--name <value>] [--stage <value>] [--value <value>] [--notes <value>] [--tags <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os deal delete --id <value>           Delete one record

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
  agent-os document list                               List all records
  agent-os document get --id <value>              Get one record
  agent-os document create --entityId <value> --title <value> --url <value> --content <value> --sourceType <value> --tags <value> --embedding <value> --embeddingDistance <value>
  agent-os document update --id <value> [--entityId <value>] [--title <value>] [--url <value>] [--content <value>] [--sourceType <value>] [--tags <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os document delete --id <value>           Delete one record

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
  agent-os task list                               List all records
  agent-os task get --id <value>              Get one record
  agent-os task create --entityId <value> --title <value> --description <value> --status <value> --priority <value> --tags <value> --embedding <value> --embeddingDistance <value>
  agent-os task update --id <value> [--entityId <value>] [--title <value>] [--description <value>] [--status <value>] [--priority <value>] [--tags <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os task delete --id <value>           Delete one record

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
  agent-os rule list                               List all records
  agent-os rule get --id <value>              Get one record
  agent-os rule create --entityId <value> --title <value> --content <value> --kind <value> --isActive <value> --tags <value> --embedding <value> --embeddingDistance <value>
  agent-os rule update --id <value> [--entityId <value>] [--title <value>] [--content <value>] [--kind <value>] [--isActive <value>] [--tags <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os rule delete --id <value>           Delete one record

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
  agent-os skill list                               List all records
  agent-os skill get --id <value>              Get one record
  agent-os skill create --entityId <value> --name <value> --description <value> --content <value> --isActive <value> --tags <value> --embedding <value> --embeddingDistance <value>
  agent-os skill update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--content <value>] [--isActive <value>] [--tags <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os skill delete --id <value>           Delete one record

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
  agent-os expense list                               List all records
  agent-os expense get --id <value>              Get one record
  agent-os expense create --entityId <value> --amount <value> --currency <value> --date <value> --category <value> --description <value> --merchant <value> --receiptUrl <value> --tags <value> --embedding <value> --embeddingDistance <value>
  agent-os expense update --id <value> [--entityId <value>] [--amount <value>] [--currency <value>] [--date <value>] [--category <value>] [--description <value>] [--merchant <value>] [--receiptUrl <value>] [--tags <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os expense delete --id <value>           Delete one record

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
  agent-os note list                               List all records
  agent-os note get --id <value>              Get one record
  agent-os note create --entityId <value> --content <value> --tags <value> --embedding <value> --contactId <value> --embeddingDistance <value>
  agent-os note update --id <value> [--entityId <value>] [--content <value>] [--tags <value>] [--embedding <value>] [--contactId <value>] [--embeddingDistance <value>]
  agent-os note delete --id <value>           Delete one record

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
  agent-os company list                               List all records
  agent-os company get --id <value>              Get one record
  agent-os company create --entityId <value> --name <value> --domain <value> --industry <value> --description <value> --tags <value> --embedding <value> --mainImageId <value> --imageId <value> --embeddingDistance <value>
  agent-os company update --id <value> [--entityId <value>] [--name <value>] [--domain <value>] [--industry <value>] [--description <value>] [--tags <value>] [--embedding <value>] [--mainImageId <value>] [--imageId <value>] [--embeddingDistance <value>]
  agent-os company delete --id <value>           Delete one record

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
  agent-os venue list                               List all records
  agent-os venue get --id <value>              Get one record
  agent-os venue create --entityId <value> --name <value> --neighborhood <value> --city <value> --status <value> --notes <value> --tags <value> --embedding <value> --mainImageId <value> --imageId <value> --embeddingDistance <value>
  agent-os venue update --id <value> [--entityId <value>] [--name <value>] [--neighborhood <value>] [--city <value>] [--status <value>] [--notes <value>] [--tags <value>] [--embedding <value>] [--mainImageId <value>] [--imageId <value>] [--embeddingDistance <value>]
  agent-os venue delete --id <value>           Delete one record

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
  agent-os event list                               List all records
  agent-os event get --id <value>              Get one record
  agent-os event create --entityId <value> --name <value> --eventType <value> --location <value> --city <value> --startedAt <value> --endedAt <value> --notes <value> --tags <value> --embedding <value> --mainImageId <value> --imageId <value> --embeddingDistance <value>
  agent-os event update --id <value> [--entityId <value>] [--name <value>] [--eventType <value>] [--location <value>] [--city <value>] [--startedAt <value>] [--endedAt <value>] [--notes <value>] [--tags <value>] [--embedding <value>] [--mainImageId <value>] [--imageId <value>] [--embeddingDistance <value>]
  agent-os event delete --id <value>           Delete one record

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
  agent-os contact list                               List all records
  agent-os contact get --id <value>              Get one record
  agent-os contact create --entityId <value> --firstName <value> --lastName <value> --email <value> --phone <value> --headline <value> --bio <value> --location <value> --tags <value> --embedding <value> --mainImageId <value> --imageId <value> --searchTsv <value> --searchTsvRank <value> --embeddingDistance <value>
  agent-os contact update --id <value> [--entityId <value>] [--firstName <value>] [--lastName <value>] [--email <value>] [--phone <value>] [--headline <value>] [--bio <value>] [--location <value>] [--tags <value>] [--embedding <value>] [--mainImageId <value>] [--imageId <value>] [--searchTsv <value>] [--searchTsvRank <value>] [--embeddingDistance <value>]
  agent-os contact delete --id <value>           Delete one record

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
agent-os context create dev --endpoint http://localhost:5000/graphql
agent-os context use dev
agent-os auth set-token eyJhbGciOiJIUzI1NiIs...
```

### CRUD workflow (company-image)

```bash
# List all
agent-os company-image list

# Create
agent-os company-image create --companyId "value" --imageId "value" --entityId "value"

# Get by id
agent-os company-image get --id <value>

# Update
agent-os company-image update --id <value> --companyId "new-value"

# Delete
agent-os company-image delete --id <value>
```

### Piping output

```bash
# Pretty print
agent-os car list | jq '.'

# Extract field
agent-os car list | jq '.[].id'

# Count results
agent-os car list | jq 'length'
```

## ERROR HANDLING

All errors are written to stderr. Exit codes:
- `0`: Success
- `1`: Error (auth failure, not found, validation error, network error)

Common errors:
- "No active context": Run `context use <name>` first
- "Not authenticated": Run `auth set-token <token>` first
- "Record not found": The requested ID does not exist
