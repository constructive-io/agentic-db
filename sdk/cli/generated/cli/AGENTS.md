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

### TOOL: config

Manage per-context key-value configuration variables.

```
SUBCOMMANDS:
  agentic-db config get <key>             Get a config value
  agentic-db config set <key> <value>     Set a config value
  agentic-db config list                  List all config values
  agentic-db config delete <key>          Delete a config value

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
  agentic-db agent-prompt list                               List all records
  agentic-db agent-prompt get --id <value>              Get one record
  agentic-db agent-prompt create --agentId <value> --promptId <value> --entityId <value>
  agentic-db agent-prompt update --id <value> [--agentId <value>] [--promptId <value>] [--entityId <value>]
  agentic-db agent-prompt delete --id <value>           Delete one record

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

### TOOL: session

CRUD operations for Session records.

```
SUBCOMMANDS:
  agentic-db session list                               List all records
  agentic-db session get --id <value>              Get one record
  agentic-db session create --entityId <value> --uagentTrgmSimilarity <value> --fingerprintModeTrgmSimilarity <value> --csrfSecretTrgmSimilarity <value> --searchScore <value> [--title <value>] [--agentId <value>] [--startedAt <value>] [--endedAt <value>] [--status <value>] [--contextSummary <value>] [--sessionSummary <value>] [--archivedMessages <value>] [--compressionCount <value>] [--archivedAt <value>] [--extractedMemoryIds <value>] [--contextsUsed <value>] [--skillsUsed <value>] [--embeddingText <value>] [--embedding <value>]
  agentic-db session update --id <value> [--entityId <value>] [--title <value>] [--agentId <value>] [--startedAt <value>] [--endedAt <value>] [--status <value>] [--contextSummary <value>] [--sessionSummary <value>] [--archivedMessages <value>] [--compressionCount <value>] [--archivedAt <value>] [--extractedMemoryIds <value>] [--contextsUsed <value>] [--skillsUsed <value>] [--embeddingText <value>] [--embedding <value>] [--uagentTrgmSimilarity <value>] [--fingerprintModeTrgmSimilarity <value>] [--csrfSecretTrgmSimilarity <value>] [--searchScore <value>]
  agentic-db session delete --id <value>           Delete one record

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
  sessionSummary: String
  archivedMessages: JSON
  compressionCount: Int
  archivedAt: Datetime
  extractedMemoryIds: UUID
  contextsUsed: JSON
  skillsUsed: UUID
  embeddingText: String
  embedding: Vector
  uagentTrgmSimilarity: Float
  fingerprintModeTrgmSimilarity: Float
  csrfSecretTrgmSimilarity: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  title: String (optional, has backend default)
  agentId: UUID (optional, has backend default)
  startedAt: Datetime (optional, has backend default)
  endedAt: Datetime (optional, has backend default)
  status: String (optional, has backend default)
  contextSummary: String (optional, has backend default)
  sessionSummary: String (optional, has backend default)
  archivedMessages: JSON (optional, has backend default)
  compressionCount: Int (optional, has backend default)
  archivedAt: Datetime (optional, has backend default)
  extractedMemoryIds: UUID (optional, has backend default)
  contextsUsed: JSON (optional, has backend default)
  skillsUsed: UUID (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  uagentTrgmSimilarity: Float
  fingerprintModeTrgmSimilarity: Float
  csrfSecretTrgmSimilarity: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, agentId, startedAt, endedAt, status, contextSummary, sessionSummary, archivedMessages, compressionCount, archivedAt, extractedMemoryIds, contextsUsed, skillsUsed, embeddingText, embedding, uagentTrgmSimilarity, fingerprintModeTrgmSimilarity, csrfSecretTrgmSimilarity, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, title, agentId, startedAt, endedAt, status, contextSummary, sessionSummary, archivedMessages, compressionCount, archivedAt, extractedMemoryIds, contextsUsed, skillsUsed, embeddingText, embedding, uagentTrgmSimilarity, fingerprintModeTrgmSimilarity, csrfSecretTrgmSimilarity, searchScore }
  create: { id, entityId, createdAt, updatedAt, title, agentId, startedAt, endedAt, status, contextSummary, sessionSummary, archivedMessages, compressionCount, archivedAt, extractedMemoryIds, contextsUsed, skillsUsed, embeddingText, embedding, uagentTrgmSimilarity, fingerprintModeTrgmSimilarity, csrfSecretTrgmSimilarity, searchScore }
  update: { id, entityId, createdAt, updatedAt, title, agentId, startedAt, endedAt, status, contextSummary, sessionSummary, archivedMessages, compressionCount, archivedAt, extractedMemoryIds, contextsUsed, skillsUsed, embeddingText, embedding, uagentTrgmSimilarity, fingerprintModeTrgmSimilarity, csrfSecretTrgmSimilarity, searchScore }
  delete: { id }
```

### TOOL: execution-log

CRUD operations for ExecutionLog records.

```
SUBCOMMANDS:
  agentic-db execution-log list                               List all records
  agentic-db execution-log get --id <value>              Get one record
  agentic-db execution-log create --entityId <value> --stepNameTrgmSimilarity <value> --inputTrgmSimilarity <value> --outputTrgmSimilarity <value> --searchScore <value> [--sessionId <value>] [--stepName <value>] [--input <value>] [--output <value>] [--toolCalls <value>] [--durationMs <value>]
  agentic-db execution-log update --id <value> [--entityId <value>] [--sessionId <value>] [--stepName <value>] [--input <value>] [--output <value>] [--toolCalls <value>] [--durationMs <value>] [--stepNameTrgmSimilarity <value>] [--inputTrgmSimilarity <value>] [--outputTrgmSimilarity <value>] [--searchScore <value>]
  agentic-db execution-log delete --id <value>           Delete one record

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
  stepNameTrgmSimilarity: Float
  inputTrgmSimilarity: Float
  outputTrgmSimilarity: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  sessionId: UUID (optional, has backend default)
  stepName: String (optional, has backend default)
  input: String (optional, has backend default)
  output: String (optional, has backend default)
  toolCalls: JSON (optional, has backend default)
  durationMs: Int (optional, has backend default)
  stepNameTrgmSimilarity: Float
  inputTrgmSimilarity: Float
  outputTrgmSimilarity: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, sessionId, stepName, input, output, toolCalls, durationMs, stepNameTrgmSimilarity, inputTrgmSimilarity, outputTrgmSimilarity, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, sessionId, stepName, input, output, toolCalls, durationMs, stepNameTrgmSimilarity, inputTrgmSimilarity, outputTrgmSimilarity, searchScore }
  create: { id, entityId, createdAt, updatedAt, sessionId, stepName, input, output, toolCalls, durationMs, stepNameTrgmSimilarity, inputTrgmSimilarity, outputTrgmSimilarity, searchScore }
  update: { id, entityId, createdAt, updatedAt, sessionId, stepName, input, output, toolCalls, durationMs, stepNameTrgmSimilarity, inputTrgmSimilarity, outputTrgmSimilarity, searchScore }
  delete: { id }
```

### TOOL: session-archive

CRUD operations for SessionArchive records.

```
SUBCOMMANDS:
  agentic-db session-archive list                               List all records
  agentic-db session-archive get --id <value>              Get one record
  agentic-db session-archive create --entityId <value> --sessionId <value> --archiveIndex <value> --summary <value> --embeddingTextBm25Score <value> --summaryTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--messageRangeStart <value>] [--messageRangeEnd <value>] [--rawMessages <value>] [--embeddingText <value>] [--embedding <value>]
  agentic-db session-archive update --id <value> [--entityId <value>] [--sessionId <value>] [--archiveIndex <value>] [--summary <value>] [--messageRangeStart <value>] [--messageRangeEnd <value>] [--rawMessages <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--summaryTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
  agentic-db session-archive delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  sessionId: UUID
  archiveIndex: Int
  summary: String
  messageRangeStart: Int
  messageRangeEnd: Int
  rawMessages: JSON
  embeddingText: String
  embedding: Vector
  embeddingTextBm25Score: Float
  summaryTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  sessionId: UUID
  archiveIndex: Int
  summary: String
  messageRangeStart: Int (optional, has backend default)
  messageRangeEnd: Int (optional, has backend default)
  rawMessages: JSON (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingTextBm25Score: Float
  summaryTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, sessionId, archiveIndex, summary, messageRangeStart, messageRangeEnd, rawMessages, embeddingText, embedding, embeddingTextBm25Score, summaryTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, sessionId, archiveIndex, summary, messageRangeStart, messageRangeEnd, rawMessages, embeddingText, embedding, embeddingTextBm25Score, summaryTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, sessionId, archiveIndex, summary, messageRangeStart, messageRangeEnd, rawMessages, embeddingText, embedding, embeddingTextBm25Score, summaryTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, sessionId, archiveIndex, summary, messageRangeStart, messageRangeEnd, rawMessages, embeddingText, embedding, embeddingTextBm25Score, summaryTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: process

CRUD operations for Process records.

```
SUBCOMMANDS:
  agentic-db process list                               List all records
  agentic-db process get --id <value>              Get one record
  agentic-db process create --entityId <value> --commandTrgmSimilarity <value> --statusTrgmSimilarity <value> --logsPathTrgmSimilarity <value> --searchScore <value> [--pid <value>] [--agentId <value>] [--command <value>] [--startedAt <value>] [--endedAt <value>] [--status <value>] [--exitCode <value>] [--logsPath <value>]
  agentic-db process update --id <value> [--entityId <value>] [--pid <value>] [--agentId <value>] [--command <value>] [--startedAt <value>] [--endedAt <value>] [--status <value>] [--exitCode <value>] [--logsPath <value>] [--commandTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--logsPathTrgmSimilarity <value>] [--searchScore <value>]
  agentic-db process delete --id <value>           Delete one record

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
  commandTrgmSimilarity: Float
  statusTrgmSimilarity: Float
  logsPathTrgmSimilarity: Float
  searchScore: Float

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
  commandTrgmSimilarity: Float
  statusTrgmSimilarity: Float
  logsPathTrgmSimilarity: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, pid, agentId, command, startedAt, endedAt, status, exitCode, logsPath, commandTrgmSimilarity, statusTrgmSimilarity, logsPathTrgmSimilarity, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, pid, agentId, command, startedAt, endedAt, status, exitCode, logsPath, commandTrgmSimilarity, statusTrgmSimilarity, logsPathTrgmSimilarity, searchScore }
  create: { id, entityId, createdAt, updatedAt, pid, agentId, command, startedAt, endedAt, status, exitCode, logsPath, commandTrgmSimilarity, statusTrgmSimilarity, logsPathTrgmSimilarity, searchScore }
  update: { id, entityId, createdAt, updatedAt, pid, agentId, command, startedAt, endedAt, status, exitCode, logsPath, commandTrgmSimilarity, statusTrgmSimilarity, logsPathTrgmSimilarity, searchScore }
  delete: { id }
```

### TOOL: scheduled-job

CRUD operations for ScheduledJob records.

```
SUBCOMMANDS:
  agentic-db scheduled-job list                               List all records
  agentic-db scheduled-job get --id <value>              Get one record
  agentic-db scheduled-job create --entityId <value> --name <value> --scheduleType <value> --command <value> --nameTrgmSimilarity <value> --scheduleTypeTrgmSimilarity <value> --scheduleExprTrgmSimilarity <value> --commandTrgmSimilarity <value> --messageTrgmSimilarity <value> --searchScore <value> [--scheduleExpr <value>] [--runAt <value>] [--message <value>] [--agentId <value>] [--sessionId <value>] [--isActive <value>] [--deleteAfterRun <value>] [--lastRunAt <value>] [--nextRunAt <value>] [--runCount <value>] [--lastResult <value>]
  agentic-db scheduled-job update --id <value> [--entityId <value>] [--name <value>] [--scheduleType <value>] [--scheduleExpr <value>] [--runAt <value>] [--command <value>] [--message <value>] [--agentId <value>] [--sessionId <value>] [--isActive <value>] [--deleteAfterRun <value>] [--lastRunAt <value>] [--nextRunAt <value>] [--runCount <value>] [--lastResult <value>] [--nameTrgmSimilarity <value>] [--scheduleTypeTrgmSimilarity <value>] [--scheduleExprTrgmSimilarity <value>] [--commandTrgmSimilarity <value>] [--messageTrgmSimilarity <value>] [--searchScore <value>]
  agentic-db scheduled-job delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  name: String
  scheduleType: String
  scheduleExpr: String
  runAt: Datetime
  command: String
  message: String
  agentId: UUID
  sessionId: UUID
  isActive: Boolean
  deleteAfterRun: Boolean
  lastRunAt: Datetime
  nextRunAt: Datetime
  runCount: Int
  lastResult: JSON
  nameTrgmSimilarity: Float
  scheduleTypeTrgmSimilarity: Float
  scheduleExprTrgmSimilarity: Float
  commandTrgmSimilarity: Float
  messageTrgmSimilarity: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  scheduleType: String
  scheduleExpr: String (optional, has backend default)
  runAt: Datetime (optional, has backend default)
  command: String
  message: String (optional, has backend default)
  agentId: UUID (optional, has backend default)
  sessionId: UUID (optional, has backend default)
  isActive: Boolean (optional, has backend default)
  deleteAfterRun: Boolean (optional, has backend default)
  lastRunAt: Datetime (optional, has backend default)
  nextRunAt: Datetime (optional, has backend default)
  runCount: Int (optional, has backend default)
  lastResult: JSON (optional, has backend default)
  nameTrgmSimilarity: Float
  scheduleTypeTrgmSimilarity: Float
  scheduleExprTrgmSimilarity: Float
  commandTrgmSimilarity: Float
  messageTrgmSimilarity: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, scheduleType, scheduleExpr, runAt, command, message, agentId, sessionId, isActive, deleteAfterRun, lastRunAt, nextRunAt, runCount, lastResult, nameTrgmSimilarity, scheduleTypeTrgmSimilarity, scheduleExprTrgmSimilarity, commandTrgmSimilarity, messageTrgmSimilarity, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, name, scheduleType, scheduleExpr, runAt, command, message, agentId, sessionId, isActive, deleteAfterRun, lastRunAt, nextRunAt, runCount, lastResult, nameTrgmSimilarity, scheduleTypeTrgmSimilarity, scheduleExprTrgmSimilarity, commandTrgmSimilarity, messageTrgmSimilarity, searchScore }
  create: { id, entityId, createdAt, updatedAt, name, scheduleType, scheduleExpr, runAt, command, message, agentId, sessionId, isActive, deleteAfterRun, lastRunAt, nextRunAt, runCount, lastResult, nameTrgmSimilarity, scheduleTypeTrgmSimilarity, scheduleExprTrgmSimilarity, commandTrgmSimilarity, messageTrgmSimilarity, searchScore }
  update: { id, entityId, createdAt, updatedAt, name, scheduleType, scheduleExpr, runAt, command, message, agentId, sessionId, isActive, deleteAfterRun, lastRunAt, nextRunAt, runCount, lastResult, nameTrgmSimilarity, scheduleTypeTrgmSimilarity, scheduleExprTrgmSimilarity, commandTrgmSimilarity, messageTrgmSimilarity, searchScore }
  delete: { id }
```

### TOOL: agent-tool

CRUD operations for AgentTool records.

```
SUBCOMMANDS:
  agentic-db agent-tool list                               List all records
  agentic-db agent-tool get --id <value>              Get one record
  agentic-db agent-tool create --agentId <value> --toolId <value> --entityId <value>
  agentic-db agent-tool update --id <value> [--agentId <value>] [--toolId <value>] [--entityId <value>]
  agentic-db agent-tool delete --id <value>           Delete one record

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
  agentic-db agent-skill list                               List all records
  agentic-db agent-skill get --id <value>              Get one record
  agentic-db agent-skill create --agentId <value> --skillId <value> --entityId <value>
  agentic-db agent-skill update --id <value> [--agentId <value>] [--skillId <value>] [--entityId <value>]
  agentic-db agent-skill delete --id <value>           Delete one record

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
  agentic-db agent-rule list                               List all records
  agentic-db agent-rule get --id <value>              Get one record
  agentic-db agent-rule create --agentId <value> --ruleId <value> --entityId <value>
  agentic-db agent-rule update --id <value> [--agentId <value>] [--ruleId <value>] [--entityId <value>]
  agentic-db agent-rule delete --id <value>           Delete one record

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
  agentic-db calendar-event-contact list                               List all records
  agentic-db calendar-event-contact get --id <value>              Get one record
  agentic-db calendar-event-contact create --calendarEventId <value> --contactId <value> --entityId <value>
  agentic-db calendar-event-contact update --id <value> [--calendarEventId <value>] [--contactId <value>] [--entityId <value>]
  agentic-db calendar-event-contact delete --id <value>           Delete one record

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
  agentic-db calendar-event list                               List all records
  agentic-db calendar-event get --id <value>              Get one record
  agentic-db calendar-event create --entityId <value> --title <value> --startAt <value> --embeddingTextBm25Score <value> --remoteIdTrgmSimilarity <value> --titleTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --locationTrgmSimilarity <value> --recurrenceRuleTrgmSimilarity <value> --statusTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--calendarAccountId <value>] [--remoteId <value>] [--description <value>] [--endAt <value>] [--allDay <value>] [--location <value>] [--recurrenceRule <value>] [--status <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agentic-db calendar-event update --id <value> [--entityId <value>] [--calendarAccountId <value>] [--remoteId <value>] [--title <value>] [--description <value>] [--startAt <value>] [--endAt <value>] [--allDay <value>] [--location <value>] [--recurrenceRule <value>] [--status <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--remoteIdTrgmSimilarity <value>] [--titleTrgmSimilarity <value>] [--descriptionTrgmSimilarity <value>] [--locationTrgmSimilarity <value>] [--recurrenceRuleTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
  agentic-db calendar-event delete --id <value>           Delete one record

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
  embeddingTextBm25Score: Float
  remoteIdTrgmSimilarity: Float
  titleTrgmSimilarity: Float
  descriptionTrgmSimilarity: Float
  locationTrgmSimilarity: Float
  recurrenceRuleTrgmSimilarity: Float
  statusTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

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
  embeddingTextBm25Score: Float
  remoteIdTrgmSimilarity: Float
  titleTrgmSimilarity: Float
  descriptionTrgmSimilarity: Float
  locationTrgmSimilarity: Float
  recurrenceRuleTrgmSimilarity: Float
  statusTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, calendarAccountId, remoteId, title, description, startAt, endAt, allDay, location, recurrenceRule, status, tags, embeddingText, embedding, embeddingTextBm25Score, remoteIdTrgmSimilarity, titleTrgmSimilarity, descriptionTrgmSimilarity, locationTrgmSimilarity, recurrenceRuleTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, calendarAccountId, remoteId, title, description, startAt, endAt, allDay, location, recurrenceRule, status, tags, embeddingText, embedding, embeddingTextBm25Score, remoteIdTrgmSimilarity, titleTrgmSimilarity, descriptionTrgmSimilarity, locationTrgmSimilarity, recurrenceRuleTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, calendarAccountId, remoteId, title, description, startAt, endAt, allDay, location, recurrenceRule, status, tags, embeddingText, embedding, embeddingTextBm25Score, remoteIdTrgmSimilarity, titleTrgmSimilarity, descriptionTrgmSimilarity, locationTrgmSimilarity, recurrenceRuleTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, calendarAccountId, remoteId, title, description, startAt, endAt, allDay, location, recurrenceRule, status, tags, embeddingText, embedding, embeddingTextBm25Score, remoteIdTrgmSimilarity, titleTrgmSimilarity, descriptionTrgmSimilarity, locationTrgmSimilarity, recurrenceRuleTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: interaction

CRUD operations for Interaction records.

```
SUBCOMMANDS:
  agentic-db interaction list                               List all records
  agentic-db interaction get --id <value>              Get one record
  agentic-db interaction create --entityId <value> --contactId <value> --type <value> --occurredAt <value> --embeddingTextBm25Score <value> --typeTrgmSimilarity <value> --summaryTrgmSimilarity <value> --sentimentTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--summary <value>] [--sentiment <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agentic-db interaction update --id <value> [--entityId <value>] [--contactId <value>] [--type <value>] [--occurredAt <value>] [--summary <value>] [--sentiment <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--typeTrgmSimilarity <value>] [--summaryTrgmSimilarity <value>] [--sentimentTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
  agentic-db interaction delete --id <value>           Delete one record

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
  embeddingTextBm25Score: Float
  typeTrgmSimilarity: Float
  summaryTrgmSimilarity: Float
  sentimentTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

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
  embeddingTextBm25Score: Float
  typeTrgmSimilarity: Float
  summaryTrgmSimilarity: Float
  sentimentTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, contactId, type, occurredAt, summary, sentiment, tags, embeddingText, embedding, embeddingTextBm25Score, typeTrgmSimilarity, summaryTrgmSimilarity, sentimentTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, contactId, type, occurredAt, summary, sentiment, tags, embeddingText, embedding, embeddingTextBm25Score, typeTrgmSimilarity, summaryTrgmSimilarity, sentimentTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, contactId, type, occurredAt, summary, sentiment, tags, embeddingText, embedding, embeddingTextBm25Score, typeTrgmSimilarity, summaryTrgmSimilarity, sentimentTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, contactId, type, occurredAt, summary, sentiment, tags, embeddingText, embedding, embeddingTextBm25Score, typeTrgmSimilarity, summaryTrgmSimilarity, sentimentTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: company-event

CRUD operations for CompanyEvent records.

```
SUBCOMMANDS:
  agentic-db company-event list                               List all records
  agentic-db company-event get --id <value>              Get one record
  agentic-db company-event create --companyId <value> --eventId <value> --entityId <value>
  agentic-db company-event update --id <value> [--companyId <value>] [--eventId <value>] [--entityId <value>]
  agentic-db company-event delete --id <value>           Delete one record

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

### TOOL: expense-contact

CRUD operations for ExpenseContact records.

```
SUBCOMMANDS:
  agentic-db expense-contact list                               List all records
  agentic-db expense-contact get --id <value>              Get one record
  agentic-db expense-contact create --expenseId <value> --contactId <value> --entityId <value>
  agentic-db expense-contact update --id <value> [--expenseId <value>] [--contactId <value>] [--entityId <value>]
  agentic-db expense-contact delete --id <value>           Delete one record

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
  agentic-db goal-habit list                               List all records
  agentic-db goal-habit get --id <value>              Get one record
  agentic-db goal-habit create --goalId <value> --habitId <value> --entityId <value>
  agentic-db goal-habit update --id <value> [--goalId <value>] [--habitId <value>] [--entityId <value>]
  agentic-db goal-habit delete --id <value>           Delete one record

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
  agentic-db habit-log list                               List all records
  agentic-db habit-log get --id <value>              Get one record
  agentic-db habit-log create --entityId <value> --habitId <value> --completedAt <value> --activityTypeTrgmSimilarity <value> --distanceUnitTrgmSimilarity <value> --weightUnitTrgmSimilarity <value> --notesTrgmSimilarity <value> --searchScore <value> [--activityType <value>] [--durationMinutes <value>] [--distance <value>] [--distanceUnit <value>] [--reps <value>] [--sets <value>] [--weightAmount <value>] [--weightUnit <value>] [--calories <value>] [--data <value>] [--notes <value>] [--tags <value>]
  agentic-db habit-log update --id <value> [--entityId <value>] [--habitId <value>] [--completedAt <value>] [--activityType <value>] [--durationMinutes <value>] [--distance <value>] [--distanceUnit <value>] [--reps <value>] [--sets <value>] [--weightAmount <value>] [--weightUnit <value>] [--calories <value>] [--data <value>] [--notes <value>] [--tags <value>] [--activityTypeTrgmSimilarity <value>] [--distanceUnitTrgmSimilarity <value>] [--weightUnitTrgmSimilarity <value>] [--notesTrgmSimilarity <value>] [--searchScore <value>]
  agentic-db habit-log delete --id <value>           Delete one record

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
  activityTypeTrgmSimilarity: Float
  distanceUnitTrgmSimilarity: Float
  weightUnitTrgmSimilarity: Float
  notesTrgmSimilarity: Float
  searchScore: Float

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
  activityTypeTrgmSimilarity: Float
  distanceUnitTrgmSimilarity: Float
  weightUnitTrgmSimilarity: Float
  notesTrgmSimilarity: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, habitId, completedAt, activityType, durationMinutes, distance, distanceUnit, reps, sets, weightAmount, weightUnit, calories, data, notes, tags, activityTypeTrgmSimilarity, distanceUnitTrgmSimilarity, weightUnitTrgmSimilarity, notesTrgmSimilarity, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, habitId, completedAt, activityType, durationMinutes, distance, distanceUnit, reps, sets, weightAmount, weightUnit, calories, data, notes, tags, activityTypeTrgmSimilarity, distanceUnitTrgmSimilarity, weightUnitTrgmSimilarity, notesTrgmSimilarity, searchScore }
  create: { id, entityId, createdAt, updatedAt, habitId, completedAt, activityType, durationMinutes, distance, distanceUnit, reps, sets, weightAmount, weightUnit, calories, data, notes, tags, activityTypeTrgmSimilarity, distanceUnitTrgmSimilarity, weightUnitTrgmSimilarity, notesTrgmSimilarity, searchScore }
  update: { id, entityId, createdAt, updatedAt, habitId, completedAt, activityType, durationMinutes, distance, distanceUnit, reps, sets, weightAmount, weightUnit, calories, data, notes, tags, activityTypeTrgmSimilarity, distanceUnitTrgmSimilarity, weightUnitTrgmSimilarity, notesTrgmSimilarity, searchScore }
  delete: { id }
```

### TOOL: goal-project

CRUD operations for GoalProject records.

```
SUBCOMMANDS:
  agentic-db goal-project list                               List all records
  agentic-db goal-project get --id <value>              Get one record
  agentic-db goal-project create --goalId <value> --projectId <value> --entityId <value>
  agentic-db goal-project update --id <value> [--goalId <value>] [--projectId <value>] [--entityId <value>]
  agentic-db goal-project delete --id <value>           Delete one record

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
  agentic-db milestone list                               List all records
  agentic-db milestone get --id <value>              Get one record
  agentic-db milestone create --entityId <value> --name <value> --nameTrgmSimilarity <value> --statusTrgmSimilarity <value> --searchScore <value> [--projectId <value>] [--dueDate <value>] [--status <value>]
  agentic-db milestone update --id <value> [--entityId <value>] [--projectId <value>] [--name <value>] [--dueDate <value>] [--status <value>] [--nameTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--searchScore <value>]
  agentic-db milestone delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  projectId: UUID
  name: String
  dueDate: Datetime
  status: String
  nameTrgmSimilarity: Float
  statusTrgmSimilarity: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  projectId: UUID (optional, has backend default)
  name: String
  dueDate: Datetime (optional, has backend default)
  status: String (optional, has backend default)
  nameTrgmSimilarity: Float
  statusTrgmSimilarity: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, projectId, name, dueDate, status, nameTrgmSimilarity, statusTrgmSimilarity, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, projectId, name, dueDate, status, nameTrgmSimilarity, statusTrgmSimilarity, searchScore }
  create: { id, entityId, createdAt, updatedAt, projectId, name, dueDate, status, nameTrgmSimilarity, statusTrgmSimilarity, searchScore }
  update: { id, entityId, createdAt, updatedAt, projectId, name, dueDate, status, nameTrgmSimilarity, statusTrgmSimilarity, searchScore }
  delete: { id }
```

### TOOL: project-contact

CRUD operations for ProjectContact records.

```
SUBCOMMANDS:
  agentic-db project-contact list                               List all records
  agentic-db project-contact get --id <value>              Get one record
  agentic-db project-contact create --projectId <value> --contactId <value> --entityId <value>
  agentic-db project-contact update --id <value> [--projectId <value>] [--contactId <value>] [--entityId <value>]
  agentic-db project-contact delete --id <value>           Delete one record

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
  agentic-db task-contact list                               List all records
  agentic-db task-contact get --id <value>              Get one record
  agentic-db task-contact create --taskId <value> --contactId <value> --entityId <value>
  agentic-db task-contact update --id <value> [--taskId <value>] [--contactId <value>] [--entityId <value>]
  agentic-db task-contact delete --id <value>           Delete one record

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

### TOOL: file

CRUD operations for File records.

```
SUBCOMMANDS:
  agentic-db file list                               List all records
  agentic-db file get --id <value>              Get one record
  agentic-db file create --entityId <value> --path <value> --pathTrgmSimilarity <value> --languageTrgmSimilarity <value> --hashTrgmSimilarity <value> --searchScore <value> [--repositoryId <value>] [--language <value>] [--hash <value>]
  agentic-db file update --id <value> [--entityId <value>] [--repositoryId <value>] [--path <value>] [--language <value>] [--hash <value>] [--pathTrgmSimilarity <value>] [--languageTrgmSimilarity <value>] [--hashTrgmSimilarity <value>] [--searchScore <value>]
  agentic-db file delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  repositoryId: UUID
  path: String
  language: String
  hash: String
  pathTrgmSimilarity: Float
  languageTrgmSimilarity: Float
  hashTrgmSimilarity: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  repositoryId: UUID (optional, has backend default)
  path: String
  language: String (optional, has backend default)
  hash: String (optional, has backend default)
  pathTrgmSimilarity: Float
  languageTrgmSimilarity: Float
  hashTrgmSimilarity: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, repositoryId, path, language, hash, pathTrgmSimilarity, languageTrgmSimilarity, hashTrgmSimilarity, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, repositoryId, path, language, hash, pathTrgmSimilarity, languageTrgmSimilarity, hashTrgmSimilarity, searchScore }
  create: { id, entityId, createdAt, updatedAt, repositoryId, path, language, hash, pathTrgmSimilarity, languageTrgmSimilarity, hashTrgmSimilarity, searchScore }
  update: { id, entityId, createdAt, updatedAt, repositoryId, path, language, hash, pathTrgmSimilarity, languageTrgmSimilarity, hashTrgmSimilarity, searchScore }
  delete: { id }
```

### TOOL: chunk

CRUD operations for Chunk records.

```
SUBCOMMANDS:
  agentic-db chunk list                               List all records
  agentic-db chunk get --id <value>              Get one record
  agentic-db chunk create --entityId <value> --content <value> --embeddingTextBm25Score <value> --contentTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--fileId <value>] [--repositoryId <value>] [--startLine <value>] [--endLine <value>] [--embeddingText <value>] [--embedding <value>]
  agentic-db chunk update --id <value> [--entityId <value>] [--fileId <value>] [--repositoryId <value>] [--content <value>] [--startLine <value>] [--endLine <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--contentTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
  agentic-db chunk delete --id <value>           Delete one record

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
  embeddingTextBm25Score: Float
  contentTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  fileId: UUID (optional, has backend default)
  repositoryId: UUID (optional, has backend default)
  content: String
  startLine: Int (optional, has backend default)
  endLine: Int (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingTextBm25Score: Float
  contentTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, fileId, repositoryId, content, startLine, endLine, embeddingText, embedding, embeddingTextBm25Score, contentTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, fileId, repositoryId, content, startLine, endLine, embeddingText, embedding, embeddingTextBm25Score, contentTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, fileId, repositoryId, content, startLine, endLine, embeddingText, embedding, embeddingTextBm25Score, contentTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, fileId, repositoryId, content, startLine, endLine, embeddingText, embedding, embeddingTextBm25Score, contentTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: calendar-account

CRUD operations for CalendarAccount records.

```
SUBCOMMANDS:
  agentic-db calendar-account list                               List all records
  agentic-db calendar-account get --id <value>              Get one record
  agentic-db calendar-account create --entityId <value> --email <value> --emailTrgmSimilarity <value> --providerTrgmSimilarity <value> --syncTokenTrgmSimilarity <value> --searchScore <value> [--provider <value>] [--syncToken <value>] [--lastSyncedAt <value>]
  agentic-db calendar-account update --id <value> [--entityId <value>] [--email <value>] [--provider <value>] [--syncToken <value>] [--lastSyncedAt <value>] [--emailTrgmSimilarity <value>] [--providerTrgmSimilarity <value>] [--syncTokenTrgmSimilarity <value>] [--searchScore <value>]
  agentic-db calendar-account delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  email: String
  provider: String
  syncToken: String
  lastSyncedAt: Datetime
  emailTrgmSimilarity: Float
  providerTrgmSimilarity: Float
  syncTokenTrgmSimilarity: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  email: String
  provider: String (optional, has backend default)
  syncToken: String (optional, has backend default)
  lastSyncedAt: Datetime (optional, has backend default)
  emailTrgmSimilarity: Float
  providerTrgmSimilarity: Float
  syncTokenTrgmSimilarity: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, email, provider, syncToken, lastSyncedAt, emailTrgmSimilarity, providerTrgmSimilarity, syncTokenTrgmSimilarity, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, email, provider, syncToken, lastSyncedAt, emailTrgmSimilarity, providerTrgmSimilarity, syncTokenTrgmSimilarity, searchScore }
  create: { id, entityId, createdAt, updatedAt, email, provider, syncToken, lastSyncedAt, emailTrgmSimilarity, providerTrgmSimilarity, syncTokenTrgmSimilarity, searchScore }
  update: { id, entityId, createdAt, updatedAt, email, provider, syncToken, lastSyncedAt, emailTrgmSimilarity, providerTrgmSimilarity, syncTokenTrgmSimilarity, searchScore }
  delete: { id }
```

### TOOL: tag

CRUD operations for Tag records.

```
SUBCOMMANDS:
  agentic-db tag list                               List all records
  agentic-db tag get --id <value>              Get one record
  agentic-db tag create --entityId <value> --name <value> --nameTrgmSimilarity <value> --colorTrgmSimilarity <value> --categoryTrgmSimilarity <value> --searchScore <value> [--color <value>] [--category <value>] [--usageCount <value>]
  agentic-db tag update --id <value> [--entityId <value>] [--name <value>] [--color <value>] [--category <value>] [--usageCount <value>] [--nameTrgmSimilarity <value>] [--colorTrgmSimilarity <value>] [--categoryTrgmSimilarity <value>] [--searchScore <value>]
  agentic-db tag delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  name: String
  color: String
  category: String
  usageCount: Int
  nameTrgmSimilarity: Float
  colorTrgmSimilarity: Float
  categoryTrgmSimilarity: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  color: String (optional, has backend default)
  category: String (optional, has backend default)
  usageCount: Int (optional, has backend default)
  nameTrgmSimilarity: Float
  colorTrgmSimilarity: Float
  categoryTrgmSimilarity: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, color, category, usageCount, nameTrgmSimilarity, colorTrgmSimilarity, categoryTrgmSimilarity, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, name, color, category, usageCount, nameTrgmSimilarity, colorTrgmSimilarity, categoryTrgmSimilarity, searchScore }
  create: { id, entityId, createdAt, updatedAt, name, color, category, usageCount, nameTrgmSimilarity, colorTrgmSimilarity, categoryTrgmSimilarity, searchScore }
  update: { id, entityId, createdAt, updatedAt, name, color, category, usageCount, nameTrgmSimilarity, colorTrgmSimilarity, categoryTrgmSimilarity, searchScore }
  delete: { id }
```

### TOOL: feedback

CRUD operations for Feedback records.

```
SUBCOMMANDS:
  agentic-db feedback list                               List all records
  agentic-db feedback get --id <value>              Get one record
  agentic-db feedback create --entityId <value> --targetType <value> --targetId <value> --targetTypeTrgmSimilarity <value> --commentTrgmSimilarity <value> --sourceTrgmSimilarity <value> --searchScore <value> [--rating <value>] [--comment <value>] [--source <value>]
  agentic-db feedback update --id <value> [--entityId <value>] [--targetType <value>] [--targetId <value>] [--rating <value>] [--comment <value>] [--source <value>] [--targetTypeTrgmSimilarity <value>] [--commentTrgmSimilarity <value>] [--sourceTrgmSimilarity <value>] [--searchScore <value>]
  agentic-db feedback delete --id <value>           Delete one record

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
  targetTypeTrgmSimilarity: Float
  commentTrgmSimilarity: Float
  sourceTrgmSimilarity: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  targetType: String
  targetId: UUID
  rating: Int (optional, has backend default)
  comment: String (optional, has backend default)
  source: String (optional, has backend default)
  targetTypeTrgmSimilarity: Float
  commentTrgmSimilarity: Float
  sourceTrgmSimilarity: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, targetType, targetId, rating, comment, source, targetTypeTrgmSimilarity, commentTrgmSimilarity, sourceTrgmSimilarity, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, targetType, targetId, rating, comment, source, targetTypeTrgmSimilarity, commentTrgmSimilarity, sourceTrgmSimilarity, searchScore }
  create: { id, entityId, createdAt, updatedAt, targetType, targetId, rating, comment, source, targetTypeTrgmSimilarity, commentTrgmSimilarity, sourceTrgmSimilarity, searchScore }
  update: { id, entityId, createdAt, updatedAt, targetType, targetId, rating, comment, source, targetTypeTrgmSimilarity, commentTrgmSimilarity, sourceTrgmSimilarity, searchScore }
  delete: { id }
```

### TOOL: attachment

CRUD operations for Attachment records.

```
SUBCOMMANDS:
  agentic-db attachment list                               List all records
  agentic-db attachment get --id <value>              Get one record
  agentic-db attachment create --entityId <value> --url <value> --urlTrgmSimilarity <value> --filenameTrgmSimilarity <value> --mimeTypeTrgmSimilarity <value> --attachableTypeTrgmSimilarity <value> --searchScore <value> [--filename <value>] [--mimeType <value>] [--sizeBytes <value>] [--attachableType <value>] [--attachableId <value>]
  agentic-db attachment update --id <value> [--entityId <value>] [--url <value>] [--filename <value>] [--mimeType <value>] [--sizeBytes <value>] [--attachableType <value>] [--attachableId <value>] [--urlTrgmSimilarity <value>] [--filenameTrgmSimilarity <value>] [--mimeTypeTrgmSimilarity <value>] [--attachableTypeTrgmSimilarity <value>] [--searchScore <value>]
  agentic-db attachment delete --id <value>           Delete one record

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
  urlTrgmSimilarity: Float
  filenameTrgmSimilarity: Float
  mimeTypeTrgmSimilarity: Float
  attachableTypeTrgmSimilarity: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  url: String
  filename: String (optional, has backend default)
  mimeType: String (optional, has backend default)
  sizeBytes: Int (optional, has backend default)
  attachableType: String (optional, has backend default)
  attachableId: UUID (optional, has backend default)
  urlTrgmSimilarity: Float
  filenameTrgmSimilarity: Float
  mimeTypeTrgmSimilarity: Float
  attachableTypeTrgmSimilarity: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, url, filename, mimeType, sizeBytes, attachableType, attachableId, urlTrgmSimilarity, filenameTrgmSimilarity, mimeTypeTrgmSimilarity, attachableTypeTrgmSimilarity, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, url, filename, mimeType, sizeBytes, attachableType, attachableId, urlTrgmSimilarity, filenameTrgmSimilarity, mimeTypeTrgmSimilarity, attachableTypeTrgmSimilarity, searchScore }
  create: { id, entityId, createdAt, updatedAt, url, filename, mimeType, sizeBytes, attachableType, attachableId, urlTrgmSimilarity, filenameTrgmSimilarity, mimeTypeTrgmSimilarity, attachableTypeTrgmSimilarity, searchScore }
  update: { id, entityId, createdAt, updatedAt, url, filename, mimeType, sizeBytes, attachableType, attachableId, urlTrgmSimilarity, filenameTrgmSimilarity, mimeTypeTrgmSimilarity, attachableTypeTrgmSimilarity, searchScore }
  delete: { id }
```

### TOOL: email-account

CRUD operations for EmailAccount records.

```
SUBCOMMANDS:
  agentic-db email-account list                               List all records
  agentic-db email-account get --id <value>              Get one record
  agentic-db email-account create --entityId <value> --email <value> --emailTrgmSimilarity <value> --providerTrgmSimilarity <value> --searchScore <value> [--provider <value>] [--syncState <value>]
  agentic-db email-account update --id <value> [--entityId <value>] [--email <value>] [--provider <value>] [--syncState <value>] [--emailTrgmSimilarity <value>] [--providerTrgmSimilarity <value>] [--searchScore <value>]
  agentic-db email-account delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  email: String
  provider: String
  syncState: JSON
  emailTrgmSimilarity: Float
  providerTrgmSimilarity: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  email: String
  provider: String (optional, has backend default)
  syncState: JSON (optional, has backend default)
  emailTrgmSimilarity: Float
  providerTrgmSimilarity: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, email, provider, syncState, emailTrgmSimilarity, providerTrgmSimilarity, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, email, provider, syncState, emailTrgmSimilarity, providerTrgmSimilarity, searchScore }
  create: { id, entityId, createdAt, updatedAt, email, provider, syncState, emailTrgmSimilarity, providerTrgmSimilarity, searchScore }
  update: { id, entityId, createdAt, updatedAt, email, provider, syncState, emailTrgmSimilarity, providerTrgmSimilarity, searchScore }
  delete: { id }
```

### TOOL: message

CRUD operations for Message records.

```
SUBCOMMANDS:
  agentic-db message list                               List all records
  agentic-db message get --id <value>              Get one record
  agentic-db message create --entityId <value> --bodyTextBm25Score <value> --embeddingTextBm25Score <value> --threadIdTrgmSimilarity <value> --remoteIdTrgmSimilarity <value> --fromAddressTrgmSimilarity <value> --subjectTrgmSimilarity <value> --bodyTextTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--emailAccountId <value>] [--threadId <value>] [--remoteId <value>] [--fromAddress <value>] [--toAddresses <value>] [--subject <value>] [--bodyText <value>] [--receivedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agentic-db message update --id <value> [--entityId <value>] [--emailAccountId <value>] [--threadId <value>] [--remoteId <value>] [--fromAddress <value>] [--toAddresses <value>] [--subject <value>] [--bodyText <value>] [--receivedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--bodyTextBm25Score <value>] [--embeddingTextBm25Score <value>] [--threadIdTrgmSimilarity <value>] [--remoteIdTrgmSimilarity <value>] [--fromAddressTrgmSimilarity <value>] [--subjectTrgmSimilarity <value>] [--bodyTextTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
  agentic-db message delete --id <value>           Delete one record

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
  bodyTextBm25Score: Float
  embeddingTextBm25Score: Float
  threadIdTrgmSimilarity: Float
  remoteIdTrgmSimilarity: Float
  fromAddressTrgmSimilarity: Float
  subjectTrgmSimilarity: Float
  bodyTextTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

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
  bodyTextBm25Score: Float
  embeddingTextBm25Score: Float
  threadIdTrgmSimilarity: Float
  remoteIdTrgmSimilarity: Float
  fromAddressTrgmSimilarity: Float
  subjectTrgmSimilarity: Float
  bodyTextTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, emailAccountId, threadId, remoteId, fromAddress, toAddresses, subject, bodyText, receivedAt, tags, embeddingText, embedding, bodyTextBm25Score, embeddingTextBm25Score, threadIdTrgmSimilarity, remoteIdTrgmSimilarity, fromAddressTrgmSimilarity, subjectTrgmSimilarity, bodyTextTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, emailAccountId, threadId, remoteId, fromAddress, toAddresses, subject, bodyText, receivedAt, tags, embeddingText, embedding, bodyTextBm25Score, embeddingTextBm25Score, threadIdTrgmSimilarity, remoteIdTrgmSimilarity, fromAddressTrgmSimilarity, subjectTrgmSimilarity, bodyTextTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, emailAccountId, threadId, remoteId, fromAddress, toAddresses, subject, bodyText, receivedAt, tags, embeddingText, embedding, bodyTextBm25Score, embeddingTextBm25Score, threadIdTrgmSimilarity, remoteIdTrgmSimilarity, fromAddressTrgmSimilarity, subjectTrgmSimilarity, bodyTextTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, emailAccountId, threadId, remoteId, fromAddress, toAddresses, subject, bodyText, receivedAt, tags, embeddingText, embedding, bodyTextBm25Score, embeddingTextBm25Score, threadIdTrgmSimilarity, remoteIdTrgmSimilarity, fromAddressTrgmSimilarity, subjectTrgmSimilarity, bodyTextTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: activity-log

CRUD operations for ActivityLog records.

```
SUBCOMMANDS:
  agentic-db activity-log list                               List all records
  agentic-db activity-log get --id <value>              Get one record
  agentic-db activity-log create --entityId <value> --actorType <value> --action <value> --targetType <value> --targetId <value> --actorTypeTrgmSimilarity <value> --actionTrgmSimilarity <value> --targetTypeTrgmSimilarity <value> --searchScore <value> [--actorId <value>] [--metadata <value>]
  agentic-db activity-log update --id <value> [--entityId <value>] [--actorType <value>] [--actorId <value>] [--action <value>] [--targetType <value>] [--targetId <value>] [--metadata <value>] [--actorTypeTrgmSimilarity <value>] [--actionTrgmSimilarity <value>] [--targetTypeTrgmSimilarity <value>] [--searchScore <value>]
  agentic-db activity-log delete --id <value>           Delete one record

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
  actorTypeTrgmSimilarity: Float
  actionTrgmSimilarity: Float
  targetTypeTrgmSimilarity: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  actorType: String
  actorId: UUID (optional, has backend default)
  action: String
  targetType: String
  targetId: UUID
  metadata: JSON (optional, has backend default)
  actorTypeTrgmSimilarity: Float
  actionTrgmSimilarity: Float
  targetTypeTrgmSimilarity: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, actorType, actorId, action, targetType, targetId, metadata, actorTypeTrgmSimilarity, actionTrgmSimilarity, targetTypeTrgmSimilarity, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, actorType, actorId, action, targetType, targetId, metadata, actorTypeTrgmSimilarity, actionTrgmSimilarity, targetTypeTrgmSimilarity, searchScore }
  create: { id, entityId, createdAt, updatedAt, actorType, actorId, action, targetType, targetId, metadata, actorTypeTrgmSimilarity, actionTrgmSimilarity, targetTypeTrgmSimilarity, searchScore }
  update: { id, entityId, createdAt, updatedAt, actorType, actorId, action, targetType, targetId, metadata, actorTypeTrgmSimilarity, actionTrgmSimilarity, targetTypeTrgmSimilarity, searchScore }
  delete: { id }
```

### TOOL: context-relation

CRUD operations for ContextRelation records.

```
SUBCOMMANDS:
  agentic-db context-relation list                               List all records
  agentic-db context-relation get --id <value>              Get one record
  agentic-db context-relation create --entityId <value> --fromType <value> --fromId <value> --toType <value> --toId <value> --fromTypeTrgmSimilarity <value> --toTypeTrgmSimilarity <value> --relationKindTrgmSimilarity <value> --reasonTrgmSimilarity <value> --searchScore <value> [--relationKind <value>] [--reason <value>] [--strength <value>]
  agentic-db context-relation update --id <value> [--entityId <value>] [--fromType <value>] [--fromId <value>] [--toType <value>] [--toId <value>] [--relationKind <value>] [--reason <value>] [--strength <value>] [--fromTypeTrgmSimilarity <value>] [--toTypeTrgmSimilarity <value>] [--relationKindTrgmSimilarity <value>] [--reasonTrgmSimilarity <value>] [--searchScore <value>]
  agentic-db context-relation delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  fromType: String
  fromId: UUID
  toType: String
  toId: UUID
  relationKind: String
  reason: String
  strength: BigFloat
  fromTypeTrgmSimilarity: Float
  toTypeTrgmSimilarity: Float
  relationKindTrgmSimilarity: Float
  reasonTrgmSimilarity: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  fromType: String
  fromId: UUID
  toType: String
  toId: UUID
  relationKind: String (optional, has backend default)
  reason: String (optional, has backend default)
  strength: BigFloat (optional, has backend default)
  fromTypeTrgmSimilarity: Float
  toTypeTrgmSimilarity: Float
  relationKindTrgmSimilarity: Float
  reasonTrgmSimilarity: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, fromType, fromId, toType, toId, relationKind, reason, strength, fromTypeTrgmSimilarity, toTypeTrgmSimilarity, relationKindTrgmSimilarity, reasonTrgmSimilarity, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, fromType, fromId, toType, toId, relationKind, reason, strength, fromTypeTrgmSimilarity, toTypeTrgmSimilarity, relationKindTrgmSimilarity, reasonTrgmSimilarity, searchScore }
  create: { id, entityId, createdAt, updatedAt, fromType, fromId, toType, toId, relationKind, reason, strength, fromTypeTrgmSimilarity, toTypeTrgmSimilarity, relationKindTrgmSimilarity, reasonTrgmSimilarity, searchScore }
  update: { id, entityId, createdAt, updatedAt, fromType, fromId, toType, toId, relationKind, reason, strength, fromTypeTrgmSimilarity, toTypeTrgmSimilarity, relationKindTrgmSimilarity, reasonTrgmSimilarity, searchScore }
  delete: { id }
```

### TOOL: user-setting

CRUD operations for UserSetting records.

```
SUBCOMMANDS:
  agentic-db user-setting list                               List all records
  agentic-db user-setting get --id <value>              Get one record
  agentic-db user-setting create --entityId <value> --key <value> --keyTrgmSimilarity <value> --categoryTrgmSimilarity <value> --searchScore <value> [--value <value>] [--category <value>]
  agentic-db user-setting update --id <value> [--entityId <value>] [--key <value>] [--value <value>] [--category <value>] [--keyTrgmSimilarity <value>] [--categoryTrgmSimilarity <value>] [--searchScore <value>]
  agentic-db user-setting delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  key: String
  value: JSON
  category: String
  keyTrgmSimilarity: Float
  categoryTrgmSimilarity: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  key: String
  value: JSON (optional, has backend default)
  category: String (optional, has backend default)
  keyTrgmSimilarity: Float
  categoryTrgmSimilarity: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, key, value, category, keyTrgmSimilarity, categoryTrgmSimilarity, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, key, value, category, keyTrgmSimilarity, categoryTrgmSimilarity, searchScore }
  create: { id, entityId, createdAt, updatedAt, key, value, category, keyTrgmSimilarity, categoryTrgmSimilarity, searchScore }
  update: { id, entityId, createdAt, updatedAt, key, value, category, keyTrgmSimilarity, categoryTrgmSimilarity, searchScore }
  delete: { id }
```

### TOOL: webhook

CRUD operations for Webhook records.

```
SUBCOMMANDS:
  agentic-db webhook list                               List all records
  agentic-db webhook get --id <value>              Get one record
  agentic-db webhook create --entityId <value> --url <value> --eventType <value> --urlTrgmSimilarity <value> --eventTypeTrgmSimilarity <value> --secretTrgmSimilarity <value> --searchScore <value> [--integrationId <value>] [--secret <value>] [--isActive <value>]
  agentic-db webhook update --id <value> [--entityId <value>] [--integrationId <value>] [--url <value>] [--eventType <value>] [--secret <value>] [--isActive <value>] [--urlTrgmSimilarity <value>] [--eventTypeTrgmSimilarity <value>] [--secretTrgmSimilarity <value>] [--searchScore <value>]
  agentic-db webhook delete --id <value>           Delete one record

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
  urlTrgmSimilarity: Float
  eventTypeTrgmSimilarity: Float
  secretTrgmSimilarity: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  integrationId: UUID (optional, has backend default)
  url: String
  eventType: String
  secret: String (optional, has backend default)
  isActive: Boolean (optional, has backend default)
  urlTrgmSimilarity: Float
  eventTypeTrgmSimilarity: Float
  secretTrgmSimilarity: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, integrationId, url, eventType, secret, isActive, urlTrgmSimilarity, eventTypeTrgmSimilarity, secretTrgmSimilarity, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, integrationId, url, eventType, secret, isActive, urlTrgmSimilarity, eventTypeTrgmSimilarity, secretTrgmSimilarity, searchScore }
  create: { id, entityId, createdAt, updatedAt, integrationId, url, eventType, secret, isActive, urlTrgmSimilarity, eventTypeTrgmSimilarity, secretTrgmSimilarity, searchScore }
  update: { id, entityId, createdAt, updatedAt, integrationId, url, eventType, secret, isActive, urlTrgmSimilarity, eventTypeTrgmSimilarity, secretTrgmSimilarity, searchScore }
  delete: { id }
```

### TOOL: notification

CRUD operations for Notification records.

```
SUBCOMMANDS:
  agentic-db notification list                               List all records
  agentic-db notification get --id <value>              Get one record
  agentic-db notification create --entityId <value> --titleTrgmSimilarity <value> --bodyTrgmSimilarity <value> --typeTrgmSimilarity <value> --priorityTrgmSimilarity <value> --actionUrlTrgmSimilarity <value> --sourceEntityTypeTrgmSimilarity <value> --searchScore <value> [--title <value>] [--body <value>] [--type <value>] [--priority <value>] [--readAt <value>] [--actionUrl <value>] [--sourceEntityId <value>] [--sourceEntityType <value>]
  agentic-db notification update --id <value> [--entityId <value>] [--title <value>] [--body <value>] [--type <value>] [--priority <value>] [--readAt <value>] [--actionUrl <value>] [--sourceEntityId <value>] [--sourceEntityType <value>] [--titleTrgmSimilarity <value>] [--bodyTrgmSimilarity <value>] [--typeTrgmSimilarity <value>] [--priorityTrgmSimilarity <value>] [--actionUrlTrgmSimilarity <value>] [--sourceEntityTypeTrgmSimilarity <value>] [--searchScore <value>]
  agentic-db notification delete --id <value>           Delete one record

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
  titleTrgmSimilarity: Float
  bodyTrgmSimilarity: Float
  typeTrgmSimilarity: Float
  priorityTrgmSimilarity: Float
  actionUrlTrgmSimilarity: Float
  sourceEntityTypeTrgmSimilarity: Float
  searchScore: Float

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
  titleTrgmSimilarity: Float
  bodyTrgmSimilarity: Float
  typeTrgmSimilarity: Float
  priorityTrgmSimilarity: Float
  actionUrlTrgmSimilarity: Float
  sourceEntityTypeTrgmSimilarity: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, body, type, priority, readAt, actionUrl, sourceEntityId, sourceEntityType, titleTrgmSimilarity, bodyTrgmSimilarity, typeTrgmSimilarity, priorityTrgmSimilarity, actionUrlTrgmSimilarity, sourceEntityTypeTrgmSimilarity, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, title, body, type, priority, readAt, actionUrl, sourceEntityId, sourceEntityType, titleTrgmSimilarity, bodyTrgmSimilarity, typeTrgmSimilarity, priorityTrgmSimilarity, actionUrlTrgmSimilarity, sourceEntityTypeTrgmSimilarity, searchScore }
  create: { id, entityId, createdAt, updatedAt, title, body, type, priority, readAt, actionUrl, sourceEntityId, sourceEntityType, titleTrgmSimilarity, bodyTrgmSimilarity, typeTrgmSimilarity, priorityTrgmSimilarity, actionUrlTrgmSimilarity, sourceEntityTypeTrgmSimilarity, searchScore }
  update: { id, entityId, createdAt, updatedAt, title, body, type, priority, readAt, actionUrl, sourceEntityId, sourceEntityType, titleTrgmSimilarity, bodyTrgmSimilarity, typeTrgmSimilarity, priorityTrgmSimilarity, actionUrlTrgmSimilarity, sourceEntityTypeTrgmSimilarity, searchScore }
  delete: { id }
```

### TOOL: workflow-run

CRUD operations for WorkflowRun records.

```
SUBCOMMANDS:
  agentic-db workflow-run list                               List all records
  agentic-db workflow-run get --id <value>              Get one record
  agentic-db workflow-run create --entityId <value> --workflowId <value> --statusTrgmSimilarity <value> --errorTrgmSimilarity <value> --searchScore <value> [--status <value>] [--startedAt <value>] [--completedAt <value>] [--input <value>] [--output <value>] [--error <value>]
  agentic-db workflow-run update --id <value> [--entityId <value>] [--workflowId <value>] [--status <value>] [--startedAt <value>] [--completedAt <value>] [--input <value>] [--output <value>] [--error <value>] [--statusTrgmSimilarity <value>] [--errorTrgmSimilarity <value>] [--searchScore <value>]
  agentic-db workflow-run delete --id <value>           Delete one record

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
  statusTrgmSimilarity: Float
  errorTrgmSimilarity: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  workflowId: UUID
  status: String (optional, has backend default)
  startedAt: Datetime (optional, has backend default)
  completedAt: Datetime (optional, has backend default)
  input: JSON (optional, has backend default)
  output: JSON (optional, has backend default)
  error: String (optional, has backend default)
  statusTrgmSimilarity: Float
  errorTrgmSimilarity: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, workflowId, status, startedAt, completedAt, input, output, error, statusTrgmSimilarity, errorTrgmSimilarity, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, workflowId, status, startedAt, completedAt, input, output, error, statusTrgmSimilarity, errorTrgmSimilarity, searchScore }
  create: { id, entityId, createdAt, updatedAt, workflowId, status, startedAt, completedAt, input, output, error, statusTrgmSimilarity, errorTrgmSimilarity, searchScore }
  update: { id, entityId, createdAt, updatedAt, workflowId, status, startedAt, completedAt, input, output, error, statusTrgmSimilarity, errorTrgmSimilarity, searchScore }
  delete: { id }
```

### TOOL: workflow-step

CRUD operations for WorkflowStep records.

```
SUBCOMMANDS:
  agentic-db workflow-step list                               List all records
  agentic-db workflow-step get --id <value>              Get one record
  agentic-db workflow-step create --entityId <value> --workflowId <value> --stepOrder <value> --actionType <value> --actionTypeTrgmSimilarity <value> --searchScore <value> [--actionConfig <value>] [--onSuccessStep <value>] [--onFailureStep <value>] [--timeoutMs <value>]
  agentic-db workflow-step update --id <value> [--entityId <value>] [--workflowId <value>] [--stepOrder <value>] [--actionType <value>] [--actionConfig <value>] [--onSuccessStep <value>] [--onFailureStep <value>] [--timeoutMs <value>] [--actionTypeTrgmSimilarity <value>] [--searchScore <value>]
  agentic-db workflow-step delete --id <value>           Delete one record

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
  actionTypeTrgmSimilarity: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  workflowId: UUID
  stepOrder: Int
  actionType: String
  actionConfig: JSON (optional, has backend default)
  onSuccessStep: Int (optional, has backend default)
  onFailureStep: Int (optional, has backend default)
  timeoutMs: Int (optional, has backend default)
  actionTypeTrgmSimilarity: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, workflowId, stepOrder, actionType, actionConfig, onSuccessStep, onFailureStep, timeoutMs, actionTypeTrgmSimilarity, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, workflowId, stepOrder, actionType, actionConfig, onSuccessStep, onFailureStep, timeoutMs, actionTypeTrgmSimilarity, searchScore }
  create: { id, entityId, createdAt, updatedAt, workflowId, stepOrder, actionType, actionConfig, onSuccessStep, onFailureStep, timeoutMs, actionTypeTrgmSimilarity, searchScore }
  update: { id, entityId, createdAt, updatedAt, workflowId, stepOrder, actionType, actionConfig, onSuccessStep, onFailureStep, timeoutMs, actionTypeTrgmSimilarity, searchScore }
  delete: { id }
```

### TOOL: integration

CRUD operations for Integration records.

```
SUBCOMMANDS:
  agentic-db integration list                               List all records
  agentic-db integration get --id <value>              Get one record
  agentic-db integration create --entityId <value> --name <value> --provider <value> --nameTrgmSimilarity <value> --providerTrgmSimilarity <value> --typeTrgmSimilarity <value> --credentialsRefTrgmSimilarity <value> --statusTrgmSimilarity <value> --searchScore <value> [--type <value>] [--credentialsRef <value>] [--config <value>] [--status <value>] [--lastSyncedAt <value>]
  agentic-db integration update --id <value> [--entityId <value>] [--name <value>] [--provider <value>] [--type <value>] [--credentialsRef <value>] [--config <value>] [--status <value>] [--lastSyncedAt <value>] [--nameTrgmSimilarity <value>] [--providerTrgmSimilarity <value>] [--typeTrgmSimilarity <value>] [--credentialsRefTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--searchScore <value>]
  agentic-db integration delete --id <value>           Delete one record

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
  nameTrgmSimilarity: Float
  providerTrgmSimilarity: Float
  typeTrgmSimilarity: Float
  credentialsRefTrgmSimilarity: Float
  statusTrgmSimilarity: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  provider: String
  type: String (optional, has backend default)
  credentialsRef: String (optional, has backend default)
  config: JSON (optional, has backend default)
  status: String (optional, has backend default)
  lastSyncedAt: Datetime (optional, has backend default)
  nameTrgmSimilarity: Float
  providerTrgmSimilarity: Float
  typeTrgmSimilarity: Float
  credentialsRefTrgmSimilarity: Float
  statusTrgmSimilarity: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, provider, type, credentialsRef, config, status, lastSyncedAt, nameTrgmSimilarity, providerTrgmSimilarity, typeTrgmSimilarity, credentialsRefTrgmSimilarity, statusTrgmSimilarity, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, name, provider, type, credentialsRef, config, status, lastSyncedAt, nameTrgmSimilarity, providerTrgmSimilarity, typeTrgmSimilarity, credentialsRefTrgmSimilarity, statusTrgmSimilarity, searchScore }
  create: { id, entityId, createdAt, updatedAt, name, provider, type, credentialsRef, config, status, lastSyncedAt, nameTrgmSimilarity, providerTrgmSimilarity, typeTrgmSimilarity, credentialsRefTrgmSimilarity, statusTrgmSimilarity, searchScore }
  update: { id, entityId, createdAt, updatedAt, name, provider, type, credentialsRef, config, status, lastSyncedAt, nameTrgmSimilarity, providerTrgmSimilarity, typeTrgmSimilarity, credentialsRefTrgmSimilarity, statusTrgmSimilarity, searchScore }
  delete: { id }
```

### TOOL: skill-execution

CRUD operations for SkillExecution records.

```
SUBCOMMANDS:
  agentic-db skill-execution list                               List all records
  agentic-db skill-execution get --id <value>              Get one record
  agentic-db skill-execution create --entityId <value> --skillId <value> --statusTrgmSimilarity <value> --errorTrgmSimilarity <value> --searchScore <value> [--agentId <value>] [--sessionId <value>] [--status <value>] [--startedAt <value>] [--completedAt <value>] [--durationMs <value>] [--input <value>] [--output <value>] [--error <value>]
  agentic-db skill-execution update --id <value> [--entityId <value>] [--skillId <value>] [--agentId <value>] [--sessionId <value>] [--status <value>] [--startedAt <value>] [--completedAt <value>] [--durationMs <value>] [--input <value>] [--output <value>] [--error <value>] [--statusTrgmSimilarity <value>] [--errorTrgmSimilarity <value>] [--searchScore <value>]
  agentic-db skill-execution delete --id <value>           Delete one record

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
  statusTrgmSimilarity: Float
  errorTrgmSimilarity: Float
  searchScore: Float

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
  statusTrgmSimilarity: Float
  errorTrgmSimilarity: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, skillId, agentId, sessionId, status, startedAt, completedAt, durationMs, input, output, error, statusTrgmSimilarity, errorTrgmSimilarity, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, skillId, agentId, sessionId, status, startedAt, completedAt, durationMs, input, output, error, statusTrgmSimilarity, errorTrgmSimilarity, searchScore }
  create: { id, entityId, createdAt, updatedAt, skillId, agentId, sessionId, status, startedAt, completedAt, durationMs, input, output, error, statusTrgmSimilarity, errorTrgmSimilarity, searchScore }
  update: { id, entityId, createdAt, updatedAt, skillId, agentId, sessionId, status, startedAt, completedAt, durationMs, input, output, error, statusTrgmSimilarity, errorTrgmSimilarity, searchScore }
  delete: { id }
```

### TOOL: chat

CRUD operations for Chat records.

```
SUBCOMMANDS:
  agentic-db chat list                               List all records
  agentic-db chat get --id <value>              Get one record
  agentic-db chat create --entityId <value> --embeddingTextBm25Score <value> --titleTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--title <value>] [--startedAt <value>] [--embeddingText <value>] [--embedding <value>]
  agentic-db chat update --id <value> [--entityId <value>] [--title <value>] [--startedAt <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--titleTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
  agentic-db chat delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  title: String
  startedAt: Datetime
  embeddingText: String
  embedding: Vector
  embeddingTextBm25Score: Float
  titleTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  title: String (optional, has backend default)
  startedAt: Datetime (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingTextBm25Score: Float
  titleTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, startedAt, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, title, startedAt, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, title, startedAt, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, title, startedAt, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: chat-message

CRUD operations for ChatMessage records.

```
SUBCOMMANDS:
  agentic-db chat-message list                               List all records
  agentic-db chat-message get --id <value>              Get one record
  agentic-db chat-message create --entityId <value> --contentBm25Score <value> --embeddingTextBm25Score <value> --roleTrgmSimilarity <value> --contentTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--chatId <value>] [--threadId <value>] [--role <value>] [--content <value>] [--toolCalls <value>] [--embeddingText <value>] [--embedding <value>]
  agentic-db chat-message update --id <value> [--entityId <value>] [--chatId <value>] [--threadId <value>] [--role <value>] [--content <value>] [--toolCalls <value>] [--embeddingText <value>] [--embedding <value>] [--contentBm25Score <value>] [--embeddingTextBm25Score <value>] [--roleTrgmSimilarity <value>] [--contentTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
  agentic-db chat-message delete --id <value>           Delete one record

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
  contentBm25Score: Float
  embeddingTextBm25Score: Float
  roleTrgmSimilarity: Float
  contentTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  chatId: UUID (optional, has backend default)
  threadId: UUID (optional, has backend default)
  role: String (optional, has backend default)
  content: String (optional, has backend default)
  toolCalls: JSON (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  contentBm25Score: Float
  embeddingTextBm25Score: Float
  roleTrgmSimilarity: Float
  contentTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, chatId, threadId, role, content, toolCalls, embeddingText, embedding, contentBm25Score, embeddingTextBm25Score, roleTrgmSimilarity, contentTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, chatId, threadId, role, content, toolCalls, embeddingText, embedding, contentBm25Score, embeddingTextBm25Score, roleTrgmSimilarity, contentTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, chatId, threadId, role, content, toolCalls, embeddingText, embedding, contentBm25Score, embeddingTextBm25Score, roleTrgmSimilarity, contentTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, chatId, threadId, role, content, toolCalls, embeddingText, embedding, contentBm25Score, embeddingTextBm25Score, roleTrgmSimilarity, contentTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: thread

CRUD operations for Thread records.

```
SUBCOMMANDS:
  agentic-db thread list                               List all records
  agentic-db thread get --id <value>              Get one record
  agentic-db thread create --entityId <value> --title <value> --embeddingTextBm25Score <value> --titleTrgmSimilarity <value> --summaryTrgmSimilarity <value> --statusTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--summary <value>] [--status <value>] [--parentThreadId <value>] [--embeddingText <value>] [--embedding <value>]
  agentic-db thread update --id <value> [--entityId <value>] [--title <value>] [--summary <value>] [--status <value>] [--parentThreadId <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--titleTrgmSimilarity <value>] [--summaryTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
  agentic-db thread delete --id <value>           Delete one record

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
  embeddingTextBm25Score: Float
  titleTrgmSimilarity: Float
  summaryTrgmSimilarity: Float
  statusTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  title: String
  summary: String (optional, has backend default)
  status: String (optional, has backend default)
  parentThreadId: UUID (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingTextBm25Score: Float
  titleTrgmSimilarity: Float
  summaryTrgmSimilarity: Float
  statusTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, summary, status, parentThreadId, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, summaryTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, title, summary, status, parentThreadId, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, summaryTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, title, summary, status, parentThreadId, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, summaryTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, title, summary, status, parentThreadId, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, summaryTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: reminder

CRUD operations for Reminder records.

```
SUBCOMMANDS:
  agentic-db reminder list                               List all records
  agentic-db reminder get --id <value>              Get one record
  agentic-db reminder create --entityId <value> --title <value> --embeddingTextBm25Score <value> --titleTrgmSimilarity <value> --recurrenceTrgmSimilarity <value> --statusTrgmSimilarity <value> --relatedEntityTypeTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--dueAt <value>] [--completedAt <value>] [--recurrence <value>] [--status <value>] [--relatedEntityId <value>] [--relatedEntityType <value>] [--embeddingText <value>] [--embedding <value>]
  agentic-db reminder update --id <value> [--entityId <value>] [--title <value>] [--dueAt <value>] [--completedAt <value>] [--recurrence <value>] [--status <value>] [--relatedEntityId <value>] [--relatedEntityType <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--titleTrgmSimilarity <value>] [--recurrenceTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--relatedEntityTypeTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
  agentic-db reminder delete --id <value>           Delete one record

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
  embeddingTextBm25Score: Float
  titleTrgmSimilarity: Float
  recurrenceTrgmSimilarity: Float
  statusTrgmSimilarity: Float
  relatedEntityTypeTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

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
  embeddingTextBm25Score: Float
  titleTrgmSimilarity: Float
  recurrenceTrgmSimilarity: Float
  statusTrgmSimilarity: Float
  relatedEntityTypeTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, dueAt, completedAt, recurrence, status, relatedEntityId, relatedEntityType, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, recurrenceTrgmSimilarity, statusTrgmSimilarity, relatedEntityTypeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, title, dueAt, completedAt, recurrence, status, relatedEntityId, relatedEntityType, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, recurrenceTrgmSimilarity, statusTrgmSimilarity, relatedEntityTypeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, title, dueAt, completedAt, recurrence, status, relatedEntityId, relatedEntityType, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, recurrenceTrgmSimilarity, statusTrgmSimilarity, relatedEntityTypeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, title, dueAt, completedAt, recurrence, status, relatedEntityId, relatedEntityType, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, recurrenceTrgmSimilarity, statusTrgmSimilarity, relatedEntityTypeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: image

CRUD operations for Image records.

```
SUBCOMMANDS:
  agentic-db image list                               List all records
  agentic-db image get --id <value>              Get one record
  agentic-db image create --entityId <value> --url <value> --urlTrgmSimilarity <value> --altTextTrgmSimilarity <value> --captionTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--meta <value>] [--altText <value>] [--caption <value>] [--embedding <value>]
  agentic-db image update --id <value> [--entityId <value>] [--url <value>] [--meta <value>] [--altText <value>] [--caption <value>] [--embedding <value>] [--urlTrgmSimilarity <value>] [--altTextTrgmSimilarity <value>] [--captionTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
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
  urlTrgmSimilarity: Float
  altTextTrgmSimilarity: Float
  captionTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  url: String
  meta: JSON (optional, has backend default)
  altText: String (optional, has backend default)
  caption: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  urlTrgmSimilarity: Float
  altTextTrgmSimilarity: Float
  captionTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, url, meta, altText, caption, embedding, urlTrgmSimilarity, altTextTrgmSimilarity, captionTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, url, meta, altText, caption, embedding, urlTrgmSimilarity, altTextTrgmSimilarity, captionTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, url, meta, altText, caption, embedding, urlTrgmSimilarity, altTextTrgmSimilarity, captionTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, url, meta, altText, caption, embedding, urlTrgmSimilarity, altTextTrgmSimilarity, captionTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: list-item

CRUD operations for ListItem records.

```
SUBCOMMANDS:
  agentic-db list-item list                               List all records
  agentic-db list-item get --id <value>              Get one record
  agentic-db list-item create --entityId <value> --listId <value> --contentTrgmSimilarity <value> --refTypeTrgmSimilarity <value> --searchScore <value> [--content <value>] [--position <value>] [--isChecked <value>] [--refId <value>] [--refType <value>]
  agentic-db list-item update --id <value> [--entityId <value>] [--listId <value>] [--content <value>] [--position <value>] [--isChecked <value>] [--refId <value>] [--refType <value>] [--contentTrgmSimilarity <value>] [--refTypeTrgmSimilarity <value>] [--searchScore <value>]
  agentic-db list-item delete --id <value>           Delete one record

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
  contentTrgmSimilarity: Float
  refTypeTrgmSimilarity: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  listId: UUID
  content: String (optional, has backend default)
  position: Int (optional, has backend default)
  isChecked: Boolean (optional, has backend default)
  refId: UUID (optional, has backend default)
  refType: String (optional, has backend default)
  contentTrgmSimilarity: Float
  refTypeTrgmSimilarity: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, listId, content, position, isChecked, refId, refType, contentTrgmSimilarity, refTypeTrgmSimilarity, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, listId, content, position, isChecked, refId, refType, contentTrgmSimilarity, refTypeTrgmSimilarity, searchScore }
  create: { id, entityId, createdAt, updatedAt, listId, content, position, isChecked, refId, refType, contentTrgmSimilarity, refTypeTrgmSimilarity, searchScore }
  update: { id, entityId, createdAt, updatedAt, listId, content, position, isChecked, refId, refType, contentTrgmSimilarity, refTypeTrgmSimilarity, searchScore }
  delete: { id }
```

### TOOL: company-link

CRUD operations for CompanyLink records.

```
SUBCOMMANDS:
  agentic-db company-link list                               List all records
  agentic-db company-link get --id <value>              Get one record
  agentic-db company-link create --entityId <value> --url <value> --companyId <value> --titleTrgmSimilarity <value> --urlTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--title <value>] [--embedding <value>]
  agentic-db company-link update --id <value> [--entityId <value>] [--title <value>] [--url <value>] [--embedding <value>] [--companyId <value>] [--titleTrgmSimilarity <value>] [--urlTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
  agentic-db company-link delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  title: String
  url: String
  embedding: Vector
  companyId: UUID
  titleTrgmSimilarity: Float
  urlTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  title: String (optional, has backend default)
  url: String
  embedding: Vector (optional, has backend default)
  companyId: UUID
  titleTrgmSimilarity: Float
  urlTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, url, embedding, companyId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, title, url, embedding, companyId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, title, url, embedding, companyId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, title, url, embedding, companyId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: contact-link

CRUD operations for ContactLink records.

```
SUBCOMMANDS:
  agentic-db contact-link list                               List all records
  agentic-db contact-link get --id <value>              Get one record
  agentic-db contact-link create --entityId <value> --url <value> --contactId <value> --titleTrgmSimilarity <value> --urlTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--title <value>] [--embedding <value>]
  agentic-db contact-link update --id <value> [--entityId <value>] [--title <value>] [--url <value>] [--embedding <value>] [--contactId <value>] [--titleTrgmSimilarity <value>] [--urlTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
  agentic-db contact-link delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  title: String
  url: String
  embedding: Vector
  contactId: UUID
  titleTrgmSimilarity: Float
  urlTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  title: String (optional, has backend default)
  url: String
  embedding: Vector (optional, has backend default)
  contactId: UUID
  titleTrgmSimilarity: Float
  urlTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, url, embedding, contactId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, title, url, embedding, contactId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, title, url, embedding, contactId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, title, url, embedding, contactId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: event-link

CRUD operations for EventLink records.

```
SUBCOMMANDS:
  agentic-db event-link list                               List all records
  agentic-db event-link get --id <value>              Get one record
  agentic-db event-link create --entityId <value> --url <value> --eventId <value> --titleTrgmSimilarity <value> --urlTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--title <value>] [--embedding <value>]
  agentic-db event-link update --id <value> [--entityId <value>] [--title <value>] [--url <value>] [--embedding <value>] [--eventId <value>] [--titleTrgmSimilarity <value>] [--urlTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
  agentic-db event-link delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  title: String
  url: String
  embedding: Vector
  eventId: UUID
  titleTrgmSimilarity: Float
  urlTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  title: String (optional, has backend default)
  url: String
  embedding: Vector (optional, has backend default)
  eventId: UUID
  titleTrgmSimilarity: Float
  urlTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, url, embedding, eventId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, title, url, embedding, eventId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, title, url, embedding, eventId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, title, url, embedding, eventId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: venue-link

CRUD operations for VenueLink records.

```
SUBCOMMANDS:
  agentic-db venue-link list                               List all records
  agentic-db venue-link get --id <value>              Get one record
  agentic-db venue-link create --entityId <value> --url <value> --venueId <value> --titleTrgmSimilarity <value> --urlTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--title <value>] [--embedding <value>]
  agentic-db venue-link update --id <value> [--entityId <value>] [--title <value>] [--url <value>] [--embedding <value>] [--venueId <value>] [--titleTrgmSimilarity <value>] [--urlTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
  agentic-db venue-link delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  title: String
  url: String
  embedding: Vector
  venueId: UUID
  titleTrgmSimilarity: Float
  urlTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  title: String (optional, has backend default)
  url: String
  embedding: Vector (optional, has backend default)
  venueId: UUID
  titleTrgmSimilarity: Float
  urlTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, url, embedding, venueId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, title, url, embedding, venueId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, title, url, embedding, venueId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, title, url, embedding, venueId, titleTrgmSimilarity, urlTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: agent-spawn

CRUD operations for AgentSpawn records.

```
SUBCOMMANDS:
  agentic-db agent-spawn list                               List all records
  agentic-db agent-spawn get --id <value>              Get one record
  agentic-db agent-spawn create --entityId <value> --parentAgentId <value> --task <value> --agentId <value> --taskTrgmSimilarity <value> --statusTrgmSimilarity <value> --searchScore <value> [--childAgentId <value>] [--sessionId <value>] [--status <value>] [--result <value>] [--maxIterations <value>] [--startedAt <value>] [--completedAt <value>]
  agentic-db agent-spawn update --id <value> [--entityId <value>] [--parentAgentId <value>] [--childAgentId <value>] [--sessionId <value>] [--task <value>] [--status <value>] [--result <value>] [--maxIterations <value>] [--startedAt <value>] [--completedAt <value>] [--agentId <value>] [--taskTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--searchScore <value>]
  agentic-db agent-spawn delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  parentAgentId: UUID
  childAgentId: UUID
  sessionId: UUID
  task: String
  status: String
  result: JSON
  maxIterations: Int
  startedAt: Datetime
  completedAt: Datetime
  agentId: UUID
  taskTrgmSimilarity: Float
  statusTrgmSimilarity: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  parentAgentId: UUID
  childAgentId: UUID (optional, has backend default)
  sessionId: UUID (optional, has backend default)
  task: String
  status: String (optional, has backend default)
  result: JSON (optional, has backend default)
  maxIterations: Int (optional, has backend default)
  startedAt: Datetime (optional, has backend default)
  completedAt: Datetime (optional, has backend default)
  agentId: UUID
  taskTrgmSimilarity: Float
  statusTrgmSimilarity: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, parentAgentId, childAgentId, sessionId, task, status, result, maxIterations, startedAt, completedAt, agentId, taskTrgmSimilarity, statusTrgmSimilarity, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, parentAgentId, childAgentId, sessionId, task, status, result, maxIterations, startedAt, completedAt, agentId, taskTrgmSimilarity, statusTrgmSimilarity, searchScore }
  create: { id, entityId, createdAt, updatedAt, parentAgentId, childAgentId, sessionId, task, status, result, maxIterations, startedAt, completedAt, agentId, taskTrgmSimilarity, statusTrgmSimilarity, searchScore }
  update: { id, entityId, createdAt, updatedAt, parentAgentId, childAgentId, sessionId, task, status, result, maxIterations, startedAt, completedAt, agentId, taskTrgmSimilarity, statusTrgmSimilarity, searchScore }
  delete: { id }
```

### TOOL: habit

CRUD operations for Habit records.

```
SUBCOMMANDS:
  agentic-db habit list                               List all records
  agentic-db habit get --id <value>              Get one record
  agentic-db habit create --entityId <value> --name <value> --nameTrgmSimilarity <value> --frequencyTrgmSimilarity <value> --categoryTrgmSimilarity <value> --searchScore <value> [--frequency <value>] [--targetCount <value>] [--currentStreak <value>] [--bestStreak <value>] [--category <value>] [--tags <value>]
  agentic-db habit update --id <value> [--entityId <value>] [--name <value>] [--frequency <value>] [--targetCount <value>] [--currentStreak <value>] [--bestStreak <value>] [--category <value>] [--tags <value>] [--nameTrgmSimilarity <value>] [--frequencyTrgmSimilarity <value>] [--categoryTrgmSimilarity <value>] [--searchScore <value>]
  agentic-db habit delete --id <value>           Delete one record

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
  nameTrgmSimilarity: Float
  frequencyTrgmSimilarity: Float
  categoryTrgmSimilarity: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  frequency: String (optional, has backend default)
  targetCount: Int (optional, has backend default)
  currentStreak: Int (optional, has backend default)
  bestStreak: Int (optional, has backend default)
  category: String (optional, has backend default)
  tags: String (optional, has backend default)
  nameTrgmSimilarity: Float
  frequencyTrgmSimilarity: Float
  categoryTrgmSimilarity: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, frequency, targetCount, currentStreak, bestStreak, category, tags, nameTrgmSimilarity, frequencyTrgmSimilarity, categoryTrgmSimilarity, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, name, frequency, targetCount, currentStreak, bestStreak, category, tags, nameTrgmSimilarity, frequencyTrgmSimilarity, categoryTrgmSimilarity, searchScore }
  create: { id, entityId, createdAt, updatedAt, name, frequency, targetCount, currentStreak, bestStreak, category, tags, nameTrgmSimilarity, frequencyTrgmSimilarity, categoryTrgmSimilarity, searchScore }
  update: { id, entityId, createdAt, updatedAt, name, frequency, targetCount, currentStreak, bestStreak, category, tags, nameTrgmSimilarity, frequencyTrgmSimilarity, categoryTrgmSimilarity, searchScore }
  delete: { id }
```

### TOOL: workflow

CRUD operations for Workflow records.

```
SUBCOMMANDS:
  agentic-db workflow list                               List all records
  agentic-db workflow get --id <value>              Get one record
  agentic-db workflow create --entityId <value> --name <value> --nameTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --triggerTypeTrgmSimilarity <value> --searchScore <value> [--description <value>] [--triggerType <value>] [--triggerConfig <value>] [--isActive <value>] [--tags <value>]
  agentic-db workflow update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--triggerType <value>] [--triggerConfig <value>] [--isActive <value>] [--tags <value>] [--nameTrgmSimilarity <value>] [--descriptionTrgmSimilarity <value>] [--triggerTypeTrgmSimilarity <value>] [--searchScore <value>]
  agentic-db workflow delete --id <value>           Delete one record

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
  nameTrgmSimilarity: Float
  descriptionTrgmSimilarity: Float
  triggerTypeTrgmSimilarity: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  description: String (optional, has backend default)
  triggerType: String (optional, has backend default)
  triggerConfig: JSON (optional, has backend default)
  isActive: Boolean (optional, has backend default)
  tags: String (optional, has backend default)
  nameTrgmSimilarity: Float
  descriptionTrgmSimilarity: Float
  triggerTypeTrgmSimilarity: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, description, triggerType, triggerConfig, isActive, tags, nameTrgmSimilarity, descriptionTrgmSimilarity, triggerTypeTrgmSimilarity, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, name, description, triggerType, triggerConfig, isActive, tags, nameTrgmSimilarity, descriptionTrgmSimilarity, triggerTypeTrgmSimilarity, searchScore }
  create: { id, entityId, createdAt, updatedAt, name, description, triggerType, triggerConfig, isActive, tags, nameTrgmSimilarity, descriptionTrgmSimilarity, triggerTypeTrgmSimilarity, searchScore }
  update: { id, entityId, createdAt, updatedAt, name, description, triggerType, triggerConfig, isActive, tags, nameTrgmSimilarity, descriptionTrgmSimilarity, triggerTypeTrgmSimilarity, searchScore }
  delete: { id }
```

### TOOL: expense

CRUD operations for Expense records.

```
SUBCOMMANDS:
  agentic-db expense list                               List all records
  agentic-db expense get --id <value>              Get one record
  agentic-db expense create --entityId <value> --currencyTrgmSimilarity <value> --categoryTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --merchantTrgmSimilarity <value> --receiptUrlTrgmSimilarity <value> --searchScore <value> [--amount <value>] [--currency <value>] [--date <value>] [--category <value>] [--description <value>] [--merchant <value>] [--receiptUrl <value>] [--isRecurring <value>] [--tags <value>]
  agentic-db expense update --id <value> [--entityId <value>] [--amount <value>] [--currency <value>] [--date <value>] [--category <value>] [--description <value>] [--merchant <value>] [--receiptUrl <value>] [--isRecurring <value>] [--tags <value>] [--currencyTrgmSimilarity <value>] [--categoryTrgmSimilarity <value>] [--descriptionTrgmSimilarity <value>] [--merchantTrgmSimilarity <value>] [--receiptUrlTrgmSimilarity <value>] [--searchScore <value>]
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
  isRecurring: Boolean
  tags: String
  currencyTrgmSimilarity: Float
  categoryTrgmSimilarity: Float
  descriptionTrgmSimilarity: Float
  merchantTrgmSimilarity: Float
  receiptUrlTrgmSimilarity: Float
  searchScore: Float

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
  currencyTrgmSimilarity: Float
  categoryTrgmSimilarity: Float
  descriptionTrgmSimilarity: Float
  merchantTrgmSimilarity: Float
  receiptUrlTrgmSimilarity: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, amount, currency, date, category, description, merchant, receiptUrl, isRecurring, tags, currencyTrgmSimilarity, categoryTrgmSimilarity, descriptionTrgmSimilarity, merchantTrgmSimilarity, receiptUrlTrgmSimilarity, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, amount, currency, date, category, description, merchant, receiptUrl, isRecurring, tags, currencyTrgmSimilarity, categoryTrgmSimilarity, descriptionTrgmSimilarity, merchantTrgmSimilarity, receiptUrlTrgmSimilarity, searchScore }
  create: { id, entityId, createdAt, updatedAt, amount, currency, date, category, description, merchant, receiptUrl, isRecurring, tags, currencyTrgmSimilarity, categoryTrgmSimilarity, descriptionTrgmSimilarity, merchantTrgmSimilarity, receiptUrlTrgmSimilarity, searchScore }
  update: { id, entityId, createdAt, updatedAt, amount, currency, date, category, description, merchant, receiptUrl, isRecurring, tags, currencyTrgmSimilarity, categoryTrgmSimilarity, descriptionTrgmSimilarity, merchantTrgmSimilarity, receiptUrlTrgmSimilarity, searchScore }
  delete: { id }
```

### TOOL: billing-subscription

CRUD operations for BillingSubscription records.

```
SUBCOMMANDS:
  agentic-db billing-subscription list                               List all records
  agentic-db billing-subscription get --id <value>              Get one record
  agentic-db billing-subscription create --entityId <value> --name <value> --nameTrgmSimilarity <value> --currencyTrgmSimilarity <value> --frequencyTrgmSimilarity <value> --providerTrgmSimilarity <value> --statusTrgmSimilarity <value> --notesTrgmSimilarity <value> --searchScore <value> [--amount <value>] [--currency <value>] [--frequency <value>] [--provider <value>] [--nextBillingDate <value>] [--cancellationDate <value>] [--status <value>] [--tags <value>] [--notes <value>]
  agentic-db billing-subscription update --id <value> [--entityId <value>] [--name <value>] [--amount <value>] [--currency <value>] [--frequency <value>] [--provider <value>] [--nextBillingDate <value>] [--cancellationDate <value>] [--status <value>] [--tags <value>] [--notes <value>] [--nameTrgmSimilarity <value>] [--currencyTrgmSimilarity <value>] [--frequencyTrgmSimilarity <value>] [--providerTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--notesTrgmSimilarity <value>] [--searchScore <value>]
  agentic-db billing-subscription delete --id <value>           Delete one record

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
  nameTrgmSimilarity: Float
  currencyTrgmSimilarity: Float
  frequencyTrgmSimilarity: Float
  providerTrgmSimilarity: Float
  statusTrgmSimilarity: Float
  notesTrgmSimilarity: Float
  searchScore: Float

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
  nameTrgmSimilarity: Float
  currencyTrgmSimilarity: Float
  frequencyTrgmSimilarity: Float
  providerTrgmSimilarity: Float
  statusTrgmSimilarity: Float
  notesTrgmSimilarity: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, amount, currency, frequency, provider, nextBillingDate, cancellationDate, status, tags, notes, nameTrgmSimilarity, currencyTrgmSimilarity, frequencyTrgmSimilarity, providerTrgmSimilarity, statusTrgmSimilarity, notesTrgmSimilarity, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, name, amount, currency, frequency, provider, nextBillingDate, cancellationDate, status, tags, notes, nameTrgmSimilarity, currencyTrgmSimilarity, frequencyTrgmSimilarity, providerTrgmSimilarity, statusTrgmSimilarity, notesTrgmSimilarity, searchScore }
  create: { id, entityId, createdAt, updatedAt, name, amount, currency, frequency, provider, nextBillingDate, cancellationDate, status, tags, notes, nameTrgmSimilarity, currencyTrgmSimilarity, frequencyTrgmSimilarity, providerTrgmSimilarity, statusTrgmSimilarity, notesTrgmSimilarity, searchScore }
  update: { id, entityId, createdAt, updatedAt, name, amount, currency, frequency, provider, nextBillingDate, cancellationDate, status, tags, notes, nameTrgmSimilarity, currencyTrgmSimilarity, frequencyTrgmSimilarity, providerTrgmSimilarity, statusTrgmSimilarity, notesTrgmSimilarity, searchScore }
  delete: { id }
```

### TOOL: idea

CRUD operations for Idea records.

```
SUBCOMMANDS:
  agentic-db idea list                               List all records
  agentic-db idea get --id <value>              Get one record
  agentic-db idea create --entityId <value> --content <value> --embeddingTextBm25Score <value> --contentTrgmSimilarity <value> --sourceTrgmSimilarity <value> --statusTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--source <value>] [--status <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agentic-db idea update --id <value> [--entityId <value>] [--content <value>] [--source <value>] [--status <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--contentTrgmSimilarity <value>] [--sourceTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
  agentic-db idea delete --id <value>           Delete one record

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
  embeddingTextBm25Score: Float
  contentTrgmSimilarity: Float
  sourceTrgmSimilarity: Float
  statusTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  content: String
  source: String (optional, has backend default)
  status: String (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingTextBm25Score: Float
  contentTrgmSimilarity: Float
  sourceTrgmSimilarity: Float
  statusTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, content, source, status, tags, embeddingText, embedding, embeddingTextBm25Score, contentTrgmSimilarity, sourceTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, content, source, status, tags, embeddingText, embedding, embeddingTextBm25Score, contentTrgmSimilarity, sourceTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, content, source, status, tags, embeddingText, embedding, embeddingTextBm25Score, contentTrgmSimilarity, sourceTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, content, source, status, tags, embeddingText, embedding, embeddingTextBm25Score, contentTrgmSimilarity, sourceTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: list

CRUD operations for List records.

```
SUBCOMMANDS:
  agentic-db list list                               List all records
  agentic-db list get --id <value>              Get one record
  agentic-db list create --entityId <value> --name <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --typeTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--description <value>] [--type <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agentic-db list update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--type <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--nameTrgmSimilarity <value>] [--descriptionTrgmSimilarity <value>] [--typeTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
  agentic-db list delete --id <value>           Delete one record

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
  embeddingTextBm25Score: Float
  nameTrgmSimilarity: Float
  descriptionTrgmSimilarity: Float
  typeTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  description: String (optional, has backend default)
  type: String (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingTextBm25Score: Float
  nameTrgmSimilarity: Float
  descriptionTrgmSimilarity: Float
  typeTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, description, type, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, typeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, name, description, type, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, typeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, name, description, type, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, typeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, name, description, type, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, typeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: repository

CRUD operations for Repository records.

```
SUBCOMMANDS:
  agentic-db repository list                               List all records
  agentic-db repository get --id <value>              Get one record
  agentic-db repository create --entityId <value> --name <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --urlTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --defaultBranchTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--url <value>] [--description <value>] [--defaultBranch <value>] [--lastSyncedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agentic-db repository update --id <value> [--entityId <value>] [--name <value>] [--url <value>] [--description <value>] [--defaultBranch <value>] [--lastSyncedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--nameTrgmSimilarity <value>] [--urlTrgmSimilarity <value>] [--descriptionTrgmSimilarity <value>] [--defaultBranchTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
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
  tags: String
  embeddingText: String
  embedding: Vector
  embeddingTextBm25Score: Float
  nameTrgmSimilarity: Float
  urlTrgmSimilarity: Float
  descriptionTrgmSimilarity: Float
  defaultBranchTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

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
  embeddingTextBm25Score: Float
  nameTrgmSimilarity: Float
  urlTrgmSimilarity: Float
  descriptionTrgmSimilarity: Float
  defaultBranchTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, url, description, defaultBranch, lastSyncedAt, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, urlTrgmSimilarity, descriptionTrgmSimilarity, defaultBranchTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, name, url, description, defaultBranch, lastSyncedAt, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, urlTrgmSimilarity, descriptionTrgmSimilarity, defaultBranchTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, name, url, description, defaultBranch, lastSyncedAt, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, urlTrgmSimilarity, descriptionTrgmSimilarity, defaultBranchTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, name, url, description, defaultBranch, lastSyncedAt, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, urlTrgmSimilarity, descriptionTrgmSimilarity, defaultBranchTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: deal

CRUD operations for Deal records.

```
SUBCOMMANDS:
  agentic-db deal list                               List all records
  agentic-db deal get --id <value>              Get one record
  agentic-db deal create --entityId <value> --name <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --stageTrgmSimilarity <value> --currencyTrgmSimilarity <value> --notesTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--stage <value>] [--value <value>] [--currency <value>] [--expectedCloseDate <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agentic-db deal update --id <value> [--entityId <value>] [--name <value>] [--stage <value>] [--value <value>] [--currency <value>] [--expectedCloseDate <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--nameTrgmSimilarity <value>] [--stageTrgmSimilarity <value>] [--currencyTrgmSimilarity <value>] [--notesTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
  agentic-db deal delete --id <value>           Delete one record

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
  embeddingTextBm25Score: Float
  nameTrgmSimilarity: Float
  stageTrgmSimilarity: Float
  currencyTrgmSimilarity: Float
  notesTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

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
  embeddingTextBm25Score: Float
  nameTrgmSimilarity: Float
  stageTrgmSimilarity: Float
  currencyTrgmSimilarity: Float
  notesTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, stage, value, currency, expectedCloseDate, notes, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, stageTrgmSimilarity, currencyTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, name, stage, value, currency, expectedCloseDate, notes, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, stageTrgmSimilarity, currencyTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, name, stage, value, currency, expectedCloseDate, notes, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, stageTrgmSimilarity, currencyTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, name, stage, value, currency, expectedCloseDate, notes, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, stageTrgmSimilarity, currencyTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: goal

CRUD operations for Goal records.

```
SUBCOMMANDS:
  agentic-db goal list                               List all records
  agentic-db goal get --id <value>              Get one record
  agentic-db goal create --entityId <value> --title <value> --embeddingTextBm25Score <value> --titleTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --statusTrgmSimilarity <value> --categoryTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--description <value>] [--targetDate <value>] [--status <value>] [--category <value>] [--progressPct <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agentic-db goal update --id <value> [--entityId <value>] [--title <value>] [--description <value>] [--targetDate <value>] [--status <value>] [--category <value>] [--progressPct <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--titleTrgmSimilarity <value>] [--descriptionTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--categoryTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
  agentic-db goal delete --id <value>           Delete one record

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
  embeddingTextBm25Score: Float
  titleTrgmSimilarity: Float
  descriptionTrgmSimilarity: Float
  statusTrgmSimilarity: Float
  categoryTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

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
  embeddingTextBm25Score: Float
  titleTrgmSimilarity: Float
  descriptionTrgmSimilarity: Float
  statusTrgmSimilarity: Float
  categoryTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, description, targetDate, status, category, progressPct, tags, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, descriptionTrgmSimilarity, statusTrgmSimilarity, categoryTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, title, description, targetDate, status, category, progressPct, tags, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, descriptionTrgmSimilarity, statusTrgmSimilarity, categoryTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, title, description, targetDate, status, category, progressPct, tags, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, descriptionTrgmSimilarity, statusTrgmSimilarity, categoryTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, title, description, targetDate, status, category, progressPct, tags, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, descriptionTrgmSimilarity, statusTrgmSimilarity, categoryTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: note

CRUD operations for Note records.

```
SUBCOMMANDS:
  agentic-db note list                               List all records
  agentic-db note get --id <value>              Get one record
  agentic-db note create --entityId <value> --content <value> --contentBm25Score <value> --embeddingTextBm25Score <value> --contentTrgmSimilarity <value> --notableTypeTrgmSimilarity <value> --abstractTrgmSimilarity <value> --overviewTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--notableType <value>] [--notableId <value>] [--abstract <value>] [--overview <value>] [--activeCount <value>] [--lastAccessedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agentic-db note update --id <value> [--entityId <value>] [--content <value>] [--notableType <value>] [--notableId <value>] [--abstract <value>] [--overview <value>] [--activeCount <value>] [--lastAccessedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--contentBm25Score <value>] [--embeddingTextBm25Score <value>] [--contentTrgmSimilarity <value>] [--notableTypeTrgmSimilarity <value>] [--abstractTrgmSimilarity <value>] [--overviewTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
  agentic-db note delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  content: String
  notableType: String
  notableId: UUID
  abstract: String
  overview: String
  activeCount: Int
  lastAccessedAt: Datetime
  tags: String
  embeddingText: String
  embedding: Vector
  contentBm25Score: Float
  embeddingTextBm25Score: Float
  contentTrgmSimilarity: Float
  notableTypeTrgmSimilarity: Float
  abstractTrgmSimilarity: Float
  overviewTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  content: String
  notableType: String (optional, has backend default)
  notableId: UUID (optional, has backend default)
  abstract: String (optional, has backend default)
  overview: String (optional, has backend default)
  activeCount: Int (optional, has backend default)
  lastAccessedAt: Datetime (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  contentBm25Score: Float
  embeddingTextBm25Score: Float
  contentTrgmSimilarity: Float
  notableTypeTrgmSimilarity: Float
  abstractTrgmSimilarity: Float
  overviewTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, content, notableType, notableId, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, contentBm25Score, embeddingTextBm25Score, contentTrgmSimilarity, notableTypeTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, content, notableType, notableId, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, contentBm25Score, embeddingTextBm25Score, contentTrgmSimilarity, notableTypeTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, content, notableType, notableId, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, contentBm25Score, embeddingTextBm25Score, contentTrgmSimilarity, notableTypeTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, content, notableType, notableId, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, contentBm25Score, embeddingTextBm25Score, contentTrgmSimilarity, notableTypeTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: prompt

CRUD operations for Prompt records.

```
SUBCOMMANDS:
  agentic-db prompt list                               List all records
  agentic-db prompt get --id <value>              Get one record
  agentic-db prompt create --entityId <value> --name <value> --content <value> --contentBm25Score <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --contentTrgmSimilarity <value> --typeTrgmSimilarity <value> --modelTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--type <value>] [--model <value>] [--version <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agentic-db prompt update --id <value> [--entityId <value>] [--name <value>] [--content <value>] [--type <value>] [--model <value>] [--version <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--contentBm25Score <value>] [--embeddingTextBm25Score <value>] [--nameTrgmSimilarity <value>] [--contentTrgmSimilarity <value>] [--typeTrgmSimilarity <value>] [--modelTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
  agentic-db prompt delete --id <value>           Delete one record

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
  contentBm25Score: Float
  embeddingTextBm25Score: Float
  nameTrgmSimilarity: Float
  contentTrgmSimilarity: Float
  typeTrgmSimilarity: Float
  modelTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

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
  contentBm25Score: Float
  embeddingTextBm25Score: Float
  nameTrgmSimilarity: Float
  contentTrgmSimilarity: Float
  typeTrgmSimilarity: Float
  modelTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, content, type, model, version, isActive, tags, embeddingText, embedding, contentBm25Score, embeddingTextBm25Score, nameTrgmSimilarity, contentTrgmSimilarity, typeTrgmSimilarity, modelTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, name, content, type, model, version, isActive, tags, embeddingText, embedding, contentBm25Score, embeddingTextBm25Score, nameTrgmSimilarity, contentTrgmSimilarity, typeTrgmSimilarity, modelTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, name, content, type, model, version, isActive, tags, embeddingText, embedding, contentBm25Score, embeddingTextBm25Score, nameTrgmSimilarity, contentTrgmSimilarity, typeTrgmSimilarity, modelTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, name, content, type, model, version, isActive, tags, embeddingText, embedding, contentBm25Score, embeddingTextBm25Score, nameTrgmSimilarity, contentTrgmSimilarity, typeTrgmSimilarity, modelTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: blueprint

CRUD operations for Blueprint records.

```
SUBCOMMANDS:
  agentic-db blueprint list                               List all records
  agentic-db blueprint get --id <value>              Get one record
  agentic-db blueprint create --entityId <value> --title <value> --embeddingTextBm25Score <value> --titleTrgmSimilarity <value> --triggerConditionsTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--steps <value>] [--triggerConditions <value>] [--conversationId <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agentic-db blueprint update --id <value> [--entityId <value>] [--title <value>] [--steps <value>] [--triggerConditions <value>] [--conversationId <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--titleTrgmSimilarity <value>] [--triggerConditionsTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
  agentic-db blueprint delete --id <value>           Delete one record

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
  embeddingTextBm25Score: Float
  titleTrgmSimilarity: Float
  triggerConditionsTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  title: String
  steps: JSON (optional, has backend default)
  triggerConditions: String (optional, has backend default)
  conversationId: UUID (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingTextBm25Score: Float
  titleTrgmSimilarity: Float
  triggerConditionsTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, steps, triggerConditions, conversationId, tags, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, triggerConditionsTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, title, steps, triggerConditions, conversationId, tags, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, triggerConditionsTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, title, steps, triggerConditions, conversationId, tags, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, triggerConditionsTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, title, steps, triggerConditions, conversationId, tags, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, triggerConditionsTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: template

CRUD operations for Template records.

```
SUBCOMMANDS:
  agentic-db template list                               List all records
  agentic-db template get --id <value>              Get one record
  agentic-db template create --entityId <value> --name <value> --content <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --typeTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--description <value>] [--type <value>] [--variables <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agentic-db template update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--type <value>] [--content <value>] [--variables <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--nameTrgmSimilarity <value>] [--descriptionTrgmSimilarity <value>] [--typeTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
  agentic-db template delete --id <value>           Delete one record

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
  embeddingTextBm25Score: Float
  nameTrgmSimilarity: Float
  descriptionTrgmSimilarity: Float
  typeTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

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
  embeddingTextBm25Score: Float
  nameTrgmSimilarity: Float
  descriptionTrgmSimilarity: Float
  typeTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, description, type, content, variables, isActive, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, typeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, name, description, type, content, variables, isActive, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, typeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, name, description, type, content, variables, isActive, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, typeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, name, description, type, content, variables, isActive, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, typeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: tool

CRUD operations for Tool records.

```
SUBCOMMANDS:
  agentic-db tool list                               List all records
  agentic-db tool get --id <value>              Get one record
  agentic-db tool create --entityId <value> --name <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --typeTrgmSimilarity <value> --endpointTrgmSimilarity <value> --authMethodTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--description <value>] [--type <value>] [--inputSchema <value>] [--outputSchema <value>] [--endpoint <value>] [--authMethod <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agentic-db tool update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--type <value>] [--inputSchema <value>] [--outputSchema <value>] [--endpoint <value>] [--authMethod <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--nameTrgmSimilarity <value>] [--descriptionTrgmSimilarity <value>] [--typeTrgmSimilarity <value>] [--endpointTrgmSimilarity <value>] [--authMethodTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
  agentic-db tool delete --id <value>           Delete one record

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
  embeddingTextBm25Score: Float
  nameTrgmSimilarity: Float
  descriptionTrgmSimilarity: Float
  typeTrgmSimilarity: Float
  endpointTrgmSimilarity: Float
  authMethodTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

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
  embeddingTextBm25Score: Float
  nameTrgmSimilarity: Float
  descriptionTrgmSimilarity: Float
  typeTrgmSimilarity: Float
  endpointTrgmSimilarity: Float
  authMethodTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, description, type, inputSchema, outputSchema, endpoint, authMethod, isActive, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, typeTrgmSimilarity, endpointTrgmSimilarity, authMethodTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, name, description, type, inputSchema, outputSchema, endpoint, authMethod, isActive, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, typeTrgmSimilarity, endpointTrgmSimilarity, authMethodTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, name, description, type, inputSchema, outputSchema, endpoint, authMethod, isActive, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, typeTrgmSimilarity, endpointTrgmSimilarity, authMethodTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, name, description, type, inputSchema, outputSchema, endpoint, authMethod, isActive, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, typeTrgmSimilarity, endpointTrgmSimilarity, authMethodTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: recipe

CRUD operations for Recipe records.

```
SUBCOMMANDS:
  agentic-db recipe list                               List all records
  agentic-db recipe get --id <value>              Get one record
  agentic-db recipe create --entityId <value> --name <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --cuisineTrgmSimilarity <value> --difficultyTrgmSimilarity <value> --sourceUrlTrgmSimilarity <value> --imageUrlTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--description <value>] [--cuisine <value>] [--prepTimeMinutes <value>] [--cookTimeMinutes <value>] [--servings <value>] [--difficulty <value>] [--ingredients <value>] [--instructions <value>] [--sourceUrl <value>] [--imageUrl <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agentic-db recipe update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--cuisine <value>] [--prepTimeMinutes <value>] [--cookTimeMinutes <value>] [--servings <value>] [--difficulty <value>] [--ingredients <value>] [--instructions <value>] [--sourceUrl <value>] [--imageUrl <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--nameTrgmSimilarity <value>] [--descriptionTrgmSimilarity <value>] [--cuisineTrgmSimilarity <value>] [--difficultyTrgmSimilarity <value>] [--sourceUrlTrgmSimilarity <value>] [--imageUrlTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
  agentic-db recipe delete --id <value>           Delete one record

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
  embeddingTextBm25Score: Float
  nameTrgmSimilarity: Float
  descriptionTrgmSimilarity: Float
  cuisineTrgmSimilarity: Float
  difficultyTrgmSimilarity: Float
  sourceUrlTrgmSimilarity: Float
  imageUrlTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

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
  embeddingTextBm25Score: Float
  nameTrgmSimilarity: Float
  descriptionTrgmSimilarity: Float
  cuisineTrgmSimilarity: Float
  difficultyTrgmSimilarity: Float
  sourceUrlTrgmSimilarity: Float
  imageUrlTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, description, cuisine, prepTimeMinutes, cookTimeMinutes, servings, difficulty, ingredients, instructions, sourceUrl, imageUrl, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, cuisineTrgmSimilarity, difficultyTrgmSimilarity, sourceUrlTrgmSimilarity, imageUrlTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, name, description, cuisine, prepTimeMinutes, cookTimeMinutes, servings, difficulty, ingredients, instructions, sourceUrl, imageUrl, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, cuisineTrgmSimilarity, difficultyTrgmSimilarity, sourceUrlTrgmSimilarity, imageUrlTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, name, description, cuisine, prepTimeMinutes, cookTimeMinutes, servings, difficulty, ingredients, instructions, sourceUrl, imageUrl, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, cuisineTrgmSimilarity, difficultyTrgmSimilarity, sourceUrlTrgmSimilarity, imageUrlTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, name, description, cuisine, prepTimeMinutes, cookTimeMinutes, servings, difficulty, ingredients, instructions, sourceUrl, imageUrl, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, cuisineTrgmSimilarity, difficultyTrgmSimilarity, sourceUrlTrgmSimilarity, imageUrlTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: trip

CRUD operations for Trip records.

```
SUBCOMMANDS:
  agentic-db trip list                               List all records
  agentic-db trip get --id <value>              Get one record
  agentic-db trip create --entityId <value> --name <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --destinationTrgmSimilarity <value> --statusTrgmSimilarity <value> --notesTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--destination <value>] [--startDate <value>] [--endDate <value>] [--status <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agentic-db trip update --id <value> [--entityId <value>] [--name <value>] [--destination <value>] [--startDate <value>] [--endDate <value>] [--status <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--nameTrgmSimilarity <value>] [--destinationTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--notesTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
  agentic-db trip delete --id <value>           Delete one record

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
  embeddingTextBm25Score: Float
  nameTrgmSimilarity: Float
  destinationTrgmSimilarity: Float
  statusTrgmSimilarity: Float
  notesTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

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
  embeddingTextBm25Score: Float
  nameTrgmSimilarity: Float
  destinationTrgmSimilarity: Float
  statusTrgmSimilarity: Float
  notesTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, destination, startDate, endDate, status, notes, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, destinationTrgmSimilarity, statusTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, name, destination, startDate, endDate, status, notes, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, destinationTrgmSimilarity, statusTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, name, destination, startDate, endDate, status, notes, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, destinationTrgmSimilarity, statusTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, name, destination, startDate, endDate, status, notes, tags, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, destinationTrgmSimilarity, statusTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: memory

CRUD operations for Memory records.

```
SUBCOMMANDS:
  agentic-db memory list                               List all records
  agentic-db memory get --id <value>              Get one record
  agentic-db memory create --entityId <value> --content <value> --embeddingTextBm25Score <value> --contentTrgmSimilarity <value> --memoryTypeTrgmSimilarity <value> --memoryCategoryTrgmSimilarity <value> --sourceTrgmSimilarity <value> --relatedEntityTypeTrgmSimilarity <value> --abstractTrgmSimilarity <value> --overviewTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--memoryType <value>] [--memoryCategory <value>] [--agentId <value>] [--importance <value>] [--verified <value>] [--source <value>] [--relatedEntityType <value>] [--relatedEntityId <value>] [--abstract <value>] [--overview <value>] [--activeCount <value>] [--lastAccessedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agentic-db memory update --id <value> [--entityId <value>] [--content <value>] [--memoryType <value>] [--memoryCategory <value>] [--agentId <value>] [--importance <value>] [--verified <value>] [--source <value>] [--relatedEntityType <value>] [--relatedEntityId <value>] [--abstract <value>] [--overview <value>] [--activeCount <value>] [--lastAccessedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--contentTrgmSimilarity <value>] [--memoryTypeTrgmSimilarity <value>] [--memoryCategoryTrgmSimilarity <value>] [--sourceTrgmSimilarity <value>] [--relatedEntityTypeTrgmSimilarity <value>] [--abstractTrgmSimilarity <value>] [--overviewTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
  agentic-db memory delete --id <value>           Delete one record

INPUT FIELDS:
  id: UUID (primary key)
  entityId: UUID
  createdAt: Datetime
  updatedAt: Datetime
  content: String
  memoryType: String
  memoryCategory: String
  agentId: UUID
  importance: Int
  verified: Boolean
  source: String
  relatedEntityType: String
  relatedEntityId: UUID
  abstract: String
  overview: String
  activeCount: Int
  lastAccessedAt: Datetime
  tags: String
  embeddingText: String
  embedding: Vector
  embeddingTextBm25Score: Float
  contentTrgmSimilarity: Float
  memoryTypeTrgmSimilarity: Float
  memoryCategoryTrgmSimilarity: Float
  sourceTrgmSimilarity: Float
  relatedEntityTypeTrgmSimilarity: Float
  abstractTrgmSimilarity: Float
  overviewTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  content: String
  memoryType: String (optional, has backend default)
  memoryCategory: String (optional, has backend default)
  agentId: UUID (optional, has backend default)
  importance: Int (optional, has backend default)
  verified: Boolean (optional, has backend default)
  source: String (optional, has backend default)
  relatedEntityType: String (optional, has backend default)
  relatedEntityId: UUID (optional, has backend default)
  abstract: String (optional, has backend default)
  overview: String (optional, has backend default)
  activeCount: Int (optional, has backend default)
  lastAccessedAt: Datetime (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  embeddingTextBm25Score: Float
  contentTrgmSimilarity: Float
  memoryTypeTrgmSimilarity: Float
  memoryCategoryTrgmSimilarity: Float
  sourceTrgmSimilarity: Float
  relatedEntityTypeTrgmSimilarity: Float
  abstractTrgmSimilarity: Float
  overviewTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, content, memoryType, memoryCategory, agentId, importance, verified, source, relatedEntityType, relatedEntityId, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, embeddingTextBm25Score, contentTrgmSimilarity, memoryTypeTrgmSimilarity, memoryCategoryTrgmSimilarity, sourceTrgmSimilarity, relatedEntityTypeTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, content, memoryType, memoryCategory, agentId, importance, verified, source, relatedEntityType, relatedEntityId, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, embeddingTextBm25Score, contentTrgmSimilarity, memoryTypeTrgmSimilarity, memoryCategoryTrgmSimilarity, sourceTrgmSimilarity, relatedEntityTypeTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, content, memoryType, memoryCategory, agentId, importance, verified, source, relatedEntityType, relatedEntityId, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, embeddingTextBm25Score, contentTrgmSimilarity, memoryTypeTrgmSimilarity, memoryCategoryTrgmSimilarity, sourceTrgmSimilarity, relatedEntityTypeTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, content, memoryType, memoryCategory, agentId, importance, verified, source, relatedEntityType, relatedEntityId, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, embeddingTextBm25Score, contentTrgmSimilarity, memoryTypeTrgmSimilarity, memoryCategoryTrgmSimilarity, sourceTrgmSimilarity, relatedEntityTypeTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: rule

CRUD operations for Rule records.

```
SUBCOMMANDS:
  agentic-db rule list                               List all records
  agentic-db rule get --id <value>              Get one record
  agentic-db rule create --entityId <value> --title <value> --embeddingTextBm25Score <value> --titleTrgmSimilarity <value> --contentTrgmSimilarity <value> --kindTrgmSimilarity <value> --severityTrgmSimilarity <value> --slugTrgmSimilarity <value> --verificationTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --triggerConceptVectorDistance <value> --searchScore <value> [--content <value>] [--kind <value>] [--severity <value>] [--isActive <value>] [--slug <value>] [--verification <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--triggerConcept <value>]
  agentic-db rule update --id <value> [--entityId <value>] [--title <value>] [--content <value>] [--kind <value>] [--severity <value>] [--isActive <value>] [--slug <value>] [--verification <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--triggerConcept <value>] [--embeddingTextBm25Score <value>] [--titleTrgmSimilarity <value>] [--contentTrgmSimilarity <value>] [--kindTrgmSimilarity <value>] [--severityTrgmSimilarity <value>] [--slugTrgmSimilarity <value>] [--verificationTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--triggerConceptVectorDistance <value>] [--searchScore <value>]
  agentic-db rule delete --id <value>           Delete one record

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
  embeddingTextBm25Score: Float
  titleTrgmSimilarity: Float
  contentTrgmSimilarity: Float
  kindTrgmSimilarity: Float
  severityTrgmSimilarity: Float
  slugTrgmSimilarity: Float
  verificationTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  triggerConceptVectorDistance: Float
  searchScore: Float

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
  embeddingTextBm25Score: Float
  titleTrgmSimilarity: Float
  contentTrgmSimilarity: Float
  kindTrgmSimilarity: Float
  severityTrgmSimilarity: Float
  slugTrgmSimilarity: Float
  verificationTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  triggerConceptVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, content, kind, severity, isActive, slug, verification, tags, embeddingText, embedding, triggerConcept, embeddingTextBm25Score, titleTrgmSimilarity, contentTrgmSimilarity, kindTrgmSimilarity, severityTrgmSimilarity, slugTrgmSimilarity, verificationTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, triggerConceptVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, title, content, kind, severity, isActive, slug, verification, tags, embeddingText, embedding, triggerConcept, embeddingTextBm25Score, titleTrgmSimilarity, contentTrgmSimilarity, kindTrgmSimilarity, severityTrgmSimilarity, slugTrgmSimilarity, verificationTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, triggerConceptVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, title, content, kind, severity, isActive, slug, verification, tags, embeddingText, embedding, triggerConcept, embeddingTextBm25Score, titleTrgmSimilarity, contentTrgmSimilarity, kindTrgmSimilarity, severityTrgmSimilarity, slugTrgmSimilarity, verificationTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, triggerConceptVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, title, content, kind, severity, isActive, slug, verification, tags, embeddingText, embedding, triggerConcept, embeddingTextBm25Score, titleTrgmSimilarity, contentTrgmSimilarity, kindTrgmSimilarity, severityTrgmSimilarity, slugTrgmSimilarity, verificationTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, triggerConceptVectorDistance, searchScore }
  delete: { id }
```

### TOOL: task

CRUD operations for Task records.

```
SUBCOMMANDS:
  agentic-db task list                               List all records
  agentic-db task get --id <value>              Get one record
  agentic-db task create --entityId <value> --title <value> --embeddingTextBm25Score <value> --titleTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --statusTrgmSimilarity <value> --taskTypeTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--description <value>] [--status <value>] [--priority <value>] [--projectId <value>] [--taskType <value>] [--assignedAgentId <value>] [--parentTaskId <value>] [--dueDate <value>] [--completedAt <value>] [--conversationId <value>] [--dependencies <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
  agentic-db task update --id <value> [--entityId <value>] [--title <value>] [--description <value>] [--status <value>] [--priority <value>] [--projectId <value>] [--taskType <value>] [--assignedAgentId <value>] [--parentTaskId <value>] [--dueDate <value>] [--completedAt <value>] [--conversationId <value>] [--dependencies <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--titleTrgmSimilarity <value>] [--descriptionTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--taskTypeTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
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
  embeddingTextBm25Score: Float
  titleTrgmSimilarity: Float
  descriptionTrgmSimilarity: Float
  statusTrgmSimilarity: Float
  taskTypeTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

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
  embeddingTextBm25Score: Float
  titleTrgmSimilarity: Float
  descriptionTrgmSimilarity: Float
  statusTrgmSimilarity: Float
  taskTypeTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, description, status, priority, projectId, taskType, assignedAgentId, parentTaskId, dueDate, completedAt, conversationId, dependencies, tags, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, descriptionTrgmSimilarity, statusTrgmSimilarity, taskTypeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, title, description, status, priority, projectId, taskType, assignedAgentId, parentTaskId, dueDate, completedAt, conversationId, dependencies, tags, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, descriptionTrgmSimilarity, statusTrgmSimilarity, taskTypeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, title, description, status, priority, projectId, taskType, assignedAgentId, parentTaskId, dueDate, completedAt, conversationId, dependencies, tags, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, descriptionTrgmSimilarity, statusTrgmSimilarity, taskTypeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, title, description, status, priority, projectId, taskType, assignedAgentId, parentTaskId, dueDate, completedAt, conversationId, dependencies, tags, embeddingText, embedding, embeddingTextBm25Score, titleTrgmSimilarity, descriptionTrgmSimilarity, statusTrgmSimilarity, taskTypeTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: agent

CRUD operations for Agent records.

```
SUBCOMMANDS:
  agentic-db agent list                               List all records
  agentic-db agent get --id <value>              Get one record
  agentic-db agent create --entityId <value> --name <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --roleTrgmSimilarity <value> --statusTrgmSimilarity <value> --personaTrgmSimilarity <value> --backstoryTrgmSimilarity <value> --communicationStyleTrgmSimilarity <value> --systemPromptTrgmSimilarity <value> --preferredModelTrgmSimilarity <value> --moodTrgmSimilarity <value> --focusTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--role <value>] [--capabilities <value>] [--config <value>] [--status <value>] [--persona <value>] [--backstory <value>] [--communicationStyle <value>] [--systemPrompt <value>] [--preferredModel <value>] [--fallbackModels <value>] [--temperature <value>] [--mood <value>] [--focus <value>] [--lastActiveAt <value>] [--embeddingText <value>] [--embedding <value>]
  agentic-db agent update --id <value> [--entityId <value>] [--name <value>] [--role <value>] [--capabilities <value>] [--config <value>] [--status <value>] [--persona <value>] [--backstory <value>] [--communicationStyle <value>] [--systemPrompt <value>] [--preferredModel <value>] [--fallbackModels <value>] [--temperature <value>] [--mood <value>] [--focus <value>] [--lastActiveAt <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--nameTrgmSimilarity <value>] [--roleTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--personaTrgmSimilarity <value>] [--backstoryTrgmSimilarity <value>] [--communicationStyleTrgmSimilarity <value>] [--systemPromptTrgmSimilarity <value>] [--preferredModelTrgmSimilarity <value>] [--moodTrgmSimilarity <value>] [--focusTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
  agentic-db agent delete --id <value>           Delete one record

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
  embeddingTextBm25Score: Float
  nameTrgmSimilarity: Float
  roleTrgmSimilarity: Float
  statusTrgmSimilarity: Float
  personaTrgmSimilarity: Float
  backstoryTrgmSimilarity: Float
  communicationStyleTrgmSimilarity: Float
  systemPromptTrgmSimilarity: Float
  preferredModelTrgmSimilarity: Float
  moodTrgmSimilarity: Float
  focusTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

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
  embeddingTextBm25Score: Float
  nameTrgmSimilarity: Float
  roleTrgmSimilarity: Float
  statusTrgmSimilarity: Float
  personaTrgmSimilarity: Float
  backstoryTrgmSimilarity: Float
  communicationStyleTrgmSimilarity: Float
  systemPromptTrgmSimilarity: Float
  preferredModelTrgmSimilarity: Float
  moodTrgmSimilarity: Float
  focusTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, role, capabilities, config, status, persona, backstory, communicationStyle, systemPrompt, preferredModel, fallbackModels, temperature, mood, focus, lastActiveAt, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, roleTrgmSimilarity, statusTrgmSimilarity, personaTrgmSimilarity, backstoryTrgmSimilarity, communicationStyleTrgmSimilarity, systemPromptTrgmSimilarity, preferredModelTrgmSimilarity, moodTrgmSimilarity, focusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, name, role, capabilities, config, status, persona, backstory, communicationStyle, systemPrompt, preferredModel, fallbackModels, temperature, mood, focus, lastActiveAt, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, roleTrgmSimilarity, statusTrgmSimilarity, personaTrgmSimilarity, backstoryTrgmSimilarity, communicationStyleTrgmSimilarity, systemPromptTrgmSimilarity, preferredModelTrgmSimilarity, moodTrgmSimilarity, focusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, name, role, capabilities, config, status, persona, backstory, communicationStyle, systemPrompt, preferredModel, fallbackModels, temperature, mood, focus, lastActiveAt, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, roleTrgmSimilarity, statusTrgmSimilarity, personaTrgmSimilarity, backstoryTrgmSimilarity, communicationStyleTrgmSimilarity, systemPromptTrgmSimilarity, preferredModelTrgmSimilarity, moodTrgmSimilarity, focusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, name, role, capabilities, config, status, persona, backstory, communicationStyle, systemPrompt, preferredModel, fallbackModels, temperature, mood, focus, lastActiveAt, embeddingText, embedding, embeddingTextBm25Score, nameTrgmSimilarity, roleTrgmSimilarity, statusTrgmSimilarity, personaTrgmSimilarity, backstoryTrgmSimilarity, communicationStyleTrgmSimilarity, systemPromptTrgmSimilarity, preferredModelTrgmSimilarity, moodTrgmSimilarity, focusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: skill

CRUD operations for Skill records.

```
SUBCOMMANDS:
  agentic-db skill list                               List all records
  agentic-db skill get --id <value>              Get one record
  agentic-db skill create --entityId <value> --name <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --slugTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --contentTrgmSimilarity <value> --procedureTrgmSimilarity <value> --filePathTrgmSimilarity <value> --contentHashTrgmSimilarity <value> --categoryTrgmSimilarity <value> --abstractTrgmSimilarity <value> --overviewTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --intentTriggerVectorDistance <value> --searchScore <value> [--slug <value>] [--description <value>] [--content <value>] [--procedure <value>] [--interface <value>] [--requirements <value>] [--prerequisites <value>] [--alwaysLoad <value>] [--filePath <value>] [--contentHash <value>] [--category <value>] [--isActive <value>] [--abstract <value>] [--overview <value>] [--activeCount <value>] [--lastAccessedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--intentTrigger <value>]
  agentic-db skill update --id <value> [--entityId <value>] [--name <value>] [--slug <value>] [--description <value>] [--content <value>] [--procedure <value>] [--interface <value>] [--requirements <value>] [--prerequisites <value>] [--alwaysLoad <value>] [--filePath <value>] [--contentHash <value>] [--category <value>] [--isActive <value>] [--abstract <value>] [--overview <value>] [--activeCount <value>] [--lastAccessedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--intentTrigger <value>] [--embeddingTextBm25Score <value>] [--nameTrgmSimilarity <value>] [--slugTrgmSimilarity <value>] [--descriptionTrgmSimilarity <value>] [--contentTrgmSimilarity <value>] [--procedureTrgmSimilarity <value>] [--filePathTrgmSimilarity <value>] [--contentHashTrgmSimilarity <value>] [--categoryTrgmSimilarity <value>] [--abstractTrgmSimilarity <value>] [--overviewTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--intentTriggerVectorDistance <value>] [--searchScore <value>]
  agentic-db skill delete --id <value>           Delete one record

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
  prerequisites: JSON
  alwaysLoad: Boolean
  filePath: String
  contentHash: String
  category: String
  isActive: Boolean
  abstract: String
  overview: String
  activeCount: Int
  lastAccessedAt: Datetime
  tags: String
  embeddingText: String
  embedding: Vector
  intentTrigger: Vector
  embeddingTextBm25Score: Float
  nameTrgmSimilarity: Float
  slugTrgmSimilarity: Float
  descriptionTrgmSimilarity: Float
  contentTrgmSimilarity: Float
  procedureTrgmSimilarity: Float
  filePathTrgmSimilarity: Float
  contentHashTrgmSimilarity: Float
  categoryTrgmSimilarity: Float
  abstractTrgmSimilarity: Float
  overviewTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  intentTriggerVectorDistance: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  name: String
  slug: String (optional, has backend default)
  description: String (optional, has backend default)
  content: String (optional, has backend default)
  procedure: String (optional, has backend default)
  interface: JSON (optional, has backend default)
  requirements: JSON (optional, has backend default)
  prerequisites: JSON (optional, has backend default)
  alwaysLoad: Boolean (optional, has backend default)
  filePath: String (optional, has backend default)
  contentHash: String (optional, has backend default)
  category: String (optional, has backend default)
  isActive: Boolean (optional, has backend default)
  abstract: String (optional, has backend default)
  overview: String (optional, has backend default)
  activeCount: Int (optional, has backend default)
  lastAccessedAt: Datetime (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  intentTrigger: Vector (optional, has backend default)
  embeddingTextBm25Score: Float
  nameTrgmSimilarity: Float
  slugTrgmSimilarity: Float
  descriptionTrgmSimilarity: Float
  contentTrgmSimilarity: Float
  procedureTrgmSimilarity: Float
  filePathTrgmSimilarity: Float
  contentHashTrgmSimilarity: Float
  categoryTrgmSimilarity: Float
  abstractTrgmSimilarity: Float
  overviewTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  intentTriggerVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, slug, description, content, procedure, interface, requirements, prerequisites, alwaysLoad, filePath, contentHash, category, isActive, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, intentTrigger, embeddingTextBm25Score, nameTrgmSimilarity, slugTrgmSimilarity, descriptionTrgmSimilarity, contentTrgmSimilarity, procedureTrgmSimilarity, filePathTrgmSimilarity, contentHashTrgmSimilarity, categoryTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, intentTriggerVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, name, slug, description, content, procedure, interface, requirements, prerequisites, alwaysLoad, filePath, contentHash, category, isActive, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, intentTrigger, embeddingTextBm25Score, nameTrgmSimilarity, slugTrgmSimilarity, descriptionTrgmSimilarity, contentTrgmSimilarity, procedureTrgmSimilarity, filePathTrgmSimilarity, contentHashTrgmSimilarity, categoryTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, intentTriggerVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, name, slug, description, content, procedure, interface, requirements, prerequisites, alwaysLoad, filePath, contentHash, category, isActive, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, intentTrigger, embeddingTextBm25Score, nameTrgmSimilarity, slugTrgmSimilarity, descriptionTrgmSimilarity, contentTrgmSimilarity, procedureTrgmSimilarity, filePathTrgmSimilarity, contentHashTrgmSimilarity, categoryTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, intentTriggerVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, name, slug, description, content, procedure, interface, requirements, prerequisites, alwaysLoad, filePath, contentHash, category, isActive, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, intentTrigger, embeddingTextBm25Score, nameTrgmSimilarity, slugTrgmSimilarity, descriptionTrgmSimilarity, contentTrgmSimilarity, procedureTrgmSimilarity, filePathTrgmSimilarity, contentHashTrgmSimilarity, categoryTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, intentTriggerVectorDistance, searchScore }
  delete: { id }
```

### TOOL: project

CRUD operations for Project records.

```
SUBCOMMANDS:
  agentic-db project list                               List all records
  agentic-db project get --id <value>              Get one record
  agentic-db project create --entityId <value> --name <value> --searchTsvRank <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --statusTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--description <value>] [--status <value>] [--startDate <value>] [--dueDate <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>]
  agentic-db project update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--status <value>] [--startDate <value>] [--dueDate <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--searchTsvRank <value>] [--embeddingTextBm25Score <value>] [--nameTrgmSimilarity <value>] [--descriptionTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
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
  tags: String
  embeddingText: String
  embedding: Vector
  searchTsv: FullText
  searchTsvRank: Float
  embeddingTextBm25Score: Float
  nameTrgmSimilarity: Float
  descriptionTrgmSimilarity: Float
  statusTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

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
  embeddingTextBm25Score: Float
  nameTrgmSimilarity: Float
  descriptionTrgmSimilarity: Float
  statusTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, description, status, startDate, dueDate, tags, embeddingText, embedding, searchTsv, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, name, description, status, startDate, dueDate, tags, embeddingText, embedding, searchTsv, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, name, description, status, startDate, dueDate, tags, embeddingText, embedding, searchTsv, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, name, description, status, startDate, dueDate, tags, embeddingText, embedding, searchTsv, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, descriptionTrgmSimilarity, statusTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: document

CRUD operations for Document records.

```
SUBCOMMANDS:
  agentic-db document list                               List all records
  agentic-db document get --id <value>              Get one record
  agentic-db document create --entityId <value> --title <value> --searchTsvRank <value> --contentBm25Score <value> --embeddingTextBm25Score <value> --titleTrgmSimilarity <value> --urlTrgmSimilarity <value> --contentTrgmSimilarity <value> --sourceTypeTrgmSimilarity <value> --abstractTrgmSimilarity <value> --overviewTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--url <value>] [--content <value>] [--sourceType <value>] [--isRead <value>] [--savedAt <value>] [--parentDocumentId <value>] [--abstract <value>] [--overview <value>] [--activeCount <value>] [--lastAccessedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>]
  agentic-db document update --id <value> [--entityId <value>] [--title <value>] [--url <value>] [--content <value>] [--sourceType <value>] [--isRead <value>] [--savedAt <value>] [--parentDocumentId <value>] [--abstract <value>] [--overview <value>] [--activeCount <value>] [--lastAccessedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--searchTsvRank <value>] [--contentBm25Score <value>] [--embeddingTextBm25Score <value>] [--titleTrgmSimilarity <value>] [--urlTrgmSimilarity <value>] [--contentTrgmSimilarity <value>] [--sourceTypeTrgmSimilarity <value>] [--abstractTrgmSimilarity <value>] [--overviewTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
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
  isRead: Boolean
  savedAt: Datetime
  parentDocumentId: UUID
  abstract: String
  overview: String
  activeCount: Int
  lastAccessedAt: Datetime
  tags: String
  embeddingText: String
  embedding: Vector
  searchTsv: FullText
  searchTsvRank: Float
  contentBm25Score: Float
  embeddingTextBm25Score: Float
  titleTrgmSimilarity: Float
  urlTrgmSimilarity: Float
  contentTrgmSimilarity: Float
  sourceTypeTrgmSimilarity: Float
  abstractTrgmSimilarity: Float
  overviewTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

EDITABLE FIELDS (for create/update):
  entityId: UUID
  title: String
  url: String (optional, has backend default)
  content: String (optional, has backend default)
  sourceType: String (optional, has backend default)
  isRead: Boolean (optional, has backend default)
  savedAt: Datetime (optional, has backend default)
  parentDocumentId: UUID (optional, has backend default)
  abstract: String (optional, has backend default)
  overview: String (optional, has backend default)
  activeCount: Int (optional, has backend default)
  lastAccessedAt: Datetime (optional, has backend default)
  tags: String (optional, has backend default)
  embeddingText: String (optional, has backend default)
  embedding: Vector (optional, has backend default)
  searchTsv: FullText (optional, has backend default)
  searchTsvRank: Float
  contentBm25Score: Float
  embeddingTextBm25Score: Float
  titleTrgmSimilarity: Float
  urlTrgmSimilarity: Float
  contentTrgmSimilarity: Float
  sourceTypeTrgmSimilarity: Float
  abstractTrgmSimilarity: Float
  overviewTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, title, url, content, sourceType, isRead, savedAt, parentDocumentId, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, searchTsv, searchTsvRank, contentBm25Score, embeddingTextBm25Score, titleTrgmSimilarity, urlTrgmSimilarity, contentTrgmSimilarity, sourceTypeTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, title, url, content, sourceType, isRead, savedAt, parentDocumentId, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, searchTsv, searchTsvRank, contentBm25Score, embeddingTextBm25Score, titleTrgmSimilarity, urlTrgmSimilarity, contentTrgmSimilarity, sourceTypeTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, title, url, content, sourceType, isRead, savedAt, parentDocumentId, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, searchTsv, searchTsvRank, contentBm25Score, embeddingTextBm25Score, titleTrgmSimilarity, urlTrgmSimilarity, contentTrgmSimilarity, sourceTypeTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, title, url, content, sourceType, isRead, savedAt, parentDocumentId, abstract, overview, activeCount, lastAccessedAt, tags, embeddingText, embedding, searchTsv, searchTsvRank, contentBm25Score, embeddingTextBm25Score, titleTrgmSimilarity, urlTrgmSimilarity, contentTrgmSimilarity, sourceTypeTrgmSimilarity, abstractTrgmSimilarity, overviewTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: company

CRUD operations for Company records.

```
SUBCOMMANDS:
  agentic-db company list                               List all records
  agentic-db company get --id <value>              Get one record
  agentic-db company create --entityId <value> --name <value> --searchTsvRank <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --domainTrgmSimilarity <value> --industryTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--domain <value>] [--industry <value>] [--description <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>]
  agentic-db company update --id <value> [--entityId <value>] [--name <value>] [--domain <value>] [--industry <value>] [--description <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>] [--searchTsvRank <value>] [--embeddingTextBm25Score <value>] [--nameTrgmSimilarity <value>] [--domainTrgmSimilarity <value>] [--industryTrgmSimilarity <value>] [--descriptionTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
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
  embeddingText: String
  embedding: Vector
  searchTsv: FullText
  mainImageId: UUID
  searchTsvRank: Float
  embeddingTextBm25Score: Float
  nameTrgmSimilarity: Float
  domainTrgmSimilarity: Float
  industryTrgmSimilarity: Float
  descriptionTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

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
  embeddingTextBm25Score: Float
  nameTrgmSimilarity: Float
  domainTrgmSimilarity: Float
  industryTrgmSimilarity: Float
  descriptionTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, domain, industry, description, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, domainTrgmSimilarity, industryTrgmSimilarity, descriptionTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, name, domain, industry, description, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, domainTrgmSimilarity, industryTrgmSimilarity, descriptionTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, name, domain, industry, description, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, domainTrgmSimilarity, industryTrgmSimilarity, descriptionTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, name, domain, industry, description, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, domainTrgmSimilarity, industryTrgmSimilarity, descriptionTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: event

CRUD operations for Event records.

```
SUBCOMMANDS:
  agentic-db event list                               List all records
  agentic-db event get --id <value>              Get one record
  agentic-db event create --entityId <value> --name <value> --searchTsvRank <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --eventTypeTrgmSimilarity <value> --locationTrgmSimilarity <value> --cityTrgmSimilarity <value> --notesTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--eventType <value>] [--location <value>] [--city <value>] [--startedAt <value>] [--endedAt <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>]
  agentic-db event update --id <value> [--entityId <value>] [--name <value>] [--eventType <value>] [--location <value>] [--city <value>] [--startedAt <value>] [--endedAt <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>] [--searchTsvRank <value>] [--embeddingTextBm25Score <value>] [--nameTrgmSimilarity <value>] [--eventTypeTrgmSimilarity <value>] [--locationTrgmSimilarity <value>] [--cityTrgmSimilarity <value>] [--notesTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
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
  embeddingText: String
  embedding: Vector
  searchTsv: FullText
  mainImageId: UUID
  searchTsvRank: Float
  embeddingTextBm25Score: Float
  nameTrgmSimilarity: Float
  eventTypeTrgmSimilarity: Float
  locationTrgmSimilarity: Float
  cityTrgmSimilarity: Float
  notesTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

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
  embeddingTextBm25Score: Float
  nameTrgmSimilarity: Float
  eventTypeTrgmSimilarity: Float
  locationTrgmSimilarity: Float
  cityTrgmSimilarity: Float
  notesTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, eventTypeTrgmSimilarity, locationTrgmSimilarity, cityTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, eventTypeTrgmSimilarity, locationTrgmSimilarity, cityTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, eventTypeTrgmSimilarity, locationTrgmSimilarity, cityTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, name, eventType, location, city, startedAt, endedAt, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, eventTypeTrgmSimilarity, locationTrgmSimilarity, cityTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: contact

CRUD operations for Contact records.

```
SUBCOMMANDS:
  agentic-db contact list                               List all records
  agentic-db contact get --id <value>              Get one record
  agentic-db contact create --entityId <value> --firstName <value> --searchTsvRank <value> --embeddingTextBm25Score <value> --firstNameTrgmSimilarity <value> --lastNameTrgmSimilarity <value> --emailTrgmSimilarity <value> --phoneTrgmSimilarity <value> --headlineTrgmSimilarity <value> --bioTrgmSimilarity <value> --locationTrgmSimilarity <value> --relationshipTypeTrgmSimilarity <value> --howWeMetTrgmSimilarity <value> --twitterHandleTrgmSimilarity <value> --linkedinUrlTrgmSimilarity <value> --githubUsernameTrgmSimilarity <value> --instagramHandleTrgmSimilarity <value> --websiteTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--lastName <value>] [--email <value>] [--phone <value>] [--headline <value>] [--bio <value>] [--location <value>] [--birthday <value>] [--relationshipType <value>] [--howWeMet <value>] [--twitterHandle <value>] [--linkedinUrl <value>] [--githubUsername <value>] [--instagramHandle <value>] [--website <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>]
  agentic-db contact update --id <value> [--entityId <value>] [--firstName <value>] [--lastName <value>] [--email <value>] [--phone <value>] [--headline <value>] [--bio <value>] [--location <value>] [--birthday <value>] [--relationshipType <value>] [--howWeMet <value>] [--twitterHandle <value>] [--linkedinUrl <value>] [--githubUsername <value>] [--instagramHandle <value>] [--website <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>] [--searchTsvRank <value>] [--embeddingTextBm25Score <value>] [--firstNameTrgmSimilarity <value>] [--lastNameTrgmSimilarity <value>] [--emailTrgmSimilarity <value>] [--phoneTrgmSimilarity <value>] [--headlineTrgmSimilarity <value>] [--bioTrgmSimilarity <value>] [--locationTrgmSimilarity <value>] [--relationshipTypeTrgmSimilarity <value>] [--howWeMetTrgmSimilarity <value>] [--twitterHandleTrgmSimilarity <value>] [--linkedinUrlTrgmSimilarity <value>] [--githubUsernameTrgmSimilarity <value>] [--instagramHandleTrgmSimilarity <value>] [--websiteTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
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
  embeddingTextBm25Score: Float
  firstNameTrgmSimilarity: Float
  lastNameTrgmSimilarity: Float
  emailTrgmSimilarity: Float
  phoneTrgmSimilarity: Float
  headlineTrgmSimilarity: Float
  bioTrgmSimilarity: Float
  locationTrgmSimilarity: Float
  relationshipTypeTrgmSimilarity: Float
  howWeMetTrgmSimilarity: Float
  twitterHandleTrgmSimilarity: Float
  linkedinUrlTrgmSimilarity: Float
  githubUsernameTrgmSimilarity: Float
  instagramHandleTrgmSimilarity: Float
  websiteTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

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
  embeddingTextBm25Score: Float
  firstNameTrgmSimilarity: Float
  lastNameTrgmSimilarity: Float
  emailTrgmSimilarity: Float
  phoneTrgmSimilarity: Float
  headlineTrgmSimilarity: Float
  bioTrgmSimilarity: Float
  locationTrgmSimilarity: Float
  relationshipTypeTrgmSimilarity: Float
  howWeMetTrgmSimilarity: Float
  twitterHandleTrgmSimilarity: Float
  linkedinUrlTrgmSimilarity: Float
  githubUsernameTrgmSimilarity: Float
  instagramHandleTrgmSimilarity: Float
  websiteTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, birthday, relationshipType, howWeMet, twitterHandle, linkedinUrl, githubUsername, instagramHandle, website, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, firstNameTrgmSimilarity, lastNameTrgmSimilarity, emailTrgmSimilarity, phoneTrgmSimilarity, headlineTrgmSimilarity, bioTrgmSimilarity, locationTrgmSimilarity, relationshipTypeTrgmSimilarity, howWeMetTrgmSimilarity, twitterHandleTrgmSimilarity, linkedinUrlTrgmSimilarity, githubUsernameTrgmSimilarity, instagramHandleTrgmSimilarity, websiteTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, birthday, relationshipType, howWeMet, twitterHandle, linkedinUrl, githubUsername, instagramHandle, website, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, firstNameTrgmSimilarity, lastNameTrgmSimilarity, emailTrgmSimilarity, phoneTrgmSimilarity, headlineTrgmSimilarity, bioTrgmSimilarity, locationTrgmSimilarity, relationshipTypeTrgmSimilarity, howWeMetTrgmSimilarity, twitterHandleTrgmSimilarity, linkedinUrlTrgmSimilarity, githubUsernameTrgmSimilarity, instagramHandleTrgmSimilarity, websiteTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, birthday, relationshipType, howWeMet, twitterHandle, linkedinUrl, githubUsername, instagramHandle, website, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, firstNameTrgmSimilarity, lastNameTrgmSimilarity, emailTrgmSimilarity, phoneTrgmSimilarity, headlineTrgmSimilarity, bioTrgmSimilarity, locationTrgmSimilarity, relationshipTypeTrgmSimilarity, howWeMetTrgmSimilarity, twitterHandleTrgmSimilarity, linkedinUrlTrgmSimilarity, githubUsernameTrgmSimilarity, instagramHandleTrgmSimilarity, websiteTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, firstName, lastName, email, phone, headline, bio, location, birthday, relationshipType, howWeMet, twitterHandle, linkedinUrl, githubUsername, instagramHandle, website, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, firstNameTrgmSimilarity, lastNameTrgmSimilarity, emailTrgmSimilarity, phoneTrgmSimilarity, headlineTrgmSimilarity, bioTrgmSimilarity, locationTrgmSimilarity, relationshipTypeTrgmSimilarity, howWeMetTrgmSimilarity, twitterHandleTrgmSimilarity, linkedinUrlTrgmSimilarity, githubUsernameTrgmSimilarity, instagramHandleTrgmSimilarity, websiteTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

### TOOL: venue

CRUD operations for Venue records.

```
SUBCOMMANDS:
  agentic-db venue list                               List all records
  agentic-db venue get --id <value>              Get one record
  agentic-db venue create --entityId <value> --name <value> --searchTsvRank <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --addressTrgmSimilarity <value> --neighborhoodTrgmSimilarity <value> --cityTrgmSimilarity <value> --categoryTrgmSimilarity <value> --statusTrgmSimilarity <value> --googlePlaceIdTrgmSimilarity <value> --priceLevelTrgmSimilarity <value> --notesTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--address <value>] [--neighborhood <value>] [--city <value>] [--category <value>] [--status <value>] [--googlePlaceId <value>] [--rating <value>] [--priceLevel <value>] [--isFavorite <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>]
  agentic-db venue update --id <value> [--entityId <value>] [--name <value>] [--address <value>] [--neighborhood <value>] [--city <value>] [--category <value>] [--status <value>] [--googlePlaceId <value>] [--rating <value>] [--priceLevel <value>] [--isFavorite <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>] [--searchTsvRank <value>] [--embeddingTextBm25Score <value>] [--nameTrgmSimilarity <value>] [--addressTrgmSimilarity <value>] [--neighborhoodTrgmSimilarity <value>] [--cityTrgmSimilarity <value>] [--categoryTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--googlePlaceIdTrgmSimilarity <value>] [--priceLevelTrgmSimilarity <value>] [--notesTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
  agentic-db venue delete --id <value>           Delete one record

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
  embeddingTextBm25Score: Float
  nameTrgmSimilarity: Float
  addressTrgmSimilarity: Float
  neighborhoodTrgmSimilarity: Float
  cityTrgmSimilarity: Float
  categoryTrgmSimilarity: Float
  statusTrgmSimilarity: Float
  googlePlaceIdTrgmSimilarity: Float
  priceLevelTrgmSimilarity: Float
  notesTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

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
  embeddingTextBm25Score: Float
  nameTrgmSimilarity: Float
  addressTrgmSimilarity: Float
  neighborhoodTrgmSimilarity: Float
  cityTrgmSimilarity: Float
  categoryTrgmSimilarity: Float
  statusTrgmSimilarity: Float
  googlePlaceIdTrgmSimilarity: Float
  priceLevelTrgmSimilarity: Float
  notesTrgmSimilarity: Float
  embeddingTextTrgmSimilarity: Float
  embeddingVectorDistance: Float
  searchScore: Float

OUTPUT: JSON
  list:   [{ id, entityId, createdAt, updatedAt, name, address, neighborhood, city, category, status, googlePlaceId, rating, priceLevel, isFavorite, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, addressTrgmSimilarity, neighborhoodTrgmSimilarity, cityTrgmSimilarity, categoryTrgmSimilarity, statusTrgmSimilarity, googlePlaceIdTrgmSimilarity, priceLevelTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }]
  get:    { id, entityId, createdAt, updatedAt, name, address, neighborhood, city, category, status, googlePlaceId, rating, priceLevel, isFavorite, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, addressTrgmSimilarity, neighborhoodTrgmSimilarity, cityTrgmSimilarity, categoryTrgmSimilarity, statusTrgmSimilarity, googlePlaceIdTrgmSimilarity, priceLevelTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  create: { id, entityId, createdAt, updatedAt, name, address, neighborhood, city, category, status, googlePlaceId, rating, priceLevel, isFavorite, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, addressTrgmSimilarity, neighborhoodTrgmSimilarity, cityTrgmSimilarity, categoryTrgmSimilarity, statusTrgmSimilarity, googlePlaceIdTrgmSimilarity, priceLevelTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  update: { id, entityId, createdAt, updatedAt, name, address, neighborhood, city, category, status, googlePlaceId, rating, priceLevel, isFavorite, notes, tags, embeddingText, embedding, searchTsv, mainImageId, searchTsvRank, embeddingTextBm25Score, nameTrgmSimilarity, addressTrgmSimilarity, neighborhoodTrgmSimilarity, cityTrgmSimilarity, categoryTrgmSimilarity, statusTrgmSimilarity, googlePlaceIdTrgmSimilarity, priceLevelTrgmSimilarity, notesTrgmSimilarity, embeddingTextTrgmSimilarity, embeddingVectorDistance, searchScore }
  delete: { id }
```

## WORKFLOWS

### Initial setup

```bash
agentic-db context create dev --endpoint http://localhost:5000/graphql
agentic-db context use dev
agentic-db auth set-token eyJhbGciOiJIUzI1NiIs...
```

### CRUD workflow (agent-prompt)

```bash
# List all
agentic-db agent-prompt list

# Create
agentic-db agent-prompt create --agentId "value" --promptId "value" --entityId "value"

# Get by id
agentic-db agent-prompt get --id <value>

# Update
agentic-db agent-prompt update --id <value> --agentId "new-value"

# Delete
agentic-db agent-prompt delete --id <value>
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
