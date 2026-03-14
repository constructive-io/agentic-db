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

### TOOL: config

Manage per-context key-value configuration variables.

```
SUBCOMMANDS:
  agent-os config get <key>             Get a config value
  agent-os config set <key> <value>     Set a config value
  agent-os config list                  List all config values
  agent-os config delete <key>          Delete a config value

INPUT:
  key:   string (required for get/set/delete) - Variable name
  value: string (required for set) - Variable value

OUTPUT: JSON
  get:    { key, value }
  set:    { key, value }
  list:   { vars: { key: value, ... } }
  delete: { deleted: key }
```

### TOOL: agent-prompt

CRUD operations for AgentPrompt records.

```
SUBCOMMANDS:
  agent-os agent-prompt list                               List all records
  agent-os agent-prompt get --id <value>              Get one record
  agent-os agent-prompt create --agentId <value> --promptId <value> --entityId <value>
  agent-os agent-prompt update --id <value> [--agentId <value>] [--promptId <value>] [--entityId <value>]
  agent-os agent-prompt delete --id <value>           Delete one record

INPUT FIELDS:
  agentId: UUID
  promptId: UUID
  id: UUID (primary key)
  entityId: UUID

EDITABLE FIELDS (for create/update):
  agentId: UUID
  promptId: UUID
  entityId: UUID

OUTPUT: JSON
  list:   [{ agentId, promptId, id, entityId }]
  get:    { agentId, promptId, id, entityId }
  create: { agentId, promptId, id, entityId }
  update: { agentId, promptId, id, entityId }
  delete: { id }
```

### TOOL: process

CRUD operations for Process records.

```
SUBCOMMANDS:
  agent-os process list                               List all records
  agent-os process get --id <value>              Get one record
  agent-os process create --entityId <value> [--pid <value>] [--agentId <value>] [--command <value>] [--startedAt <value>] [--endedAt <value>] [--status <value>] [--exitCode <value>] [--logsPath <value>]
  agent-os process update --id <value> [--entityId <value>] [--pid <value>] [--agentId <value>] [--command <value>] [--startedAt <value>] [--endedAt <value>] [--status <value>] [--exitCode <value>] [--logsPath <value>]
  agent-os process delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  pid: Int
  agentId: UUID
  command: String
  startedAt: Datetime
  endedAt: Datetime
  status: String
  exitCode: Int
  logsPath: String

EDITABLE FIELDS (for create/update):
  entityId: UUID
  pid: Int (optional, has backend default)
  agentId: UUID (optional, has backend default)
  command: String (optional, has backend default)
  startedAt: Datetime (optional, has backend default)
  endedAt: Datetime (optional, has backend default)
  status: String (optional, has backend default)
  exitCode: Int (optional, has backend default)
  logsPath: String (optional, has backend default)

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, pid, agentId, command, startedAt, endedAt, status, exitCode, logsPath }]
  get:    { id, entityId, createdAt, updatedAt, pid, agentId, command, startedAt, endedAt, status, exitCode, logsPath }
  create: { id, entityId, createdAt, updatedAt, pid, agentId, command, startedAt, endedAt, status, exitCode, logsPath }
  update: { id, entityId, createdAt, updatedAt, pid, agentId, command, startedAt, endedAt, status, exitCode, logsPath }
  delete: { id }
```

### TOOL: scheduled-job

CRUD operations for ScheduledJob records.

```
SUBCOMMANDS:
  agent-os scheduled-job list                               List all records
  agent-os scheduled-job get --id <value>              Get one record
  agent-os scheduled-job create --entityId <value> --name <value> --schedule <value> --command <value> [--agentId <value>] [--active <value>] [--lastRun <value>] [--nextRun <value>]
  agent-os scheduled-job update --id <value> [--entityId <value>] [--name <value>] [--schedule <value>] [--command <value>] [--agentId <value>] [--active <value>] [--lastRun <value>] [--nextRun <value>]
  agent-os scheduled-job delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  name: String
  schedule: String
  command: String
  agentId: UUID
  active: Boolean
  lastRun: Datetime
  nextRun: Datetime

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  schedule: String
  command: String
  agentId: UUID (optional, has backend default)
  active: Boolean (optional, has backend default)
  lastRun: Datetime (optional, has backend default)
  nextRun: Datetime (optional, has backend default)

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, schedule, command, agentId, active, lastRun, nextRun }]
  get:    { id, entityId, createdAt, updatedAt, name, schedule, command, agentId, active, lastRun, nextRun }
  create: { id, entityId, createdAt, updatedAt, name, schedule, command, agentId, active, lastRun, nextRun }
  update: { id, entityId, createdAt, updatedAt, name, schedule, command, agentId, active, lastRun, nextRun }
  delete: { id }
```

### TOOL: agent-tool

CRUD operations for AgentTool records.

```
SUBCOMMANDS:
  agent-os agent-tool list                               List all records
  agent-os agent-tool get --id <value>              Get one record
  agent-os agent-tool create --agentId <value> --toolId <value> --entityId <value>
  agent-os agent-tool update --id <value> [--agentId <value>] [--toolId <value>] [--entityId <value>]
  agent-os agent-tool delete --id <value>           Delete one record

INPUT FIELDS:
  agentId: UUID
  toolId: UUID
  id: UUID (primary key)
  entityId: UUID

EDITABLE FIELDS (for create/update):
  agentId: UUID
  toolId: UUID
  entityId: UUID

OUTPUT: JSON
  list:   [{ agentId, toolId, id, entityId }]
  get:    { agentId, toolId, id, entityId }
  create: { agentId, toolId, id, entityId }
  update: { agentId, toolId, id, entityId }
  delete: { id }
```

### TOOL: agent-skill

CRUD operations for AgentSkill records.

```
SUBCOMMANDS:
  agent-os agent-skill list                               List all records
  agent-os agent-skill get --id <value>              Get one record
  agent-os agent-skill create --agentId <value> --skillId <value> --entityId <value>
  agent-os agent-skill update --id <value> [--agentId <value>] [--skillId <value>] [--entityId <value>]
  agent-os agent-skill delete --id <value>           Delete one record

INPUT FIELDS:
  agentId: UUID
  skillId: UUID
  id: UUID (primary key)
  entityId: UUID

EDITABLE FIELDS (for create/update):
  agentId: UUID
  skillId: UUID
  entityId: UUID

OUTPUT: JSON
  list:   [{ agentId, skillId, id, entityId }]
  get:    { agentId, skillId, id, entityId }
  create: { agentId, skillId, id, entityId }
  update: { agentId, skillId, id, entityId }
  delete: { id }
```

### TOOL: agent-rule

CRUD operations for AgentRule records.

```
SUBCOMMANDS:
  agent-os agent-rule list                               List all records
  agent-os agent-rule get --id <value>              Get one record
  agent-os agent-rule create --agentId <value> --ruleId <value> --entityId <value>
  agent-os agent-rule update --id <value> [--agentId <value>] [--ruleId <value>] [--entityId <value>]
  agent-os agent-rule delete --id <value>           Delete one record

INPUT FIELDS:
  agentId: UUID
  ruleId: UUID
  id: UUID (primary key)
  entityId: UUID

EDITABLE FIELDS (for create/update):
  agentId: UUID
  ruleId: UUID
  entityId: UUID

OUTPUT: JSON
  list:   [{ agentId, ruleId, id, entityId }]
  get:    { agentId, ruleId, id, entityId }
  create: { agentId, ruleId, id, entityId }
  update: { agentId, ruleId, id, entityId }
  delete: { id }
```

### TOOL: calendar-event-contact

CRUD operations for CalendarEventContact records.

```
SUBCOMMANDS:
  agent-os calendar-event-contact list                               List all records
  agent-os calendar-event-contact get --id <value>              Get one record
  agent-os calendar-event-contact create --calendarEventId <value> --contactId <value> --entityId <value>
  agent-os calendar-event-contact update --id <value> [--calendarEventId <value>] [--contactId <value>] [--entityId <value>]
  agent-os calendar-event-contact delete --id <value>           Delete one record

INPUT FIELDS:
  calendarEventId: UUID
  contactId: UUID
  id: UUID (primary key)
  entityId: UUID

EDITABLE FIELDS (for create/update):
  calendarEventId: UUID
  contactId: UUID
  entityId: UUID

OUTPUT: JSON
  list:   [{ calendarEventId, contactId, id, entityId }]
  get:    { calendarEventId, contactId, id, entityId }
  create: { calendarEventId, contactId, id, entityId }
  update: { calendarEventId, contactId, id, entityId }
  delete: { id }
```

### TOOL: calendar-event

CRUD operations for CalendarEvent records.

```
SUBCOMMANDS:
  agent-os calendar-event list                               List all records
  agent-os calendar-event get --id <value>              Get one record
  agent-os calendar-event create --entityId <value> --title <value> --startAt <value> --embeddingDistance <value> [--calendarAccountId <value>] [--remoteId <value>] [--description <value>] [--endAt <value>] [--allDay <value>] [--location <value>] [--recurrenceRule <value>] [--status <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agent-os calendar-event update --id <value> [--entityId <value>] [--calendarAccountId <value>] [--remoteId <value>] [--title <value>] [--description <value>] [--startAt <value>] [--endAt <value>] [--allDay <value>] [--location <value>] [--recurrenceRule <value>] [--status <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os calendar-event delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  calendarAccountId: UUID
  remoteId: String
  title: String
  description: String
  startAt: Datetime
  endAt: Datetime
  allDay: Boolean
  location: String
  recurrenceRule: String
  status: String
  tags: String
  embeddingText: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  calendarAccountId: UUID (optional, has backend default)
  remoteId: String (optional, has backend default)
  title: String
  description: String (optional, has backend default)
  startAt: Datetime
  endAt: Datetime (optional, has backend default)
  allDay: Boolean (optional, has backend default)
  location: String (optional, has backend default)
  recurrenceRule: String (optional, has backend default)
  status: String (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, calendarAccountId, remoteId, title, description, startAt, endAt, allDay, location, recurrenceRule, status, tags, embeddingText, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, calendarAccountId, remoteId, title, description, startAt, endAt, allDay, location, recurrenceRule, status, tags, embeddingText, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, calendarAccountId, remoteId, title, description, startAt, endAt, allDay, location, recurrenceRule, status, tags, embeddingText, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, calendarAccountId, remoteId, title, description, startAt, endAt, allDay, location, recurrenceRule, status, tags, embeddingText, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: interaction

CRUD operations for Interaction records.

```
SUBCOMMANDS:
  agent-os interaction list                               List all records
  agent-os interaction get --id <value>              Get one record
  agent-os interaction create --entityId <value> --contactId <value> --type <value> --occurredAt <value> --embeddingDistance <value> [--summary <value>] [--sentiment <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agent-os interaction update --id <value> [--entityId <value>] [--contactId <value>] [--type <value>] [--occurredAt <value>] [--summary <value>] [--sentiment <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os interaction delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  contactId: UUID
  type: String
  occurredAt: Datetime
  summary: String
  sentiment: String
  tags: String
  embeddingText: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  contactId: UUID
  type: String
  occurredAt: Datetime
  summary: String (optional, has backend default)
  sentiment: String (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, contactId, type, occurredAt, summary, sentiment, tags, embeddingText, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, contactId, type, occurredAt, summary, sentiment, tags, embeddingText, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, contactId, type, occurredAt, summary, sentiment, tags, embeddingText, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, contactId, type, occurredAt, summary, sentiment, tags, embeddingText, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: company-event

CRUD operations for CompanyEvent records.

```
SUBCOMMANDS:
  agent-os company-event list                               List all records
  agent-os company-event get --id <value>              Get one record
  agent-os company-event create --companyId <value> --eventId <value> --entityId <value>
  agent-os company-event update --id <value> [--companyId <value>] [--eventId <value>] [--entityId <value>]
  agent-os company-event delete --id <value>           Delete one record

INPUT FIELDS:
  companyId: UUID
  eventId: UUID
  id: UUID (primary key)
  entityId: UUID

EDITABLE FIELDS (for create/update):
  companyId: UUID
  eventId: UUID
  entityId: UUID

OUTPUT: JSON
  list:   [{ companyId, eventId, id, entityId }]
  get:    { companyId, eventId, id, entityId }
  create: { companyId, eventId, id, entityId }
  update: { companyId, eventId, id, entityId }
  delete: { id }
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

### TOOL: expense-contact

CRUD operations for ExpenseContact records.

```
SUBCOMMANDS:
  agent-os expense-contact list                               List all records
  agent-os expense-contact get --id <value>              Get one record
  agent-os expense-contact create --expenseId <value> --contactId <value> --entityId <value>
  agent-os expense-contact update --id <value> [--expenseId <value>] [--contactId <value>] [--entityId <value>]
  agent-os expense-contact delete --id <value>           Delete one record

INPUT FIELDS:
  expenseId: UUID
  contactId: UUID
  id: UUID (primary key)
  entityId: UUID

EDITABLE FIELDS (for create/update):
  expenseId: UUID
  contactId: UUID
  entityId: UUID

OUTPUT: JSON
  list:   [{ expenseId, contactId, id, entityId }]
  get:    { expenseId, contactId, id, entityId }
  create: { expenseId, contactId, id, entityId }
  update: { expenseId, contactId, id, entityId }
  delete: { id }
```

### TOOL: goal-habit

CRUD operations for GoalHabit records.

```
SUBCOMMANDS:
  agent-os goal-habit list                               List all records
  agent-os goal-habit get --id <value>              Get one record
  agent-os goal-habit create --goalId <value> --habitId <value> --entityId <value>
  agent-os goal-habit update --id <value> [--goalId <value>] [--habitId <value>] [--entityId <value>]
  agent-os goal-habit delete --id <value>           Delete one record

INPUT FIELDS:
  goalId: UUID
  habitId: UUID
  id: UUID (primary key)
  entityId: UUID

EDITABLE FIELDS (for create/update):
  goalId: UUID
  habitId: UUID
  entityId: UUID

OUTPUT: JSON
  list:   [{ goalId, habitId, id, entityId }]
  get:    { goalId, habitId, id, entityId }
  create: { goalId, habitId, id, entityId }
  update: { goalId, habitId, id, entityId }
  delete: { id }
```

### TOOL: habit-log

CRUD operations for HabitLog records.

```
SUBCOMMANDS:
  agent-os habit-log list                               List all records
  agent-os habit-log get --id <value>              Get one record
  agent-os habit-log create --entityId <value> --habitId <value> --completedAt <value> [--activityType <value>] [--durationMinutes <value>] [--distance <value>] [--distanceUnit <value>] [--reps <value>] [--sets <value>] [--weightAmount <value>] [--weightUnit <value>] [--calories <value>] [--data <value>] [--notes <value>] [--tags <value>]
  agent-os habit-log update --id <value> [--entityId <value>] [--habitId <value>] [--completedAt <value>] [--activityType <value>] [--durationMinutes <value>] [--distance <value>] [--distanceUnit <value>] [--reps <value>] [--sets <value>] [--weightAmount <value>] [--weightUnit <value>] [--calories <value>] [--data <value>] [--notes <value>] [--tags <value>]
  agent-os habit-log delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  habitId: UUID
  completedAt: Datetime
  activityType: String
  durationMinutes: BigFloat
  distance: BigFloat
  distanceUnit: String
  reps: Int
  sets: Int
  weightAmount: BigFloat
  weightUnit: String
  calories: BigFloat
  data: JSON
  notes: String
  tags: String

EDITABLE FIELDS (for create/update):
  entityId: UUID
  habitId: UUID
  completedAt: Datetime
  activityType: String (optional, has backend default)
  durationMinutes: BigFloat (optional, has backend default)
  distance: BigFloat (optional, has backend default)
  distanceUnit: String (optional, has backend default)
  reps: Int (optional, has backend default)
  sets: Int (optional, has backend default)
  weightAmount: BigFloat (optional, has backend default)
  weightUnit: String (optional, has backend default)
  calories: BigFloat (optional, has backend default)
  data: JSON (optional, has backend default)
  notes: String (optional, has backend default)
  tags: String (optional, has backend default)

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, habitId, completedAt, activityType, durationMinutes, distance, distanceUnit, reps, sets, weightAmount, weightUnit, calories, data, notes, tags }]
  get:    { id, entityId, createdAt, updatedAt, habitId, completedAt, activityType, durationMinutes, distance, distanceUnit, reps, sets, weightAmount, weightUnit, calories, data, notes, tags }
  create: { id, entityId, createdAt, updatedAt, habitId, completedAt, activityType, durationMinutes, distance, distanceUnit, reps, sets, weightAmount, weightUnit, calories, data, notes, tags }
  update: { id, entityId, createdAt, updatedAt, habitId, completedAt, activityType, durationMinutes, distance, distanceUnit, reps, sets, weightAmount, weightUnit, calories, data, notes, tags }
  delete: { id }
```

### TOOL: goal-project

CRUD operations for GoalProject records.

```
SUBCOMMANDS:
  agent-os goal-project list                               List all records
  agent-os goal-project get --id <value>              Get one record
  agent-os goal-project create --goalId <value> --projectId <value> --entityId <value>
  agent-os goal-project update --id <value> [--goalId <value>] [--projectId <value>] [--entityId <value>]
  agent-os goal-project delete --id <value>           Delete one record

INPUT FIELDS:
  goalId: UUID
  projectId: UUID
  id: UUID (primary key)
  entityId: UUID

EDITABLE FIELDS (for create/update):
  goalId: UUID
  projectId: UUID
  entityId: UUID

OUTPUT: JSON
  list:   [{ goalId, projectId, id, entityId }]
  get:    { goalId, projectId, id, entityId }
  create: { goalId, projectId, id, entityId }
  update: { goalId, projectId, id, entityId }
  delete: { id }
```

### TOOL: milestone

CRUD operations for Milestone records.

```
SUBCOMMANDS:
  agent-os milestone list                               List all records
  agent-os milestone get --id <value>              Get one record
  agent-os milestone create --entityId <value> --name <value> [--projectId <value>] [--dueDate <value>] [--status <value>]
  agent-os milestone update --id <value> [--entityId <value>] [--projectId <value>] [--name <value>] [--dueDate <value>] [--status <value>]
  agent-os milestone delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  projectId: UUID
  name: String
  dueDate: Datetime
  status: String

EDITABLE FIELDS (for create/update):
  entityId: UUID
  projectId: UUID (optional, has backend default)
  name: String
  dueDate: Datetime (optional, has backend default)
  status: String (optional, has backend default)

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, projectId, name, dueDate, status }]
  get:    { id, entityId, createdAt, updatedAt, projectId, name, dueDate, status }
  create: { id, entityId, createdAt, updatedAt, projectId, name, dueDate, status }
  update: { id, entityId, createdAt, updatedAt, projectId, name, dueDate, status }
  delete: { id }
```

### TOOL: project-contact

CRUD operations for ProjectContact records.

```
SUBCOMMANDS:
  agent-os project-contact list                               List all records
  agent-os project-contact get --id <value>              Get one record
  agent-os project-contact create --projectId <value> --contactId <value> --entityId <value>
  agent-os project-contact update --id <value> [--projectId <value>] [--contactId <value>] [--entityId <value>]
  agent-os project-contact delete --id <value>           Delete one record

INPUT FIELDS:
  projectId: UUID
  contactId: UUID
  id: UUID (primary key)
  entityId: UUID

EDITABLE FIELDS (for create/update):
  projectId: UUID
  contactId: UUID
  entityId: UUID

OUTPUT: JSON
  list:   [{ projectId, contactId, id, entityId }]
  get:    { projectId, contactId, id, entityId }
  create: { projectId, contactId, id, entityId }
  update: { projectId, contactId, id, entityId }
  delete: { id }
```

### TOOL: task-contact

CRUD operations for TaskContact records.

```
SUBCOMMANDS:
  agent-os task-contact list                               List all records
  agent-os task-contact get --id <value>              Get one record
  agent-os task-contact create --taskId <value> --contactId <value> --entityId <value>
  agent-os task-contact update --id <value> [--taskId <value>] [--contactId <value>] [--entityId <value>]
  agent-os task-contact delete --id <value>           Delete one record

INPUT FIELDS:
  taskId: UUID
  contactId: UUID
  id: UUID (primary key)
  entityId: UUID

EDITABLE FIELDS (for create/update):
  taskId: UUID
  contactId: UUID
  entityId: UUID

OUTPUT: JSON
  list:   [{ taskId, contactId, id, entityId }]
  get:    { taskId, contactId, id, entityId }
  create: { taskId, contactId, id, entityId }
  update: { taskId, contactId, id, entityId }
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

### TOOL: file

CRUD operations for File records.

```
SUBCOMMANDS:
  agent-os file list                               List all records
  agent-os file get --id <value>              Get one record
  agent-os file create --entityId <value> --path <value> [--repositoryId <value>] [--language <value>] [--hash <value>]
  agent-os file update --id <value> [--entityId <value>] [--repositoryId <value>] [--path <value>] [--language <value>] [--hash <value>]
  agent-os file delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  repositoryId: UUID
  path: String
  language: String
  hash: String

EDITABLE FIELDS (for create/update):
  entityId: UUID
  repositoryId: UUID (optional, has backend default)
  path: String
  language: String (optional, has backend default)
  hash: String (optional, has backend default)

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, repositoryId, path, language, hash }]
  get:    { id, entityId, createdAt, updatedAt, repositoryId, path, language, hash }
  create: { id, entityId, createdAt, updatedAt, repositoryId, path, language, hash }
  update: { id, entityId, createdAt, updatedAt, repositoryId, path, language, hash }
  delete: { id }
```

### TOOL: chunk

CRUD operations for Chunk records.

```
SUBCOMMANDS:
  agent-os chunk list                               List all records
  agent-os chunk get --id <value>              Get one record
  agent-os chunk create --entityId <value> --content <value> --embeddingDistance <value> [--fileId <value>] [--repositoryId <value>] [--startLine <value>] [--endLine <value>] [--embeddingText <value>] [--embedding <value>]
  agent-os chunk update --id <value> [--entityId <value>] [--fileId <value>] [--repositoryId <value>] [--content <value>] [--startLine <value>] [--endLine <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os chunk delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  fileId: UUID
  repositoryId: UUID
  content: String
  startLine: Int
  endLine: Int
  embeddingText: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  fileId: UUID (optional, has backend default)
  repositoryId: UUID (optional, has backend default)
  content: String
  startLine: Int (optional, has backend default)
  endLine: Int (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, fileId, repositoryId, content, startLine, endLine, embeddingText, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, fileId, repositoryId, content, startLine, endLine, embeddingText, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, fileId, repositoryId, content, startLine, endLine, embeddingText, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, fileId, repositoryId, content, startLine, endLine, embeddingText, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: calendar-account

CRUD operations for CalendarAccount records.

```
SUBCOMMANDS:
  agent-os calendar-account list                               List all records
  agent-os calendar-account get --id <value>              Get one record
  agent-os calendar-account create --entityId <value> --email <value> [--provider <value>] [--syncToken <value>] [--lastSyncedAt <value>]
  agent-os calendar-account update --id <value> [--entityId <value>] [--email <value>] [--provider <value>] [--syncToken <value>] [--lastSyncedAt <value>]
  agent-os calendar-account delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  email: String
  provider: String
  syncToken: String
  lastSyncedAt: Datetime

EDITABLE FIELDS (for create/update):
  entityId: UUID
  email: String
  provider: String (optional, has backend default)
  syncToken: String (optional, has backend default)
  lastSyncedAt: Datetime (optional, has backend default)

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, email, provider, syncToken, lastSyncedAt }]
  get:    { id, entityId, createdAt, updatedAt, email, provider, syncToken, lastSyncedAt }
  create: { id, entityId, createdAt, updatedAt, email, provider, syncToken, lastSyncedAt }
  update: { id, entityId, createdAt, updatedAt, email, provider, syncToken, lastSyncedAt }
  delete: { id }
```

### TOOL: tag

CRUD operations for Tag records.

```
SUBCOMMANDS:
  agent-os tag list                               List all records
  agent-os tag get --id <value>              Get one record
  agent-os tag create --entityId <value> --name <value> [--color <value>] [--category <value>] [--usageCount <value>]
  agent-os tag update --id <value> [--entityId <value>] [--name <value>] [--color <value>] [--category <value>] [--usageCount <value>]
  agent-os tag delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  name: String
  color: String
  category: String
  usageCount: Int

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  color: String (optional, has backend default)
  category: String (optional, has backend default)
  usageCount: Int (optional, has backend default)

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, color, category, usageCount }]
  get:    { id, entityId, createdAt, updatedAt, name, color, category, usageCount }
  create: { id, entityId, createdAt, updatedAt, name, color, category, usageCount }
  update: { id, entityId, createdAt, updatedAt, name, color, category, usageCount }
  delete: { id }
```

### TOOL: feedback

CRUD operations for Feedback records.

```
SUBCOMMANDS:
  agent-os feedback list                               List all records
  agent-os feedback get --id <value>              Get one record
  agent-os feedback create --entityId <value> --targetType <value> --targetId <value> [--rating <value>] [--comment <value>] [--source <value>]
  agent-os feedback update --id <value> [--entityId <value>] [--targetType <value>] [--targetId <value>] [--rating <value>] [--comment <value>] [--source <value>]
  agent-os feedback delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  targetType: String
  targetId: UUID
  rating: Int
  comment: String
  source: String

EDITABLE FIELDS (for create/update):
  entityId: UUID
  targetType: String
  targetId: UUID
  rating: Int (optional, has backend default)
  comment: String (optional, has backend default)
  source: String (optional, has backend default)

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, targetType, targetId, rating, comment, source }]
  get:    { id, entityId, createdAt, updatedAt, targetType, targetId, rating, comment, source }
  create: { id, entityId, createdAt, updatedAt, targetType, targetId, rating, comment, source }
  update: { id, entityId, createdAt, updatedAt, targetType, targetId, rating, comment, source }
  delete: { id }
```

### TOOL: attachment

CRUD operations for Attachment records.

```
SUBCOMMANDS:
  agent-os attachment list                               List all records
  agent-os attachment get --id <value>              Get one record
  agent-os attachment create --entityId <value> --url <value> [--filename <value>] [--mimeType <value>] [--sizeBytes <value>] [--attachableType <value>] [--attachableId <value>]
  agent-os attachment update --id <value> [--entityId <value>] [--url <value>] [--filename <value>] [--mimeType <value>] [--sizeBytes <value>] [--attachableType <value>] [--attachableId <value>]
  agent-os attachment delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  url: String
  filename: String
  mimeType: String
  sizeBytes: Int
  attachableType: String
  attachableId: UUID

EDITABLE FIELDS (for create/update):
  entityId: UUID
  url: String
  filename: String (optional, has backend default)
  mimeType: String (optional, has backend default)
  sizeBytes: Int (optional, has backend default)
  attachableType: String (optional, has backend default)
  attachableId: UUID (optional, has backend default)

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, url, filename, mimeType, sizeBytes, attachableType, attachableId }]
  get:    { id, entityId, createdAt, updatedAt, url, filename, mimeType, sizeBytes, attachableType, attachableId }
  create: { id, entityId, createdAt, updatedAt, url, filename, mimeType, sizeBytes, attachableType, attachableId }
  update: { id, entityId, createdAt, updatedAt, url, filename, mimeType, sizeBytes, attachableType, attachableId }
  delete: { id }
```

### TOOL: email-account

CRUD operations for EmailAccount records.

```
SUBCOMMANDS:
  agent-os email-account list                               List all records
  agent-os email-account get --id <value>              Get one record
  agent-os email-account create --entityId <value> --email <value> [--provider <value>] [--syncState <value>]
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
  provider: String (optional, has backend default)
  syncState: JSON (optional, has backend default)

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
  agent-os message create --entityId <value> --embeddingDistance <value> [--emailAccountId <value>] [--threadId <value>] [--remoteId <value>] [--fromAddress <value>] [--toAddresses <value>] [--subject <value>] [--bodyText <value>] [--receivedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agent-os message update --id <value> [--entityId <value>] [--emailAccountId <value>] [--threadId <value>] [--remoteId <value>] [--fromAddress <value>] [--toAddresses <value>] [--subject <value>] [--bodyText <value>] [--receivedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os message delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  emailAccountId: UUID
  threadId: String
  remoteId: String
  fromAddress: String
  toAddresses: String
  subject: String
  bodyText: String
  receivedAt: Datetime
  tags: String
  embeddingText: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  emailAccountId: UUID (optional, has backend default)
  threadId: String (optional, has backend default)
  remoteId: String (optional, has backend default)
  fromAddress: String (optional, has backend default)
  toAddresses: String (optional, has backend default)
  subject: String (optional, has backend default)
  bodyText: String (optional, has backend default)
  receivedAt: Datetime (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, emailAccountId, threadId, remoteId, fromAddress, toAddresses, subject, bodyText, receivedAt, tags, embeddingText, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, emailAccountId, threadId, remoteId, fromAddress, toAddresses, subject, bodyText, receivedAt, tags, embeddingText, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, emailAccountId, threadId, remoteId, fromAddress, toAddresses, subject, bodyText, receivedAt, tags, embeddingText, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, emailAccountId, threadId, remoteId, fromAddress, toAddresses, subject, bodyText, receivedAt, tags, embeddingText, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: activity-log

CRUD operations for ActivityLog records.

```
SUBCOMMANDS:
  agent-os activity-log list                               List all records
  agent-os activity-log get --id <value>              Get one record
  agent-os activity-log create --entityId <value> --actorType <value> --action <value> --targetType <value> --targetId <value> [--actorId <value>] [--metadata <value>]
  agent-os activity-log update --id <value> [--entityId <value>] [--actorType <value>] [--actorId <value>] [--action <value>] [--targetType <value>] [--targetId <value>] [--metadata <value>]
  agent-os activity-log delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  actorType: String
  actorId: UUID
  action: String
  targetType: String
  targetId: UUID
  metadata: JSON

EDITABLE FIELDS (for create/update):
  entityId: UUID
  actorType: String
  actorId: UUID (optional, has backend default)
  action: String
  targetType: String
  targetId: UUID
  metadata: JSON (optional, has backend default)

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, actorType, actorId, action, targetType, targetId, metadata }]
  get:    { id, entityId, createdAt, updatedAt, actorType, actorId, action, targetType, targetId, metadata }
  create: { id, entityId, createdAt, updatedAt, actorType, actorId, action, targetType, targetId, metadata }
  update: { id, entityId, createdAt, updatedAt, actorType, actorId, action, targetType, targetId, metadata }
  delete: { id }
```

### TOOL: user-setting

CRUD operations for UserSetting records.

```
SUBCOMMANDS:
  agent-os user-setting list                               List all records
  agent-os user-setting get --id <value>              Get one record
  agent-os user-setting create --entityId <value> --key <value> [--value <value>] [--category <value>]
  agent-os user-setting update --id <value> [--entityId <value>] [--key <value>] [--value <value>] [--category <value>]
  agent-os user-setting delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  key: String
  value: JSON
  category: String

EDITABLE FIELDS (for create/update):
  entityId: UUID
  key: String
  value: JSON (optional, has backend default)
  category: String (optional, has backend default)

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, key, value, category }]
  get:    { id, entityId, createdAt, updatedAt, key, value, category }
  create: { id, entityId, createdAt, updatedAt, key, value, category }
  update: { id, entityId, createdAt, updatedAt, key, value, category }
  delete: { id }
```

### TOOL: execution-log

CRUD operations for ExecutionLog records.

```
SUBCOMMANDS:
  agent-os execution-log list                               List all records
  agent-os execution-log get --id <value>              Get one record
  agent-os execution-log create --entityId <value> [--sessionId <value>] [--stepName <value>] [--input <value>] [--output <value>] [--toolCalls <value>] [--durationMs <value>]
  agent-os execution-log update --id <value> [--entityId <value>] [--sessionId <value>] [--stepName <value>] [--input <value>] [--output <value>] [--toolCalls <value>] [--durationMs <value>]
  agent-os execution-log delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  sessionId: UUID
  stepName: String
  input: String
  output: String
  toolCalls: JSON
  durationMs: Int

EDITABLE FIELDS (for create/update):
  entityId: UUID
  sessionId: UUID (optional, has backend default)
  stepName: String (optional, has backend default)
  input: String (optional, has backend default)
  output: String (optional, has backend default)
  toolCalls: JSON (optional, has backend default)
  durationMs: Int (optional, has backend default)

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, sessionId, stepName, input, output, toolCalls, durationMs }]
  get:    { id, entityId, createdAt, updatedAt, sessionId, stepName, input, output, toolCalls, durationMs }
  create: { id, entityId, createdAt, updatedAt, sessionId, stepName, input, output, toolCalls, durationMs }
  update: { id, entityId, createdAt, updatedAt, sessionId, stepName, input, output, toolCalls, durationMs }
  delete: { id }
```

### TOOL: webhook

CRUD operations for Webhook records.

```
SUBCOMMANDS:
  agent-os webhook list                               List all records
  agent-os webhook get --id <value>              Get one record
  agent-os webhook create --entityId <value> --url <value> --eventType <value> [--integrationId <value>] [--secret <value>] [--isActive <value>]
  agent-os webhook update --id <value> [--entityId <value>] [--integrationId <value>] [--url <value>] [--eventType <value>] [--secret <value>] [--isActive <value>]
  agent-os webhook delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  integrationId: UUID
  url: String
  eventType: String
  secret: String
  isActive: Boolean

EDITABLE FIELDS (for create/update):
  entityId: UUID
  integrationId: UUID (optional, has backend default)
  url: String
  eventType: String
  secret: String (optional, has backend default)
  isActive: Boolean (optional, has backend default)

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, integrationId, url, eventType, secret, isActive }]
  get:    { id, entityId, createdAt, updatedAt, integrationId, url, eventType, secret, isActive }
  create: { id, entityId, createdAt, updatedAt, integrationId, url, eventType, secret, isActive }
  update: { id, entityId, createdAt, updatedAt, integrationId, url, eventType, secret, isActive }
  delete: { id }
```

### TOOL: notification

CRUD operations for Notification records.

```
SUBCOMMANDS:
  agent-os notification list                               List all records
  agent-os notification get --id <value>              Get one record
  agent-os notification create --entityId <value> [--title <value>] [--body <value>] [--type <value>] [--priority <value>] [--readAt <value>] [--actionUrl <value>] [--sourceEntityId <value>] [--sourceEntityType <value>]
  agent-os notification update --id <value> [--entityId <value>] [--title <value>] [--body <value>] [--type <value>] [--priority <value>] [--readAt <value>] [--actionUrl <value>] [--sourceEntityId <value>] [--sourceEntityType <value>]
  agent-os notification delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  title: String
  body: String
  type: String
  priority: String
  readAt: Datetime
  actionUrl: String
  sourceEntityId: UUID
  sourceEntityType: String

EDITABLE FIELDS (for create/update):
  entityId: UUID
  title: String (optional, has backend default)
  body: String (optional, has backend default)
  type: String (optional, has backend default)
  priority: String (optional, has backend default)
  readAt: Datetime (optional, has backend default)
  actionUrl: String (optional, has backend default)
  sourceEntityId: UUID (optional, has backend default)
  sourceEntityType: String (optional, has backend default)

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, body, type, priority, readAt, actionUrl, sourceEntityId, sourceEntityType }]
  get:    { id, entityId, createdAt, updatedAt, title, body, type, priority, readAt, actionUrl, sourceEntityId, sourceEntityType }
  create: { id, entityId, createdAt, updatedAt, title, body, type, priority, readAt, actionUrl, sourceEntityId, sourceEntityType }
  update: { id, entityId, createdAt, updatedAt, title, body, type, priority, readAt, actionUrl, sourceEntityId, sourceEntityType }
  delete: { id }
```

### TOOL: workflow-run

CRUD operations for WorkflowRun records.

```
SUBCOMMANDS:
  agent-os workflow-run list                               List all records
  agent-os workflow-run get --id <value>              Get one record
  agent-os workflow-run create --entityId <value> --workflowId <value> [--status <value>] [--startedAt <value>] [--completedAt <value>] [--input <value>] [--output <value>] [--error <value>]
  agent-os workflow-run update --id <value> [--entityId <value>] [--workflowId <value>] [--status <value>] [--startedAt <value>] [--completedAt <value>] [--input <value>] [--output <value>] [--error <value>]
  agent-os workflow-run delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  workflowId: UUID
  status: String
  startedAt: Datetime
  completedAt: Datetime
  input: JSON
  output: JSON
  error: String

EDITABLE FIELDS (for create/update):
  entityId: UUID
  workflowId: UUID
  status: String (optional, has backend default)
  startedAt: Datetime (optional, has backend default)
  completedAt: Datetime (optional, has backend default)
  input: JSON (optional, has backend default)
  output: JSON (optional, has backend default)
  error: String (optional, has backend default)

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, workflowId, status, startedAt, completedAt, input, output, error }]
  get:    { id, entityId, createdAt, updatedAt, workflowId, status, startedAt, completedAt, input, output, error }
  create: { id, entityId, createdAt, updatedAt, workflowId, status, startedAt, completedAt, input, output, error }
  update: { id, entityId, createdAt, updatedAt, workflowId, status, startedAt, completedAt, input, output, error }
  delete: { id }
```

### TOOL: workflow-step

CRUD operations for WorkflowStep records.

```
SUBCOMMANDS:
  agent-os workflow-step list                               List all records
  agent-os workflow-step get --id <value>              Get one record
  agent-os workflow-step create --entityId <value> --workflowId <value> --stepOrder <value> --actionType <value> [--actionConfig <value>] [--onSuccessStep <value>] [--onFailureStep <value>] [--timeoutMs <value>]
  agent-os workflow-step update --id <value> [--entityId <value>] [--workflowId <value>] [--stepOrder <value>] [--actionType <value>] [--actionConfig <value>] [--onSuccessStep <value>] [--onFailureStep <value>] [--timeoutMs <value>]
  agent-os workflow-step delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  workflowId: UUID
  stepOrder: Int
  actionType: String
  actionConfig: JSON
  onSuccessStep: Int
  onFailureStep: Int
  timeoutMs: Int

EDITABLE FIELDS (for create/update):
  entityId: UUID
  workflowId: UUID
  stepOrder: Int
  actionType: String
  actionConfig: JSON (optional, has backend default)
  onSuccessStep: Int (optional, has backend default)
  onFailureStep: Int (optional, has backend default)
  timeoutMs: Int (optional, has backend default)

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, workflowId, stepOrder, actionType, actionConfig, onSuccessStep, onFailureStep, timeoutMs }]
  get:    { id, entityId, createdAt, updatedAt, workflowId, stepOrder, actionType, actionConfig, onSuccessStep, onFailureStep, timeoutMs }
  create: { id, entityId, createdAt, updatedAt, workflowId, stepOrder, actionType, actionConfig, onSuccessStep, onFailureStep, timeoutMs }
  update: { id, entityId, createdAt, updatedAt, workflowId, stepOrder, actionType, actionConfig, onSuccessStep, onFailureStep, timeoutMs }
  delete: { id }
```

### TOOL: integration

CRUD operations for Integration records.

```
SUBCOMMANDS:
  agent-os integration list                               List all records
  agent-os integration get --id <value>              Get one record
  agent-os integration create --entityId <value> --name <value> --provider <value> [--type <value>] [--credentialsRef <value>] [--config <value>] [--status <value>] [--lastSyncedAt <value>]
  agent-os integration update --id <value> [--entityId <value>] [--name <value>] [--provider <value>] [--type <value>] [--credentialsRef <value>] [--config <value>] [--status <value>] [--lastSyncedAt <value>]
  agent-os integration delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  name: String
  provider: String
  type: String
  credentialsRef: String
  config: JSON
  status: String
  lastSyncedAt: Datetime

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  provider: String
  type: String (optional, has backend default)
  credentialsRef: String (optional, has backend default)
  config: JSON (optional, has backend default)
  status: String (optional, has backend default)
  lastSyncedAt: Datetime (optional, has backend default)

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, provider, type, credentialsRef, config, status, lastSyncedAt }]
  get:    { id, entityId, createdAt, updatedAt, name, provider, type, credentialsRef, config, status, lastSyncedAt }
  create: { id, entityId, createdAt, updatedAt, name, provider, type, credentialsRef, config, status, lastSyncedAt }
  update: { id, entityId, createdAt, updatedAt, name, provider, type, credentialsRef, config, status, lastSyncedAt }
  delete: { id }
```

### TOOL: skill-execution

CRUD operations for SkillExecution records.

```
SUBCOMMANDS:
  agent-os skill-execution list                               List all records
  agent-os skill-execution get --id <value>              Get one record
  agent-os skill-execution create --entityId <value> --skillId <value> [--agentId <value>] [--sessionId <value>] [--status <value>] [--startedAt <value>] [--completedAt <value>] [--durationMs <value>] [--input <value>] [--output <value>] [--error <value>]
  agent-os skill-execution update --id <value> [--entityId <value>] [--skillId <value>] [--agentId <value>] [--sessionId <value>] [--status <value>] [--startedAt <value>] [--completedAt <value>] [--durationMs <value>] [--input <value>] [--output <value>] [--error <value>]
  agent-os skill-execution delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  skillId: UUID
  agentId: UUID
  sessionId: UUID
  status: String
  startedAt: Datetime
  completedAt: Datetime
  durationMs: Int
  input: JSON
  output: JSON
  error: String

EDITABLE FIELDS (for create/update):
  entityId: UUID
  skillId: UUID
  agentId: UUID (optional, has backend default)
  sessionId: UUID (optional, has backend default)
  status: String (optional, has backend default)
  startedAt: Datetime (optional, has backend default)
  completedAt: Datetime (optional, has backend default)
  durationMs: Int (optional, has backend default)
  input: JSON (optional, has backend default)
  output: JSON (optional, has backend default)
  error: String (optional, has backend default)

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, skillId, agentId, sessionId, status, startedAt, completedAt, durationMs, input, output, error }]
  get:    { id, entityId, createdAt, updatedAt, skillId, agentId, sessionId, status, startedAt, completedAt, durationMs, input, output, error }
  create: { id, entityId, createdAt, updatedAt, skillId, agentId, sessionId, status, startedAt, completedAt, durationMs, input, output, error }
  update: { id, entityId, createdAt, updatedAt, skillId, agentId, sessionId, status, startedAt, completedAt, durationMs, input, output, error }
  delete: { id }
```

### TOOL: chat

CRUD operations for Chat records.

```
SUBCOMMANDS:
  agent-os chat list                               List all records
  agent-os chat get --id <value>              Get one record
  agent-os chat create --entityId <value> --embeddingDistance <value> [--title <value>] [--startedAt <value>] [--embeddingText <value>] [--embedding <value>]
  agent-os chat update --id <value> [--entityId <value>] [--title <value>] [--startedAt <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os chat delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  title: String
  startedAt: Datetime
  embeddingText: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  title: String (optional, has backend default)
  startedAt: Datetime (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, startedAt, embeddingText, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, title, startedAt, embeddingText, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, title, startedAt, embeddingText, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, title, startedAt, embeddingText, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: chat-message

CRUD operations for ChatMessage records.

```
SUBCOMMANDS:
  agent-os chat-message list                               List all records
  agent-os chat-message get --id <value>              Get one record
  agent-os chat-message create --entityId <value> --embeddingDistance <value> [--chatId <value>] [--threadId <value>] [--role <value>] [--content <value>] [--toolCalls <value>] [--embeddingText <value>] [--embedding <value>]
  agent-os chat-message update --id <value> [--entityId <value>] [--chatId <value>] [--threadId <value>] [--role <value>] [--content <value>] [--toolCalls <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os chat-message delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  chatId: UUID
  threadId: UUID
  role: String
  content: String
  toolCalls: JSON
  embeddingText: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  chatId: UUID (optional, has backend default)
  threadId: UUID (optional, has backend default)
  role: String (optional, has backend default)
  content: String (optional, has backend default)
  toolCalls: JSON (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, chatId, threadId, role, content, toolCalls, embeddingText, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, chatId, threadId, role, content, toolCalls, embeddingText, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, chatId, threadId, role, content, toolCalls, embeddingText, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, chatId, threadId, role, content, toolCalls, embeddingText, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: thread

CRUD operations for Thread records.

```
SUBCOMMANDS:
  agent-os thread list                               List all records
  agent-os thread get --id <value>              Get one record
  agent-os thread create --entityId <value> --title <value> --embeddingDistance <value> [--summary <value>] [--status <value>] [--parentThreadId <value>] [--embeddingText <value>] [--embedding <value>]
  agent-os thread update --id <value> [--entityId <value>] [--title <value>] [--summary <value>] [--status <value>] [--parentThreadId <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os thread delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  title: String
  summary: String
  status: String
  parentThreadId: UUID
  embeddingText: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  title: String
  summary: String (optional, has backend default)
  status: String (optional, has backend default)
  parentThreadId: UUID (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, summary, status, parentThreadId, embeddingText, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, title, summary, status, parentThreadId, embeddingText, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, title, summary, status, parentThreadId, embeddingText, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, title, summary, status, parentThreadId, embeddingText, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: session

CRUD operations for Session records.

```
SUBCOMMANDS:
  agent-os session list                               List all records
  agent-os session get --id <value>              Get one record
  agent-os session create --entityId <value> --embeddingDistance <value> [--title <value>] [--agentId <value>] [--startedAt <value>] [--endedAt <value>] [--status <value>] [--contextSummary <value>] [--embeddingText <value>] [--embedding <value>]
  agent-os session update --id <value> [--entityId <value>] [--title <value>] [--agentId <value>] [--startedAt <value>] [--endedAt <value>] [--status <value>] [--contextSummary <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os session delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  title: String
  agentId: UUID
  startedAt: Datetime
  endedAt: Datetime
  status: String
  contextSummary: String
  embeddingText: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  title: String (optional, has backend default)
  agentId: UUID (optional, has backend default)
  startedAt: Datetime (optional, has backend default)
  endedAt: Datetime (optional, has backend default)
  status: String (optional, has backend default)
  contextSummary: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, agentId, startedAt, endedAt, status, contextSummary, embeddingText, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, title, agentId, startedAt, endedAt, status, contextSummary, embeddingText, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, title, agentId, startedAt, endedAt, status, contextSummary, embeddingText, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, title, agentId, startedAt, endedAt, status, contextSummary, embeddingText, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: reminder

CRUD operations for Reminder records.

```
SUBCOMMANDS:
  agent-os reminder list                               List all records
  agent-os reminder get --id <value>              Get one record
  agent-os reminder create --entityId <value> --title <value> --embeddingDistance <value> [--dueAt <value>] [--completedAt <value>] [--recurrence <value>] [--status <value>] [--relatedEntityId <value>] [--relatedEntityType <value>] [--embeddingText <value>] [--embedding <value>]
  agent-os reminder update --id <value> [--entityId <value>] [--title <value>] [--dueAt <value>] [--completedAt <value>] [--recurrence <value>] [--status <value>] [--relatedEntityId <value>] [--relatedEntityType <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os reminder delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  title: String
  dueAt: Datetime
  completedAt: Datetime
  recurrence: String
  status: String
  relatedEntityId: UUID
  relatedEntityType: String
  embeddingText: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  title: String
  dueAt: Datetime (optional, has backend default)
  completedAt: Datetime (optional, has backend default)
  recurrence: String (optional, has backend default)
  status: String (optional, has backend default)
  relatedEntityId: UUID (optional, has backend default)
  relatedEntityType: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, dueAt, completedAt, recurrence, status, relatedEntityId, relatedEntityType, embeddingText, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, title, dueAt, completedAt, recurrence, status, relatedEntityId, relatedEntityType, embeddingText, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, title, dueAt, completedAt, recurrence, status, relatedEntityId, relatedEntityType, embeddingText, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, title, dueAt, completedAt, recurrence, status, relatedEntityId, relatedEntityType, embeddingText, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: image

CRUD operations for Image records.

```
SUBCOMMANDS:
  agent-os image list                               List all records
  agent-os image get --id <value>              Get one record
  agent-os image create --entityId <value> --url <value> --embeddingDistance <value> [--meta <value>] [--altText <value>] [--caption <value>] [--embedding <value>]
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
  meta: JSON (optional, has backend default)
  altText: String (optional, has backend default)
  caption: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, url, meta, altText, caption, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, url, meta, altText, caption, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, url, meta, altText, caption, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, url, meta, altText, caption, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: list-item

CRUD operations for ListItem records.

```
SUBCOMMANDS:
  agent-os list-item list                               List all records
  agent-os list-item get --id <value>              Get one record
  agent-os list-item create --entityId <value> --listId <value> [--content <value>] [--position <value>] [--isChecked <value>] [--refId <value>] [--refType <value>]
  agent-os list-item update --id <value> [--entityId <value>] [--listId <value>] [--content <value>] [--position <value>] [--isChecked <value>] [--refId <value>] [--refType <value>]
  agent-os list-item delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  listId: UUID
  content: String
  position: Int
  isChecked: Boolean
  refId: UUID
  refType: String

EDITABLE FIELDS (for create/update):
  entityId: UUID
  listId: UUID
  content: String (optional, has backend default)
  position: Int (optional, has backend default)
  isChecked: Boolean (optional, has backend default)
  refId: UUID (optional, has backend default)
  refType: String (optional, has backend default)

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, listId, content, position, isChecked, refId, refType }]
  get:    { id, entityId, createdAt, updatedAt, listId, content, position, isChecked, refId, refType }
  create: { id, entityId, createdAt, updatedAt, listId, content, position, isChecked, refId, refType }
  update: { id, entityId, createdAt, updatedAt, listId, content, position, isChecked, refId, refType }
  delete: { id }
```

### TOOL: company-link

CRUD operations for CompanyLink records.

```
SUBCOMMANDS:
  agent-os company-link list                               List all records
  agent-os company-link get --id <value>              Get one record
  agent-os company-link create --entityId <value> --url <value> --companyId <value> --embeddingDistance <value> [--title <value>] [--embedding <value>]
  agent-os company-link update --id <value> [--entityId <value>] [--title <value>] [--url <value>] [--embedding <value>] [--companyId <value>] [--embeddingDistance <value>]
  agent-os company-link delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  title: String
  url: String
  embedding: Vector
  companyId: UUID
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  title: String (optional, has backend default)
  url: String
  embedding: Vector (optional, has backend default)
  companyId: UUID
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, url, embedding, companyId, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, title, url, embedding, companyId, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, title, url, embedding, companyId, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, title, url, embedding, companyId, embeddingDistance }
  delete: { id }
```

### TOOL: contact-link

CRUD operations for ContactLink records.

```
SUBCOMMANDS:
  agent-os contact-link list                               List all records
  agent-os contact-link get --id <value>              Get one record
  agent-os contact-link create --entityId <value> --url <value> --contactId <value> --embeddingDistance <value> [--title <value>] [--embedding <value>]
  agent-os contact-link update --id <value> [--entityId <value>] [--title <value>] [--url <value>] [--embedding <value>] [--contactId <value>] [--embeddingDistance <value>]
  agent-os contact-link delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  title: String
  url: String
  embedding: Vector
  contactId: UUID
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  title: String (optional, has backend default)
  url: String
  embedding: Vector (optional, has backend default)
  contactId: UUID
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, url, embedding, contactId, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, title, url, embedding, contactId, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, title, url, embedding, contactId, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, title, url, embedding, contactId, embeddingDistance }
  delete: { id }
```

### TOOL: event-link

CRUD operations for EventLink records.

```
SUBCOMMANDS:
  agent-os event-link list                               List all records
  agent-os event-link get --id <value>              Get one record
  agent-os event-link create --entityId <value> --url <value> --eventId <value> --embeddingDistance <value> [--title <value>] [--embedding <value>]
  agent-os event-link update --id <value> [--entityId <value>] [--title <value>] [--url <value>] [--embedding <value>] [--eventId <value>] [--embeddingDistance <value>]
  agent-os event-link delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  title: String
  url: String
  embedding: Vector
  eventId: UUID
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  title: String (optional, has backend default)
  url: String
  embedding: Vector (optional, has backend default)
  eventId: UUID
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, url, embedding, eventId, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, title, url, embedding, eventId, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, title, url, embedding, eventId, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, title, url, embedding, eventId, embeddingDistance }
  delete: { id }
```

### TOOL: venue-link

CRUD operations for VenueLink records.

```
SUBCOMMANDS:
  agent-os venue-link list                               List all records
  agent-os venue-link get --id <value>              Get one record
  agent-os venue-link create --entityId <value> --url <value> --venueId <value> --embeddingDistance <value> [--title <value>] [--embedding <value>]
  agent-os venue-link update --id <value> [--entityId <value>] [--title <value>] [--url <value>] [--embedding <value>] [--venueId <value>] [--embeddingDistance <value>]
  agent-os venue-link delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  title: String
  url: String
  embedding: Vector
  venueId: UUID
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  title: String (optional, has backend default)
  url: String
  embedding: Vector (optional, has backend default)
  venueId: UUID
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, url, embedding, venueId, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, title, url, embedding, venueId, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, title, url, embedding, venueId, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, title, url, embedding, venueId, embeddingDistance }
  delete: { id }
```

### TOOL: habit

CRUD operations for Habit records.

```
SUBCOMMANDS:
  agent-os habit list                               List all records
  agent-os habit get --id <value>              Get one record
  agent-os habit create --entityId <value> --name <value> [--frequency <value>] [--targetCount <value>] [--currentStreak <value>] [--bestStreak <value>] [--category <value>] [--tags <value>]
  agent-os habit update --id <value> [--entityId <value>] [--name <value>] [--frequency <value>] [--targetCount <value>] [--currentStreak <value>] [--bestStreak <value>] [--category <value>] [--tags <value>]
  agent-os habit delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  name: String
  frequency: String
  targetCount: Int
  currentStreak: Int
  bestStreak: Int
  category: String
  tags: String

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  frequency: String (optional, has backend default)
  targetCount: Int (optional, has backend default)
  currentStreak: Int (optional, has backend default)
  bestStreak: Int (optional, has backend default)
  category: String (optional, has backend default)
  tags: String (optional, has backend default)

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, frequency, targetCount, currentStreak, bestStreak, category, tags }]
  get:    { id, entityId, createdAt, updatedAt, name, frequency, targetCount, currentStreak, bestStreak, category, tags }
  create: { id, entityId, createdAt, updatedAt, name, frequency, targetCount, currentStreak, bestStreak, category, tags }
  update: { id, entityId, createdAt, updatedAt, name, frequency, targetCount, currentStreak, bestStreak, category, tags }
  delete: { id }
```

### TOOL: workflow

CRUD operations for Workflow records.

```
SUBCOMMANDS:
  agent-os workflow list                               List all records
  agent-os workflow get --id <value>              Get one record
  agent-os workflow create --entityId <value> --name <value> [--description <value>] [--triggerType <value>] [--triggerConfig <value>] [--isActive <value>] [--tags <value>]
  agent-os workflow update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--triggerType <value>] [--triggerConfig <value>] [--isActive <value>] [--tags <value>]
  agent-os workflow delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  name: String
  description: String
  triggerType: String
  triggerConfig: JSON
  isActive: Boolean
  tags: String

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  description: String (optional, has backend default)
  triggerType: String (optional, has backend default)
  triggerConfig: JSON (optional, has backend default)
  isActive: Boolean (optional, has backend default)
  tags: String (optional, has backend default)

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, description, triggerType, triggerConfig, isActive, tags }]
  get:    { id, entityId, createdAt, updatedAt, name, description, triggerType, triggerConfig, isActive, tags }
  create: { id, entityId, createdAt, updatedAt, name, description, triggerType, triggerConfig, isActive, tags }
  update: { id, entityId, createdAt, updatedAt, name, description, triggerType, triggerConfig, isActive, tags }
  delete: { id }
```

### TOOL: expense

CRUD operations for Expense records.

```
SUBCOMMANDS:
  agent-os expense list                               List all records
  agent-os expense get --id <value>              Get one record
  agent-os expense create --entityId <value> [--amount <value>] [--currency <value>] [--date <value>] [--category <value>] [--description <value>] [--merchant <value>] [--receiptUrl <value>] [--isRecurring <value>] [--tags <value>]
  agent-os expense update --id <value> [--entityId <value>] [--amount <value>] [--currency <value>] [--date <value>] [--category <value>] [--description <value>] [--merchant <value>] [--receiptUrl <value>] [--isRecurring <value>] [--tags <value>]
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
  isRecurring: Boolean
  tags: String

EDITABLE FIELDS (for create/update):
  entityId: UUID
  amount: BigFloat (optional, has backend default)
  currency: String (optional, has backend default)
  date: Date (optional, has backend default)
  category: String (optional, has backend default)
  description: String (optional, has backend default)
  merchant: String (optional, has backend default)
  receiptUrl: String (optional, has backend default)
  isRecurring: Boolean (optional, has backend default)
  tags: String (optional, has backend default)

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, amount, currency, date, category, description, merchant, receiptUrl, isRecurring, tags }]
  get:    { id, entityId, createdAt, updatedAt, amount, currency, date, category, description, merchant, receiptUrl, isRecurring, tags }
  create: { id, entityId, createdAt, updatedAt, amount, currency, date, category, description, merchant, receiptUrl, isRecurring, tags }
  update: { id, entityId, createdAt, updatedAt, amount, currency, date, category, description, merchant, receiptUrl, isRecurring, tags }
  delete: { id }
```

### TOOL: billing-subscription

CRUD operations for BillingSubscription records.

```
SUBCOMMANDS:
  agent-os billing-subscription list                               List all records
  agent-os billing-subscription get --id <value>              Get one record
  agent-os billing-subscription create --entityId <value> --name <value> [--amount <value>] [--currency <value>] [--frequency <value>] [--provider <value>] [--nextBillingDate <value>] [--cancellationDate <value>] [--status <value>] [--tags <value>] [--notes <value>]
  agent-os billing-subscription update --id <value> [--entityId <value>] [--name <value>] [--amount <value>] [--currency <value>] [--frequency <value>] [--provider <value>] [--nextBillingDate <value>] [--cancellationDate <value>] [--status <value>] [--tags <value>] [--notes <value>]
  agent-os billing-subscription delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  name: String
  amount: BigFloat
  currency: String
  frequency: String
  provider: String
  nextBillingDate: Date
  cancellationDate: Date
  status: String
  tags: String
  notes: String

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  amount: BigFloat (optional, has backend default)
  currency: String (optional, has backend default)
  frequency: String (optional, has backend default)
  provider: String (optional, has backend default)
  nextBillingDate: Date (optional, has backend default)
  cancellationDate: Date (optional, has backend default)
  status: String (optional, has backend default)
  tags: String (optional, has backend default)
  notes: String (optional, has backend default)

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, amount, currency, frequency, provider, nextBillingDate, cancellationDate, status, tags, notes }]
  get:    { id, entityId, createdAt, updatedAt, name, amount, currency, frequency, provider, nextBillingDate, cancellationDate, status, tags, notes }
  create: { id, entityId, createdAt, updatedAt, name, amount, currency, frequency, provider, nextBillingDate, cancellationDate, status, tags, notes }
  update: { id, entityId, createdAt, updatedAt, name, amount, currency, frequency, provider, nextBillingDate, cancellationDate, status, tags, notes }
  delete: { id }
```

### TOOL: idea

CRUD operations for Idea records.

```
SUBCOMMANDS:
  agent-os idea list                               List all records
  agent-os idea get --id <value>              Get one record
  agent-os idea create --entityId <value> --content <value> --embeddingDistance <value> [--source <value>] [--status <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agent-os idea update --id <value> [--entityId <value>] [--content <value>] [--source <value>] [--status <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os idea delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  content: String
  source: String
  status: String
  tags: String
  embeddingText: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  content: String
  source: String (optional, has backend default)
  status: String (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, content, source, status, tags, embeddingText, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, content, source, status, tags, embeddingText, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, content, source, status, tags, embeddingText, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, content, source, status, tags, embeddingText, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: list

CRUD operations for List records.

```
SUBCOMMANDS:
  agent-os list list                               List all records
  agent-os list get --id <value>              Get one record
  agent-os list create --entityId <value> --name <value> --embeddingDistance <value> [--description <value>] [--type <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agent-os list update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--type <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os list delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  name: String
  description: String
  type: String
  tags: String
  embeddingText: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  description: String (optional, has backend default)
  type: String (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, description, type, tags, embeddingText, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, name, description, type, tags, embeddingText, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, name, description, type, tags, embeddingText, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, name, description, type, tags, embeddingText, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: note

CRUD operations for Note records.

```
SUBCOMMANDS:
  agent-os note list                               List all records
  agent-os note get --id <value>              Get one record
  agent-os note create --entityId <value> --content <value> --embeddingDistance <value> [--notableType <value>] [--notableId <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agent-os note update --id <value> [--entityId <value>] [--content <value>] [--notableType <value>] [--notableId <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os note delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  content: String
  notableType: String
  notableId: UUID
  tags: String
  embeddingText: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  content: String
  notableType: String (optional, has backend default)
  notableId: UUID (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, content, notableType, notableId, tags, embeddingText, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, content, notableType, notableId, tags, embeddingText, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, content, notableType, notableId, tags, embeddingText, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, content, notableType, notableId, tags, embeddingText, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: repository

CRUD operations for Repository records.

```
SUBCOMMANDS:
  agent-os repository list                               List all records
  agent-os repository get --id <value>              Get one record
  agent-os repository create --entityId <value> --name <value> --embeddingDistance <value> [--url <value>] [--description <value>] [--defaultBranch <value>] [--lastSyncedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agent-os repository update --id <value> [--entityId <value>] [--name <value>] [--url <value>] [--description <value>] [--defaultBranch <value>] [--lastSyncedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
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
  tags: String
  embeddingText: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  url: String (optional, has backend default)
  description: String (optional, has backend default)
  defaultBranch: String (optional, has backend default)
  lastSyncedAt: Datetime (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, url, description, defaultBranch, lastSyncedAt, tags, embeddingText, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, name, url, description, defaultBranch, lastSyncedAt, tags, embeddingText, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, name, url, description, defaultBranch, lastSyncedAt, tags, embeddingText, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, name, url, description, defaultBranch, lastSyncedAt, tags, embeddingText, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: deal

CRUD operations for Deal records.

```
SUBCOMMANDS:
  agent-os deal list                               List all records
  agent-os deal get --id <value>              Get one record
  agent-os deal create --entityId <value> --name <value> --embeddingDistance <value> [--stage <value>] [--value <value>] [--currency <value>] [--expectedCloseDate <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agent-os deal update --id <value> [--entityId <value>] [--name <value>] [--stage <value>] [--value <value>] [--currency <value>] [--expectedCloseDate <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os deal delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  name: String
  stage: String
  value: BigFloat
  currency: String
  expectedCloseDate: Datetime
  notes: String
  tags: String
  embeddingText: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  stage: String (optional, has backend default)
  value: BigFloat (optional, has backend default)
  currency: String (optional, has backend default)
  expectedCloseDate: Datetime (optional, has backend default)
  notes: String (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, stage, value, currency, expectedCloseDate, notes, tags, embeddingText, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, name, stage, value, currency, expectedCloseDate, notes, tags, embeddingText, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, name, stage, value, currency, expectedCloseDate, notes, tags, embeddingText, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, name, stage, value, currency, expectedCloseDate, notes, tags, embeddingText, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: goal

CRUD operations for Goal records.

```
SUBCOMMANDS:
  agent-os goal list                               List all records
  agent-os goal get --id <value>              Get one record
  agent-os goal create --entityId <value> --title <value> --embeddingDistance <value> [--description <value>] [--targetDate <value>] [--status <value>] [--category <value>] [--progressPct <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agent-os goal update --id <value> [--entityId <value>] [--title <value>] [--description <value>] [--targetDate <value>] [--status <value>] [--category <value>] [--progressPct <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os goal delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  title: String
  description: String
  targetDate: Datetime
  status: String
  category: String
  progressPct: Int
  tags: String
  embeddingText: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  title: String
  description: String (optional, has backend default)
  targetDate: Datetime (optional, has backend default)
  status: String (optional, has backend default)
  category: String (optional, has backend default)
  progressPct: Int (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, description, targetDate, status, category, progressPct, tags, embeddingText, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, title, description, targetDate, status, category, progressPct, tags, embeddingText, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, title, description, targetDate, status, category, progressPct, tags, embeddingText, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, title, description, targetDate, status, category, progressPct, tags, embeddingText, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: prompt

CRUD operations for Prompt records.

```
SUBCOMMANDS:
  agent-os prompt list                               List all records
  agent-os prompt get --id <value>              Get one record
  agent-os prompt create --entityId <value> --name <value> --content <value> --embeddingDistance <value> [--type <value>] [--model <value>] [--version <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agent-os prompt update --id <value> [--entityId <value>] [--name <value>] [--content <value>] [--type <value>] [--model <value>] [--version <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os prompt delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  name: String
  content: String
  type: String
  model: String
  version: Int
  isActive: Boolean
  tags: String
  embeddingText: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  content: String
  type: String (optional, has backend default)
  model: String (optional, has backend default)
  version: Int (optional, has backend default)
  isActive: Boolean (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, content, type, model, version, isActive, tags, embeddingText, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, name, content, type, model, version, isActive, tags, embeddingText, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, name, content, type, model, version, isActive, tags, embeddingText, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, name, content, type, model, version, isActive, tags, embeddingText, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: blueprint

CRUD operations for Blueprint records.

```
SUBCOMMANDS:
  agent-os blueprint list                               List all records
  agent-os blueprint get --id <value>              Get one record
  agent-os blueprint create --entityId <value> --title <value> --embeddingDistance <value> [--steps <value>] [--triggerConditions <value>] [--conversationId <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agent-os blueprint update --id <value> [--entityId <value>] [--title <value>] [--steps <value>] [--triggerConditions <value>] [--conversationId <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os blueprint delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  title: String
  steps: JSON
  triggerConditions: String
  conversationId: UUID
  tags: String
  embeddingText: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  title: String
  steps: JSON (optional, has backend default)
  triggerConditions: String (optional, has backend default)
  conversationId: UUID (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, steps, triggerConditions, conversationId, tags, embeddingText, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, title, steps, triggerConditions, conversationId, tags, embeddingText, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, title, steps, triggerConditions, conversationId, tags, embeddingText, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, title, steps, triggerConditions, conversationId, tags, embeddingText, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: template

CRUD operations for Template records.

```
SUBCOMMANDS:
  agent-os template list                               List all records
  agent-os template get --id <value>              Get one record
  agent-os template create --entityId <value> --name <value> --content <value> --embeddingDistance <value> [--description <value>] [--type <value>] [--variables <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agent-os template update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--type <value>] [--content <value>] [--variables <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os template delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  name: String
  description: String
  type: String
  content: JSON
  variables: JSON
  isActive: Boolean
  tags: String
  embeddingText: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  description: String (optional, has backend default)
  type: String (optional, has backend default)
  content: JSON
  variables: JSON (optional, has backend default)
  isActive: Boolean (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, description, type, content, variables, isActive, tags, embeddingText, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, name, description, type, content, variables, isActive, tags, embeddingText, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, name, description, type, content, variables, isActive, tags, embeddingText, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, name, description, type, content, variables, isActive, tags, embeddingText, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: tool

CRUD operations for Tool records.

```
SUBCOMMANDS:
  agent-os tool list                               List all records
  agent-os tool get --id <value>              Get one record
  agent-os tool create --entityId <value> --name <value> --embeddingDistance <value> [--description <value>] [--type <value>] [--inputSchema <value>] [--outputSchema <value>] [--endpoint <value>] [--authMethod <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agent-os tool update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--type <value>] [--inputSchema <value>] [--outputSchema <value>] [--endpoint <value>] [--authMethod <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os tool delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  name: String
  description: String
  type: String
  inputSchema: JSON
  outputSchema: JSON
  endpoint: String
  authMethod: String
  isActive: Boolean
  tags: String
  embeddingText: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  description: String (optional, has backend default)
  type: String (optional, has backend default)
  inputSchema: JSON (optional, has backend default)
  outputSchema: JSON (optional, has backend default)
  endpoint: String (optional, has backend default)
  authMethod: String (optional, has backend default)
  isActive: Boolean (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, description, type, inputSchema, outputSchema, endpoint, authMethod, isActive, tags, embeddingText, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, name, description, type, inputSchema, outputSchema, endpoint, authMethod, isActive, tags, embeddingText, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, name, description, type, inputSchema, outputSchema, endpoint, authMethod, isActive, tags, embeddingText, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, name, description, type, inputSchema, outputSchema, endpoint, authMethod, isActive, tags, embeddingText, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: memory

CRUD operations for Memory records.

```
SUBCOMMANDS:
  agent-os memory list                               List all records
  agent-os memory get --id <value>              Get one record
  agent-os memory create --entityId <value> --content <value> --embeddingDistance <value> [--memoryType <value>] [--agentId <value>] [--importance <value>] [--verified <value>] [--source <value>] [--relatedEntityType <value>] [--relatedEntityId <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agent-os memory update --id <value> [--entityId <value>] [--content <value>] [--memoryType <value>] [--agentId <value>] [--importance <value>] [--verified <value>] [--source <value>] [--relatedEntityType <value>] [--relatedEntityId <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os memory delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  content: String
  memoryType: String
  agentId: UUID
  importance: Int
  verified: Boolean
  source: String
  relatedEntityType: String
  relatedEntityId: UUID
  tags: String
  embeddingText: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  content: String
  memoryType: String (optional, has backend default)
  agentId: UUID (optional, has backend default)
  importance: Int (optional, has backend default)
  verified: Boolean (optional, has backend default)
  source: String (optional, has backend default)
  relatedEntityType: String (optional, has backend default)
  relatedEntityId: UUID (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, content, memoryType, agentId, importance, verified, source, relatedEntityType, relatedEntityId, tags, embeddingText, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, content, memoryType, agentId, importance, verified, source, relatedEntityType, relatedEntityId, tags, embeddingText, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, content, memoryType, agentId, importance, verified, source, relatedEntityType, relatedEntityId, tags, embeddingText, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, content, memoryType, agentId, importance, verified, source, relatedEntityType, relatedEntityId, tags, embeddingText, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: recipe

CRUD operations for Recipe records.

```
SUBCOMMANDS:
  agent-os recipe list                               List all records
  agent-os recipe get --id <value>              Get one record
  agent-os recipe create --entityId <value> --name <value> --embeddingDistance <value> [--description <value>] [--cuisine <value>] [--prepTimeMinutes <value>] [--cookTimeMinutes <value>] [--servings <value>] [--difficulty <value>] [--ingredients <value>] [--instructions <value>] [--sourceUrl <value>] [--imageUrl <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agent-os recipe update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--cuisine <value>] [--prepTimeMinutes <value>] [--cookTimeMinutes <value>] [--servings <value>] [--difficulty <value>] [--ingredients <value>] [--instructions <value>] [--sourceUrl <value>] [--imageUrl <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os recipe delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  name: String
  description: String
  cuisine: String
  prepTimeMinutes: Int
  cookTimeMinutes: Int
  servings: Int
  difficulty: String
  ingredients: JSON
  instructions: JSON
  sourceUrl: String
  imageUrl: String
  tags: String
  embeddingText: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  description: String (optional, has backend default)
  cuisine: String (optional, has backend default)
  prepTimeMinutes: Int (optional, has backend default)
  cookTimeMinutes: Int (optional, has backend default)
  servings: Int (optional, has backend default)
  difficulty: String (optional, has backend default)
  ingredients: JSON (optional, has backend default)
  instructions: JSON (optional, has backend default)
  sourceUrl: String (optional, has backend default)
  imageUrl: String (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, description, cuisine, prepTimeMinutes, cookTimeMinutes, servings, difficulty, ingredients, instructions, sourceUrl, imageUrl, tags, embeddingText, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, name, description, cuisine, prepTimeMinutes, cookTimeMinutes, servings, difficulty, ingredients, instructions, sourceUrl, imageUrl, tags, embeddingText, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, name, description, cuisine, prepTimeMinutes, cookTimeMinutes, servings, difficulty, ingredients, instructions, sourceUrl, imageUrl, tags, embeddingText, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, name, description, cuisine, prepTimeMinutes, cookTimeMinutes, servings, difficulty, ingredients, instructions, sourceUrl, imageUrl, tags, embeddingText, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: trip

CRUD operations for Trip records.

```
SUBCOMMANDS:
  agent-os trip list                               List all records
  agent-os trip get --id <value>              Get one record
  agent-os trip create --entityId <value> --name <value> --embeddingDistance <value> [--destination <value>] [--startDate <value>] [--endDate <value>] [--status <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agent-os trip update --id <value> [--entityId <value>] [--name <value>] [--destination <value>] [--startDate <value>] [--endDate <value>] [--status <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os trip delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  name: String
  destination: String
  startDate: Date
  endDate: Date
  status: String
  notes: String
  tags: String
  embeddingText: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  destination: String (optional, has backend default)
  startDate: Date (optional, has backend default)
  endDate: Date (optional, has backend default)
  status: String (optional, has backend default)
  notes: String (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, destination, startDate, endDate, status, notes, tags, embeddingText, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, name, destination, startDate, endDate, status, notes, tags, embeddingText, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, name, destination, startDate, endDate, status, notes, tags, embeddingText, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, name, destination, startDate, endDate, status, notes, tags, embeddingText, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: rule

CRUD operations for Rule records.

```
SUBCOMMANDS:
  agent-os rule list                               List all records
  agent-os rule get --id <value>              Get one record
  agent-os rule create --entityId <value> --title <value> --embeddingDistance <value> --triggerConceptDistance <value> [--content <value>] [--kind <value>] [--severity <value>] [--isActive <value>] [--slug <value>] [--verification <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--triggerConcept <value>]
  agent-os rule update --id <value> [--entityId <value>] [--title <value>] [--content <value>] [--kind <value>] [--severity <value>] [--isActive <value>] [--slug <value>] [--verification <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--triggerConcept <value>] [--embeddingDistance <value>] [--triggerConceptDistance <value>]
  agent-os rule delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  title: String
  content: String
  kind: String
  severity: String
  isActive: Boolean
  slug: String
  verification: String
  tags: String
  embeddingText: String
  embedding: Vector
  triggerConcept: Vector
  embeddingDistance: Float
  triggerConceptDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  title: String
  content: String (optional, has backend default)
  kind: String (optional, has backend default)
  severity: String (optional, has backend default)
  isActive: Boolean (optional, has backend default)
  slug: String (optional, has backend default)
  verification: String (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  triggerConcept: Vector (optional, has backend default)
  embeddingDistance: Float
  triggerConceptDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, content, kind, severity, isActive, slug, verification, tags, embeddingText, embedding, triggerConcept, embeddingDistance, triggerConceptDistance }]
  get:    { id, entityId, createdAt, updatedAt, title, content, kind, severity, isActive, slug, verification, tags, embeddingText, embedding, triggerConcept, embeddingDistance, triggerConceptDistance }
  create: { id, entityId, createdAt, updatedAt, title, content, kind, severity, isActive, slug, verification, tags, embeddingText, embedding, triggerConcept, embeddingDistance, triggerConceptDistance }
  update: { id, entityId, createdAt, updatedAt, title, content, kind, severity, isActive, slug, verification, tags, embeddingText, embedding, triggerConcept, embeddingDistance, triggerConceptDistance }
  delete: { id }
```

### TOOL: skill

CRUD operations for Skill records.

```
SUBCOMMANDS:
  agent-os skill list                               List all records
  agent-os skill get --id <value>              Get one record
  agent-os skill create --entityId <value> --name <value> --embeddingDistance <value> --intentTriggerDistance <value> [--slug <value>] [--description <value>] [--content <value>] [--procedure <value>] [--interface <value>] [--requirements <value>] [--filePath <value>] [--contentHash <value>] [--category <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--intentTrigger <value>]
  agent-os skill update --id <value> [--entityId <value>] [--name <value>] [--slug <value>] [--description <value>] [--content <value>] [--procedure <value>] [--interface <value>] [--requirements <value>] [--filePath <value>] [--contentHash <value>] [--category <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--intentTrigger <value>] [--embeddingDistance <value>] [--intentTriggerDistance <value>]
  agent-os skill delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  name: String
  slug: String
  description: String
  content: String
  procedure: String
  interface: JSON
  requirements: JSON
  filePath: String
  contentHash: String
  category: String
  isActive: Boolean
  tags: String
  embeddingText: String
  embedding: Vector
  intentTrigger: Vector
  embeddingDistance: Float
  intentTriggerDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  slug: String (optional, has backend default)
  description: String (optional, has backend default)
  content: String (optional, has backend default)
  procedure: String (optional, has backend default)
  interface: JSON (optional, has backend default)
  requirements: JSON (optional, has backend default)
  filePath: String (optional, has backend default)
  contentHash: String (optional, has backend default)
  category: String (optional, has backend default)
  isActive: Boolean (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  intentTrigger: Vector (optional, has backend default)
  embeddingDistance: Float
  intentTriggerDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, slug, description, content, procedure, interface, requirements, filePath, contentHash, category, isActive, tags, embeddingText, embedding, intentTrigger, embeddingDistance, intentTriggerDistance }]
  get:    { id, entityId, createdAt, updatedAt, name, slug, description, content, procedure, interface, requirements, filePath, contentHash, category, isActive, tags, embeddingText, embedding, intentTrigger, embeddingDistance, intentTriggerDistance }
  create: { id, entityId, createdAt, updatedAt, name, slug, description, content, procedure, interface, requirements, filePath, contentHash, category, isActive, tags, embeddingText, embedding, intentTrigger, embeddingDistance, intentTriggerDistance }
  update: { id, entityId, createdAt, updatedAt, name, slug, description, content, procedure, interface, requirements, filePath, contentHash, category, isActive, tags, embeddingText, embedding, intentTrigger, embeddingDistance, intentTriggerDistance }
  delete: { id }
```

### TOOL: agent

CRUD operations for Agent records.

```
SUBCOMMANDS:
  agent-os agent list                               List all records
  agent-os agent get --id <value>              Get one record
  agent-os agent create --entityId <value> --name <value> --embeddingDistance <value> [--role <value>] [--capabilities <value>] [--config <value>] [--status <value>] [--persona <value>] [--backstory <value>] [--communicationStyle <value>] [--systemPrompt <value>] [--preferredModel <value>] [--fallbackModels <value>] [--temperature <value>] [--mood <value>] [--focus <value>] [--lastActiveAt <value>] [--embeddingText <value>] [--embedding <value>]
  agent-os agent update --id <value> [--entityId <value>] [--name <value>] [--role <value>] [--capabilities <value>] [--config <value>] [--status <value>] [--persona <value>] [--backstory <value>] [--communicationStyle <value>] [--systemPrompt <value>] [--preferredModel <value>] [--fallbackModels <value>] [--temperature <value>] [--mood <value>] [--focus <value>] [--lastActiveAt <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
  agent-os agent delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  name: String
  role: String
  capabilities: JSON
  config: JSON
  status: String
  persona: String
  backstory: String
  communicationStyle: String
  systemPrompt: String
  preferredModel: String
  fallbackModels: String
  temperature: BigFloat
  mood: String
  focus: String
  lastActiveAt: Datetime
  embeddingText: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  role: String (optional, has backend default)
  capabilities: JSON (optional, has backend default)
  config: JSON (optional, has backend default)
  status: String (optional, has backend default)
  persona: String (optional, has backend default)
  backstory: String (optional, has backend default)
  communicationStyle: String (optional, has backend default)
  systemPrompt: String (optional, has backend default)
  preferredModel: String (optional, has backend default)
  fallbackModels: String (optional, has backend default)
  temperature: BigFloat (optional, has backend default)
  mood: String (optional, has backend default)
  focus: String (optional, has backend default)
  lastActiveAt: Datetime (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, role, capabilities, config, status, persona, backstory, communicationStyle, systemPrompt, preferredModel, fallbackModels, temperature, mood, focus, lastActiveAt, embeddingText, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, name, role, capabilities, config, status, persona, backstory, communicationStyle, systemPrompt, preferredModel, fallbackModels, temperature, mood, focus, lastActiveAt, embeddingText, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, name, role, capabilities, config, status, persona, backstory, communicationStyle, systemPrompt, preferredModel, fallbackModels, temperature, mood, focus, lastActiveAt, embeddingText, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, name, role, capabilities, config, status, persona, backstory, communicationStyle, systemPrompt, preferredModel, fallbackModels, temperature, mood, focus, lastActiveAt, embeddingText, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: task

CRUD operations for Task records.

```
SUBCOMMANDS:
  agent-os task list                               List all records
  agent-os task get --id <value>              Get one record
  agent-os task create --entityId <value> --title <value> --embeddingDistance <value> [--description <value>] [--status <value>] [--priority <value>] [--projectId <value>] [--taskType <value>] [--assignedAgentId <value>] [--parentTaskId <value>] [--dueDate <value>] [--completedAt <value>] [--conversationId <value>] [--dependencies <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agent-os task update --id <value> [--entityId <value>] [--title <value>] [--description <value>] [--status <value>] [--priority <value>] [--projectId <value>] [--taskType <value>] [--assignedAgentId <value>] [--parentTaskId <value>] [--dueDate <value>] [--completedAt <value>] [--conversationId <value>] [--dependencies <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
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
  projectId: UUID
  taskType: String
  assignedAgentId: UUID
  parentTaskId: UUID
  dueDate: Datetime
  completedAt: Datetime
  conversationId: UUID
  dependencies: UUID
  tags: String
  embeddingText: String
  embedding: Vector
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  title: String
  description: String (optional, has backend default)
  status: String (optional, has backend default)
  priority: Int (optional, has backend default)
  projectId: UUID (optional, has backend default)
  taskType: String (optional, has backend default)
  assignedAgentId: UUID (optional, has backend default)
  parentTaskId: UUID (optional, has backend default)
  dueDate: Datetime (optional, has backend default)
  completedAt: Datetime (optional, has backend default)
  conversationId: UUID (optional, has backend default)
  dependencies: UUID (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, description, status, priority, projectId, taskType, assignedAgentId, parentTaskId, dueDate, completedAt, conversationId, dependencies, tags, embeddingText, embedding, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, title, description, status, priority, projectId, taskType, assignedAgentId, parentTaskId, dueDate, completedAt, conversationId, dependencies, tags, embeddingText, embedding, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, title, description, status, priority, projectId, taskType, assignedAgentId, parentTaskId, dueDate, completedAt, conversationId, dependencies, tags, embeddingText, embedding, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, title, description, status, priority, projectId, taskType, assignedAgentId, parentTaskId, dueDate, completedAt, conversationId, dependencies, tags, embeddingText, embedding, embeddingDistance }
  delete: { id }
```

### TOOL: project

CRUD operations for Project records.

```
SUBCOMMANDS:
  agent-os project list                               List all records
  agent-os project get --id <value>              Get one record
  agent-os project create --entityId <value> --name <value> --searchTsvRank <value> --embeddingDistance <value> [--description <value>] [--status <value>] [--startDate <value>] [--dueDate <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>]
  agent-os project update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--status <value>] [--startDate <value>] [--dueDate <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--searchTsvRank <value>] [--embeddingDistance <value>]
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
  tags: String
  embeddingText: String
  embedding: Vector
  searchTsv: FullText
  searchTsvRank: Float
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  description: String (optional, has backend default)
  status: String (optional, has backend default)
  startDate: Datetime (optional, has backend default)
  dueDate: Datetime (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  searchTsv: FullText (optional, has backend default)
  searchTsvRank: Float
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, description, status, startDate, dueDate, tags, embeddingText, embedding, searchTsv, searchTsvRank, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, name, description, status, startDate, dueDate, tags, embeddingText, embedding, searchTsv, searchTsvRank, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, name, description, status, startDate, dueDate, tags, embeddingText, embedding, searchTsv, searchTsvRank, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, name, description, status, startDate, dueDate, tags, embeddingText, embedding, searchTsv, searchTsvRank, embeddingDistance }
  delete: { id }
```

### TOOL: document

CRUD operations for Document records.

```
SUBCOMMANDS:
  agent-os document list                               List all records
  agent-os document get --id <value>              Get one record
  agent-os document create --entityId <value> --title <value> --searchTsvRank <value> --embeddingDistance <value> [--url <value>] [--content <value>] [--sourceType <value>] [--isRead <value>] [--savedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>]
  agent-os document update --id <value> [--entityId <value>] [--title <value>] [--url <value>] [--content <value>] [--sourceType <value>] [--isRead <value>] [--savedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--searchTsvRank <value>] [--embeddingDistance <value>]
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
  isRead: Boolean
  savedAt: Datetime
  tags: String
  embeddingText: String
  embedding: Vector
  searchTsv: FullText
  searchTsvRank: Float
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  title: String
  url: String (optional, has backend default)
  content: String (optional, has backend default)
  sourceType: String (optional, has backend default)
  isRead: Boolean (optional, has backend default)
  savedAt: Datetime (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  searchTsv: FullText (optional, has backend default)
  searchTsvRank: Float
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, url, content, sourceType, isRead, savedAt, tags, embeddingText, embedding, searchTsv, searchTsvRank, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, title, url, content, sourceType, isRead, savedAt, tags, embeddingText, embedding, searchTsv, searchTsvRank, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, title, url, content, sourceType, isRead, savedAt, tags, embeddingText, embedding, searchTsv, searchTsvRank, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, title, url, content, sourceType, isRead, savedAt, tags, embeddingText, embedding, searchTsv, searchTsvRank, embeddingDistance }
  delete: { id }
```

### TOOL: company

CRUD operations for Company records.

```
SUBCOMMANDS:
  agent-os company list                               List all records
  agent-os company get --id <value>              Get one record
  agent-os company create --entityId <value> --name <value> --searchTsvRank <value> --embeddingDistance <value> [--domain <value>] [--industry <value>] [--description <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>]
  agent-os company update --id <value> [--entityId <value>] [--name <value>] [--domain <value>] [--industry <value>] [--description <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>] [--searchTsvRank <value>] [--embeddingDistance <value>]
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
  embeddingText: String
  embedding: Vector
  searchTsv: FullText
  mainImageId: UUID
  searchTsvRank: Float
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  domain: String (optional, has backend default)
  industry: String (optional, has backend default)
  description: String (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  searchTsv: FullText (optional, has backend default)
  mainImageId: UUID (optional, has backend default)
  searchTsvRank: Float
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, domain, industry, description, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, name, domain, industry, description, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, name, domain, industry, description, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, name, domain, industry, description, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }
  delete: { id }
```

### TOOL: event

CRUD operations for Event records.

```
SUBCOMMANDS:
  agent-os event list                               List all records
  agent-os event get --id <value>              Get one record
  agent-os event create --entityId <value> --name <value> --searchTsvRank <value> --embeddingDistance <value> [--eventType <value>] [--location <value>] [--city <value>] [--startedAt <value>] [--endedAt <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>]
  agent-os event update --id <value> [--entityId <value>] [--name <value>] [--eventType <value>] [--location <value>] [--city <value>] [--startedAt <value>] [--endedAt <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>] [--searchTsvRank <value>] [--embeddingDistance <value>]
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
  embeddingText: String
  embedding: Vector
  searchTsv: FullText
  mainImageId: UUID
  searchTsvRank: Float
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  eventType: String (optional, has backend default)
  location: String (optional, has backend default)
  city: String (optional, has backend default)
  startedAt: Datetime (optional, has backend default)
  endedAt: Datetime (optional, has backend default)
  notes: String (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  searchTsv: FullText (optional, has backend default)
  mainImageId: UUID (optional, has backend default)
  searchTsvRank: Float
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }
  delete: { id }
```

### TOOL: contact

CRUD operations for Contact records.

```
SUBCOMMANDS:
  agent-os contact list                               List all records
  agent-os contact get --id <value>              Get one record
  agent-os contact create --entityId <value> --firstName <value> --searchTsvRank <value> --embeddingDistance <value> [--lastName <value>] [--email <value>] [--phone <value>] [--headline <value>] [--bio <value>] [--location <value>] [--birthday <value>] [--relationshipType <value>] [--howWeMet <value>] [--twitterHandle <value>] [--linkedinUrl <value>] [--githubUsername <value>] [--instagramHandle <value>] [--website <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>]
  agent-os contact update --id <value> [--entityId <value>] [--firstName <value>] [--lastName <value>] [--email <value>] [--phone <value>] [--headline <value>] [--bio <value>] [--location <value>] [--birthday <value>] [--relationshipType <value>] [--howWeMet <value>] [--twitterHandle <value>] [--linkedinUrl <value>] [--githubUsername <value>] [--instagramHandle <value>] [--website <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>] [--searchTsvRank <value>] [--embeddingDistance <value>]
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
  birthday: Date
  relationshipType: String
  howWeMet: String
  twitterHandle: String
  linkedinUrl: String
  githubUsername: String
  instagramHandle: String
  website: String
  tags: String
  embeddingText: String
  embedding: Vector
  searchTsv: FullText
  mainImageId: UUID
  searchTsvRank: Float
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  firstName: String
  lastName: String (optional, has backend default)
  email: String (optional, has backend default)
  phone: String (optional, has backend default)
  headline: String (optional, has backend default)
  bio: String (optional, has backend default)
  location: String (optional, has backend default)
  birthday: Date (optional, has backend default)
  relationshipType: String (optional, has backend default)
  howWeMet: String (optional, has backend default)
  twitterHandle: String (optional, has backend default)
  linkedinUrl: String (optional, has backend default)
  githubUsername: String (optional, has backend default)
  instagramHandle: String (optional, has backend default)
  website: String (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  searchTsv: FullText (optional, has backend default)
  mainImageId: UUID (optional, has backend default)
  searchTsvRank: Float
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, birthday, relationshipType, howWeMet, twitterHandle, linkedinUrl, githubUsername, instagramHandle, website, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, birthday, relationshipType, howWeMet, twitterHandle, linkedinUrl, githubUsername, instagramHandle, website, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, birthday, relationshipType, howWeMet, twitterHandle, linkedinUrl, githubUsername, instagramHandle, website, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, birthday, relationshipType, howWeMet, twitterHandle, linkedinUrl, githubUsername, instagramHandle, website, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }
  delete: { id }
```

### TOOL: venue

CRUD operations for Venue records.

```
SUBCOMMANDS:
  agent-os venue list                               List all records
  agent-os venue get --id <value>              Get one record
  agent-os venue create --entityId <value> --name <value> --searchTsvRank <value> --embeddingDistance <value> [--address <value>] [--neighborhood <value>] [--city <value>] [--category <value>] [--status <value>] [--googlePlaceId <value>] [--rating <value>] [--priceLevel <value>] [--isFavorite <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>]
  agent-os venue update --id <value> [--entityId <value>] [--name <value>] [--address <value>] [--neighborhood <value>] [--city <value>] [--category <value>] [--status <value>] [--googlePlaceId <value>] [--rating <value>] [--priceLevel <value>] [--isFavorite <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>] [--searchTsvRank <value>] [--embeddingDistance <value>]
  agent-os venue delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  name: String
  address: String
  neighborhood: String
  city: String
  category: String
  status: String
  googlePlaceId: String
  rating: BigFloat
  priceLevel: String
  isFavorite: Boolean
  notes: String
  tags: String
  embeddingText: String
  embedding: Vector
  searchTsv: FullText
  mainImageId: UUID
  searchTsvRank: Float
  embeddingDistance: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  address: String (optional, has backend default)
  neighborhood: String (optional, has backend default)
  city: String (optional, has backend default)
  category: String (optional, has backend default)
  status: String (optional, has backend default)
  googlePlaceId: String (optional, has backend default)
  rating: BigFloat (optional, has backend default)
  priceLevel: String (optional, has backend default)
  isFavorite: Boolean (optional, has backend default)
  notes: String (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  searchTsv: FullText (optional, has backend default)
  mainImageId: UUID (optional, has backend default)
  searchTsvRank: Float
  embeddingDistance: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, address, neighborhood, city, category, status, googlePlaceId, rating, priceLevel, isFavorite, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }]
  get:    { id, entityId, createdAt, updatedAt, name, address, neighborhood, city, category, status, googlePlaceId, rating, priceLevel, isFavorite, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }
  create: { id, entityId, createdAt, updatedAt, name, address, neighborhood, city, category, status, googlePlaceId, rating, priceLevel, isFavorite, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }
  update: { id, entityId, createdAt, updatedAt, name, address, neighborhood, city, category, status, googlePlaceId, rating, priceLevel, isFavorite, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingDistance }
  delete: { id }
```

## WORKFLOWS

### Initial setup

```bash
agent-os context create dev --endpoint http://localhost:5000/graphql
agent-os context use dev
agent-os auth set-token eyJhbGciOiJIUzI1NiIs...
```

### CRUD workflow (agent-prompt)

```bash
# List all
agent-os agent-prompt list

# Create
agent-os agent-prompt create --agentId "value" --promptId "value" --entityId "value"

# Get by id
agent-os agent-prompt get --id <value>

# Update
agent-os agent-prompt update --id <value> --agentId "new-value"

# Delete
agent-os agent-prompt delete --id <value>
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
