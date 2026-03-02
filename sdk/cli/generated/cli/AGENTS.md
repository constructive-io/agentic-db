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

### TOOL: tag

CRUD operations for Tag records.

```
SUBCOMMANDS:
  agent-os tag list                               List all records
  agent-os tag get --id <value>              Get one record
  agent-os tag create --name <value>
  agent-os tag update --id <value> [--name <value>]
  agent-os tag delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  name: String

EDITABLE FIELDS (for create/update):
  name: String

OUTPUT: JSON
  list:   [{ id, name }]
  get:    { id, name }
  create: { id, name }
  update: { id, name }
  delete: { id }
```

### TOOL: note

CRUD operations for Note records.

```
SUBCOMMANDS:
  agent-os note list                               List all records
  agent-os note get --id <value>              Get one record
  agent-os note create --entityId <value> --content <value> --contactId <value>
  agent-os note update --id <value> [--entityId <value>] [--content <value>] [--contactId <value>]
  agent-os note delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  content: String
  contactId: UUID

EDITABLE FIELDS (for create/update):
  entityId: UUID
  content: String
  contactId: UUID

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, content, contactId }]
  get:    { id, entityId, createdAt, updatedAt, content, contactId }
  create: { id, entityId, createdAt, updatedAt, content, contactId }
  update: { id, entityId, createdAt, updatedAt, content, contactId }
  delete: { id }
```

### TOOL: venue

CRUD operations for Venue records.

```
SUBCOMMANDS:
  agent-os venue list                               List all records
  agent-os venue get --id <value>              Get one record
  agent-os venue create --entityId <value> --name <value> --neighborhood <value> --city <value> --status <value> --notes <value>
  agent-os venue update --id <value> [--entityId <value>] [--name <value>] [--neighborhood <value>] [--city <value>] [--status <value>] [--notes <value>]
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

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  neighborhood: String
  city: String
  status: String
  notes: String

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, neighborhood, city, status, notes }]
  get:    { id, entityId, createdAt, updatedAt, name, neighborhood, city, status, notes }
  create: { id, entityId, createdAt, updatedAt, name, neighborhood, city, status, notes }
  update: { id, entityId, createdAt, updatedAt, name, neighborhood, city, status, notes }
  delete: { id }
```

### TOOL: contact

CRUD operations for Contact records.

```
SUBCOMMANDS:
  agent-os contact list                               List all records
  agent-os contact get --id <value>              Get one record
  agent-os contact create --entityId <value> --firstName <value> --lastName <value> --email <value> --phone <value> --headline <value> --bio <value> --location <value>
  agent-os contact update --id <value> [--entityId <value>] [--firstName <value>] [--lastName <value>] [--email <value>] [--phone <value>] [--headline <value>] [--bio <value>] [--location <value>]
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

EDITABLE FIELDS (for create/update):
  entityId: UUID
  firstName: String
  lastName: String
  email: String
  phone: String
  headline: String
  bio: String
  location: String

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location }]
  get:    { id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location }
  create: { id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location }
  update: { id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location }
  delete: { id }
```

### TOOL: event

CRUD operations for Event records.

```
SUBCOMMANDS:
  agent-os event list                               List all records
  agent-os event get --id <value>              Get one record
  agent-os event create --entityId <value> --name <value> --eventType <value> --location <value> --city <value> --startedAt <value> --endedAt <value> --notes <value>
  agent-os event update --id <value> [--entityId <value>] [--name <value>] [--eventType <value>] [--location <value>] [--city <value>] [--startedAt <value>] [--endedAt <value>] [--notes <value>]
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

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  eventType: String
  location: String
  city: String
  startedAt: Datetime
  endedAt: Datetime
  notes: String

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes }]
  get:    { id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes }
  create: { id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes }
  update: { id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes }
  delete: { id }
```

### TOOL: deal

CRUD operations for Deal records.

```
SUBCOMMANDS:
  agent-os deal list                               List all records
  agent-os deal get --id <value>              Get one record
  agent-os deal create --entityId <value> --name <value> --stage <value> --value <value> --notes <value>
  agent-os deal update --id <value> [--entityId <value>] [--name <value>] [--stage <value>] [--value <value>] [--notes <value>]
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

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  stage: String
  value: BigFloat
  notes: String

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, stage, value, notes }]
  get:    { id, entityId, createdAt, updatedAt, name, stage, value, notes }
  create: { id, entityId, createdAt, updatedAt, name, stage, value, notes }
  update: { id, entityId, createdAt, updatedAt, name, stage, value, notes }
  delete: { id }
```

### TOOL: company

CRUD operations for Company records.

```
SUBCOMMANDS:
  agent-os company list                               List all records
  agent-os company get --id <value>              Get one record
  agent-os company create --entityId <value> --name <value> --domain <value> --industry <value> --description <value> --test1772427893521 <value> --test1772427893568 <value> --test1772427893598 <value> --embedding <value> --embeddingText <value>
  agent-os company update --id <value> [--entityId <value>] [--name <value>] [--domain <value>] [--industry <value>] [--description <value>] [--test1772427893521 <value>] [--test1772427893568 <value>] [--test1772427893598 <value>] [--embedding <value>] [--embeddingText <value>]
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
  test1772427893521: Float
  test1772427893568: Float
  test1772427893598: Float
  embedding: Float
  embeddingText: String

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  domain: String
  industry: String
  description: String
  test1772427893521: Float
  test1772427893568: Float
  test1772427893598: Float
  embedding: Float
  embeddingText: String

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, domain, industry, description, test1772427893521, test1772427893568, test1772427893598, embedding, embeddingText }]
  get:    { id, entityId, createdAt, updatedAt, name, domain, industry, description, test1772427893521, test1772427893568, test1772427893598, embedding, embeddingText }
  create: { id, entityId, createdAt, updatedAt, name, domain, industry, description, test1772427893521, test1772427893568, test1772427893598, embedding, embeddingText }
  update: { id, entityId, createdAt, updatedAt, name, domain, industry, description, test1772427893521, test1772427893568, test1772427893598, embedding, embeddingText }
  delete: { id }
```

## WORKFLOWS

### Initial setup

```bash
agent-os context create dev --endpoint http://localhost:5000/graphql
agent-os context use dev
agent-os auth set-token eyJhbGciOiJIUzI1NiIs...
```

### CRUD workflow (contact-company)

```bash
# List all
agent-os contact-company list

# Create
agent-os contact-company create --contactId "value" --companyId "value" --entityId "value"

# Get by id
agent-os contact-company get --id <value>

# Update
agent-os contact-company update --id <value> --contactId "new-value"

# Delete
agent-os contact-company delete --id <value>
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
