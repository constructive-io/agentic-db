# agent-db CLI

<p align="center" width="100%">
  <img height="120" src="https://raw.githubusercontent.com/constructive-io/constructive/refs/heads/main/assets/outline-logo.svg" />
</p>

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

## Setup

```bash
# Create a context pointing at your GraphQL endpoint
agent-db context create production --endpoint https://api.example.com/graphql

# Set the active context
agent-db context use production

# Authenticate
agent-db auth set-token <your-token>
```

## Commands

| Command | Description |
|---------|-------------|
| `context` | Manage API contexts (endpoints) |
| `auth` | Manage authentication tokens |
| `config` | Manage config key-value store (per-context) |
| `agent-prompt` | agentPrompt CRUD operations |
| `process` | process CRUD operations |
| `scheduled-job` | scheduledJob CRUD operations |
| `agent-tool` | agentTool CRUD operations |
| `agent-skill` | agentSkill CRUD operations |
| `agent-rule` | agentRule CRUD operations |
| `calendar-event-contact` | calendarEventContact CRUD operations |
| `calendar-event` | calendarEvent CRUD operations |
| `interaction` | interaction CRUD operations |
| `company-event` | companyEvent CRUD operations |
| `company-image` | companyImage CRUD operations |
| `contact-company` | contactCompany CRUD operations |
| `contact-event` | contactEvent CRUD operations |
| `contact-image` | contactImage CRUD operations |
| `deal-contact` | dealContact CRUD operations |
| `event-image` | eventImage CRUD operations |
| `event-venue` | eventVenue CRUD operations |
| `expense-contact` | expenseContact CRUD operations |
| `goal-habit` | goalHabit CRUD operations |
| `habit-log` | habitLog CRUD operations |
| `goal-project` | goalProject CRUD operations |
| `milestone` | milestone CRUD operations |
| `project-contact` | projectContact CRUD operations |
| `task-contact` | taskContact CRUD operations |
| `venue-image` | venueImage CRUD operations |
| `file` | file CRUD operations |
| `chunk` | chunk CRUD operations |
| `calendar-account` | calendarAccount CRUD operations |
| `tag` | tag CRUD operations |
| `feedback` | feedback CRUD operations |
| `attachment` | attachment CRUD operations |
| `email-account` | emailAccount CRUD operations |
| `message` | message CRUD operations |
| `activity-log` | activityLog CRUD operations |
| `context-relation` | contextRelation CRUD operations |
| `user-setting` | userSetting CRUD operations |
| `execution-log` | executionLog CRUD operations |
| `session-archive` | sessionArchive CRUD operations |
| `webhook` | webhook CRUD operations |
| `notification` | notification CRUD operations |
| `workflow-run` | workflowRun CRUD operations |
| `workflow-step` | workflowStep CRUD operations |
| `integration` | integration CRUD operations |
| `skill-execution` | skillExecution CRUD operations |
| `chat` | chat CRUD operations |
| `chat-message` | chatMessage CRUD operations |
| `thread` | thread CRUD operations |
| `reminder` | reminder CRUD operations |
| `image` | image CRUD operations |
| `list-item` | listItem CRUD operations |
| `company-link` | companyLink CRUD operations |
| `contact-link` | contactLink CRUD operations |
| `event-link` | eventLink CRUD operations |
| `venue-link` | venueLink CRUD operations |
| `agent-spawn` | agentSpawn CRUD operations |
| `habit` | habit CRUD operations |
| `workflow` | workflow CRUD operations |
| `expense` | expense CRUD operations |
| `billing-subscription` | billingSubscription CRUD operations |
| `idea` | idea CRUD operations |
| `list` | list CRUD operations |
| `repository` | repository CRUD operations |
| `deal` | deal CRUD operations |
| `goal` | goal CRUD operations |
| `note` | note CRUD operations |
| `prompt` | prompt CRUD operations |
| `blueprint` | blueprint CRUD operations |
| `template` | template CRUD operations |
| `tool` | tool CRUD operations |
| `recipe` | recipe CRUD operations |
| `trip` | trip CRUD operations |
| `memory` | memory CRUD operations |
| `rule` | rule CRUD operations |
| `task` | task CRUD operations |
| `agent` | agent CRUD operations |
| `session` | session CRUD operations |
| `skill` | skill CRUD operations |
| `project` | project CRUD operations |
| `document` | document CRUD operations |
| `company` | company CRUD operations |
| `event` | event CRUD operations |
| `contact` | contact CRUD operations |
| `venue` | venue CRUD operations |

## Infrastructure Commands

### `context`

Manage named API contexts (kubectl-style).

| Subcommand | Description |
|------------|-------------|
| `create <name> --endpoint <url>` | Create a new context |
| `list` | List all contexts |
| `use <name>` | Set the active context |
| `current` | Show current context |
| `delete <name>` | Delete a context |

Configuration is stored at `~/.agent-db/config/`.

### `auth`

Manage authentication tokens per context.

| Subcommand | Description |
|------------|-------------|
| `set-token <token>` | Store bearer token for current context |
| `status` | Show auth status across all contexts |
| `logout` | Remove credentials for current context |

### `config`

Manage per-context key-value configuration variables.

| Subcommand | Description |
|------------|-------------|
| `get <key>` | Get a config value |
| `set <key> <value>` | Set a config value |
| `list` | List all config values |
| `delete <key>` | Delete a config value |

Variables are scoped to the active context and stored at `~/.agent-db/config/`.

## Table Commands

### `agent-prompt`

CRUD operations for AgentPrompt records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all agentPrompt records |
| `get` | Get a agentPrompt by id |
| `create` | Create a new agentPrompt |
| `update` | Update an existing agentPrompt |
| `delete` | Delete a agentPrompt |

**Fields:**

| Field | Type |
|-------|------|
| `agentId` | UUID |
| `promptId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `agentId`, `promptId`, `entityId`

### `process`

CRUD operations for Process records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all process records |
| `get` | Get a process by id |
| `create` | Create a new process |
| `update` | Update an existing process |
| `delete` | Delete a process |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `pid` | Int |
| `agentId` | UUID |
| `command` | String |
| `startedAt` | Datetime |
| `endedAt` | Datetime |
| `status` | String |
| `exitCode` | Int |
| `logsPath` | String |
| `commandTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `logsPathTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `commandTrgmSimilarity`, `statusTrgmSimilarity`, `logsPathTrgmSimilarity`, `searchScore`
**Optional create fields (backend defaults):** `pid`, `agentId`, `command`, `startedAt`, `endedAt`, `status`, `exitCode`, `logsPath`

### `scheduled-job`

CRUD operations for ScheduledJob records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all scheduledJob records |
| `get` | Get a scheduledJob by id |
| `create` | Create a new scheduledJob |
| `update` | Update an existing scheduledJob |
| `delete` | Delete a scheduledJob |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `name` | String |
| `scheduleType` | String |
| `scheduleExpr` | String |
| `runAt` | Datetime |
| `command` | String |
| `message` | String |
| `agentId` | UUID |
| `sessionId` | UUID |
| `isActive` | Boolean |
| `deleteAfterRun` | Boolean |
| `lastRunAt` | Datetime |
| `nextRunAt` | Datetime |
| `runCount` | Int |
| `lastResult` | JSON |
| `nameTrgmSimilarity` | Float |
| `scheduleTypeTrgmSimilarity` | Float |
| `scheduleExprTrgmSimilarity` | Float |
| `commandTrgmSimilarity` | Float |
| `messageTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`, `scheduleType`, `command`, `nameTrgmSimilarity`, `scheduleTypeTrgmSimilarity`, `scheduleExprTrgmSimilarity`, `commandTrgmSimilarity`, `messageTrgmSimilarity`, `searchScore`
**Optional create fields (backend defaults):** `scheduleExpr`, `runAt`, `message`, `agentId`, `sessionId`, `isActive`, `deleteAfterRun`, `lastRunAt`, `nextRunAt`, `runCount`, `lastResult`

### `agent-tool`

CRUD operations for AgentTool records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all agentTool records |
| `get` | Get a agentTool by id |
| `create` | Create a new agentTool |
| `update` | Update an existing agentTool |
| `delete` | Delete a agentTool |

**Fields:**

| Field | Type |
|-------|------|
| `agentId` | UUID |
| `toolId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `agentId`, `toolId`, `entityId`

### `agent-skill`

CRUD operations for AgentSkill records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all agentSkill records |
| `get` | Get a agentSkill by id |
| `create` | Create a new agentSkill |
| `update` | Update an existing agentSkill |
| `delete` | Delete a agentSkill |

**Fields:**

| Field | Type |
|-------|------|
| `agentId` | UUID |
| `skillId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `agentId`, `skillId`, `entityId`

### `agent-rule`

CRUD operations for AgentRule records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all agentRule records |
| `get` | Get a agentRule by id |
| `create` | Create a new agentRule |
| `update` | Update an existing agentRule |
| `delete` | Delete a agentRule |

**Fields:**

| Field | Type |
|-------|------|
| `agentId` | UUID |
| `ruleId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `agentId`, `ruleId`, `entityId`

### `calendar-event-contact`

CRUD operations for CalendarEventContact records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all calendarEventContact records |
| `get` | Get a calendarEventContact by id |
| `create` | Create a new calendarEventContact |
| `update` | Update an existing calendarEventContact |
| `delete` | Delete a calendarEventContact |

**Fields:**

| Field | Type |
|-------|------|
| `calendarEventId` | UUID |
| `contactId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `calendarEventId`, `contactId`, `entityId`

### `calendar-event`

CRUD operations for CalendarEvent records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all calendarEvent records |
| `get` | Get a calendarEvent by id |
| `create` | Create a new calendarEvent |
| `update` | Update an existing calendarEvent |
| `delete` | Delete a calendarEvent |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `calendarAccountId` | UUID |
| `remoteId` | String |
| `title` | String |
| `description` | String |
| `startAt` | Datetime |
| `endAt` | Datetime |
| `allDay` | Boolean |
| `location` | String |
| `recurrenceRule` | String |
| `status` | String |
| `tags` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingTextBm25Score` | Float |
| `remoteIdTrgmSimilarity` | Float |
| `titleTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `locationTrgmSimilarity` | Float |
| `recurrenceRuleTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `title`, `startAt`, `embeddingTextBm25Score`, `remoteIdTrgmSimilarity`, `titleTrgmSimilarity`, `descriptionTrgmSimilarity`, `locationTrgmSimilarity`, `recurrenceRuleTrgmSimilarity`, `statusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `calendarAccountId`, `remoteId`, `description`, `endAt`, `allDay`, `location`, `recurrenceRule`, `status`, `tags`, `embeddingText`, `embedding`

### `interaction`

CRUD operations for Interaction records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all interaction records |
| `get` | Get a interaction by id |
| `create` | Create a new interaction |
| `update` | Update an existing interaction |
| `delete` | Delete a interaction |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `contactId` | UUID |
| `type` | String |
| `occurredAt` | Datetime |
| `summary` | String |
| `sentiment` | String |
| `tags` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingTextBm25Score` | Float |
| `typeTrgmSimilarity` | Float |
| `summaryTrgmSimilarity` | Float |
| `sentimentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `contactId`, `type`, `occurredAt`, `embeddingTextBm25Score`, `typeTrgmSimilarity`, `summaryTrgmSimilarity`, `sentimentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `summary`, `sentiment`, `tags`, `embeddingText`, `embedding`

### `company-event`

CRUD operations for CompanyEvent records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all companyEvent records |
| `get` | Get a companyEvent by id |
| `create` | Create a new companyEvent |
| `update` | Update an existing companyEvent |
| `delete` | Delete a companyEvent |

**Fields:**

| Field | Type |
|-------|------|
| `companyId` | UUID |
| `eventId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `companyId`, `eventId`, `entityId`

### `company-image`

CRUD operations for CompanyImage records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all companyImage records |
| `get` | Get a companyImage by id |
| `create` | Create a new companyImage |
| `update` | Update an existing companyImage |
| `delete` | Delete a companyImage |

**Fields:**

| Field | Type |
|-------|------|
| `companyId` | UUID |
| `imageId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `companyId`, `imageId`, `entityId`

### `contact-company`

CRUD operations for ContactCompany records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all contactCompany records |
| `get` | Get a contactCompany by id |
| `create` | Create a new contactCompany |
| `update` | Update an existing contactCompany |
| `delete` | Delete a contactCompany |

**Fields:**

| Field | Type |
|-------|------|
| `contactId` | UUID |
| `companyId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `contactId`, `companyId`, `entityId`

### `contact-event`

CRUD operations for ContactEvent records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all contactEvent records |
| `get` | Get a contactEvent by id |
| `create` | Create a new contactEvent |
| `update` | Update an existing contactEvent |
| `delete` | Delete a contactEvent |

**Fields:**

| Field | Type |
|-------|------|
| `contactId` | UUID |
| `eventId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `contactId`, `eventId`, `entityId`

### `contact-image`

CRUD operations for ContactImage records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all contactImage records |
| `get` | Get a contactImage by id |
| `create` | Create a new contactImage |
| `update` | Update an existing contactImage |
| `delete` | Delete a contactImage |

**Fields:**

| Field | Type |
|-------|------|
| `contactId` | UUID |
| `imageId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `contactId`, `imageId`, `entityId`

### `deal-contact`

CRUD operations for DealContact records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all dealContact records |
| `get` | Get a dealContact by id |
| `create` | Create a new dealContact |
| `update` | Update an existing dealContact |
| `delete` | Delete a dealContact |

**Fields:**

| Field | Type |
|-------|------|
| `dealId` | UUID |
| `contactId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `dealId`, `contactId`, `entityId`

### `event-image`

CRUD operations for EventImage records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all eventImage records |
| `get` | Get a eventImage by id |
| `create` | Create a new eventImage |
| `update` | Update an existing eventImage |
| `delete` | Delete a eventImage |

**Fields:**

| Field | Type |
|-------|------|
| `eventId` | UUID |
| `imageId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `eventId`, `imageId`, `entityId`

### `event-venue`

CRUD operations for EventVenue records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all eventVenue records |
| `get` | Get a eventVenue by id |
| `create` | Create a new eventVenue |
| `update` | Update an existing eventVenue |
| `delete` | Delete a eventVenue |

**Fields:**

| Field | Type |
|-------|------|
| `eventId` | UUID |
| `venueId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `eventId`, `venueId`, `entityId`

### `expense-contact`

CRUD operations for ExpenseContact records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all expenseContact records |
| `get` | Get a expenseContact by id |
| `create` | Create a new expenseContact |
| `update` | Update an existing expenseContact |
| `delete` | Delete a expenseContact |

**Fields:**

| Field | Type |
|-------|------|
| `expenseId` | UUID |
| `contactId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `expenseId`, `contactId`, `entityId`

### `goal-habit`

CRUD operations for GoalHabit records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all goalHabit records |
| `get` | Get a goalHabit by id |
| `create` | Create a new goalHabit |
| `update` | Update an existing goalHabit |
| `delete` | Delete a goalHabit |

**Fields:**

| Field | Type |
|-------|------|
| `goalId` | UUID |
| `habitId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `goalId`, `habitId`, `entityId`

### `habit-log`

CRUD operations for HabitLog records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all habitLog records |
| `get` | Get a habitLog by id |
| `create` | Create a new habitLog |
| `update` | Update an existing habitLog |
| `delete` | Delete a habitLog |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `habitId` | UUID |
| `completedAt` | Datetime |
| `activityType` | String |
| `durationMinutes` | BigFloat |
| `distance` | BigFloat |
| `distanceUnit` | String |
| `reps` | Int |
| `sets` | Int |
| `weightAmount` | BigFloat |
| `weightUnit` | String |
| `calories` | BigFloat |
| `data` | JSON |
| `notes` | String |
| `tags` | String |
| `activityTypeTrgmSimilarity` | Float |
| `distanceUnitTrgmSimilarity` | Float |
| `weightUnitTrgmSimilarity` | Float |
| `notesTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `habitId`, `completedAt`, `activityTypeTrgmSimilarity`, `distanceUnitTrgmSimilarity`, `weightUnitTrgmSimilarity`, `notesTrgmSimilarity`, `searchScore`
**Optional create fields (backend defaults):** `activityType`, `durationMinutes`, `distance`, `distanceUnit`, `reps`, `sets`, `weightAmount`, `weightUnit`, `calories`, `data`, `notes`, `tags`

### `goal-project`

CRUD operations for GoalProject records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all goalProject records |
| `get` | Get a goalProject by id |
| `create` | Create a new goalProject |
| `update` | Update an existing goalProject |
| `delete` | Delete a goalProject |

**Fields:**

| Field | Type |
|-------|------|
| `goalId` | UUID |
| `projectId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `goalId`, `projectId`, `entityId`

### `milestone`

CRUD operations for Milestone records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all milestone records |
| `get` | Get a milestone by id |
| `create` | Create a new milestone |
| `update` | Update an existing milestone |
| `delete` | Delete a milestone |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `projectId` | UUID |
| `name` | String |
| `dueDate` | Datetime |
| `status` | String |
| `nameTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`, `nameTrgmSimilarity`, `statusTrgmSimilarity`, `searchScore`
**Optional create fields (backend defaults):** `projectId`, `dueDate`, `status`

### `project-contact`

CRUD operations for ProjectContact records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all projectContact records |
| `get` | Get a projectContact by id |
| `create` | Create a new projectContact |
| `update` | Update an existing projectContact |
| `delete` | Delete a projectContact |

**Fields:**

| Field | Type |
|-------|------|
| `projectId` | UUID |
| `contactId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `projectId`, `contactId`, `entityId`

### `task-contact`

CRUD operations for TaskContact records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all taskContact records |
| `get` | Get a taskContact by id |
| `create` | Create a new taskContact |
| `update` | Update an existing taskContact |
| `delete` | Delete a taskContact |

**Fields:**

| Field | Type |
|-------|------|
| `taskId` | UUID |
| `contactId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `taskId`, `contactId`, `entityId`

### `venue-image`

CRUD operations for VenueImage records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all venueImage records |
| `get` | Get a venueImage by id |
| `create` | Create a new venueImage |
| `update` | Update an existing venueImage |
| `delete` | Delete a venueImage |

**Fields:**

| Field | Type |
|-------|------|
| `venueId` | UUID |
| `imageId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `venueId`, `imageId`, `entityId`

### `file`

CRUD operations for File records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all file records |
| `get` | Get a file by id |
| `create` | Create a new file |
| `update` | Update an existing file |
| `delete` | Delete a file |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `repositoryId` | UUID |
| `path` | String |
| `language` | String |
| `hash` | String |
| `pathTrgmSimilarity` | Float |
| `languageTrgmSimilarity` | Float |
| `hashTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `path`, `pathTrgmSimilarity`, `languageTrgmSimilarity`, `hashTrgmSimilarity`, `searchScore`
**Optional create fields (backend defaults):** `repositoryId`, `language`, `hash`

### `chunk`

CRUD operations for Chunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all chunk records |
| `get` | Get a chunk by id |
| `create` | Create a new chunk |
| `update` | Update an existing chunk |
| `delete` | Delete a chunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `fileId` | UUID |
| `repositoryId` | UUID |
| `content` | String |
| `startLine` | Int |
| `endLine` | Int |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingTextBm25Score` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `content`, `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `fileId`, `repositoryId`, `startLine`, `endLine`, `embeddingText`, `embedding`

### `calendar-account`

CRUD operations for CalendarAccount records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all calendarAccount records |
| `get` | Get a calendarAccount by id |
| `create` | Create a new calendarAccount |
| `update` | Update an existing calendarAccount |
| `delete` | Delete a calendarAccount |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `email` | String |
| `provider` | String |
| `syncToken` | String |
| `lastSyncedAt` | Datetime |
| `emailTrgmSimilarity` | Float |
| `providerTrgmSimilarity` | Float |
| `syncTokenTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `email`, `emailTrgmSimilarity`, `providerTrgmSimilarity`, `syncTokenTrgmSimilarity`, `searchScore`
**Optional create fields (backend defaults):** `provider`, `syncToken`, `lastSyncedAt`

### `tag`

CRUD operations for Tag records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all tag records |
| `get` | Get a tag by id |
| `create` | Create a new tag |
| `update` | Update an existing tag |
| `delete` | Delete a tag |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `name` | String |
| `color` | String |
| `category` | String |
| `usageCount` | Int |
| `nameTrgmSimilarity` | Float |
| `colorTrgmSimilarity` | Float |
| `categoryTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`, `nameTrgmSimilarity`, `colorTrgmSimilarity`, `categoryTrgmSimilarity`, `searchScore`
**Optional create fields (backend defaults):** `color`, `category`, `usageCount`

### `feedback`

CRUD operations for Feedback records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all feedback records |
| `get` | Get a feedback by id |
| `create` | Create a new feedback |
| `update` | Update an existing feedback |
| `delete` | Delete a feedback |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `targetType` | String |
| `targetId` | UUID |
| `rating` | Int |
| `comment` | String |
| `source` | String |
| `targetTypeTrgmSimilarity` | Float |
| `commentTrgmSimilarity` | Float |
| `sourceTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `targetType`, `targetId`, `targetTypeTrgmSimilarity`, `commentTrgmSimilarity`, `sourceTrgmSimilarity`, `searchScore`
**Optional create fields (backend defaults):** `rating`, `comment`, `source`

### `attachment`

CRUD operations for Attachment records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all attachment records |
| `get` | Get a attachment by id |
| `create` | Create a new attachment |
| `update` | Update an existing attachment |
| `delete` | Delete a attachment |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `url` | String |
| `filename` | String |
| `mimeType` | String |
| `sizeBytes` | Int |
| `attachableType` | String |
| `attachableId` | UUID |
| `urlTrgmSimilarity` | Float |
| `filenameTrgmSimilarity` | Float |
| `mimeTypeTrgmSimilarity` | Float |
| `attachableTypeTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `url`, `urlTrgmSimilarity`, `filenameTrgmSimilarity`, `mimeTypeTrgmSimilarity`, `attachableTypeTrgmSimilarity`, `searchScore`
**Optional create fields (backend defaults):** `filename`, `mimeType`, `sizeBytes`, `attachableType`, `attachableId`

### `email-account`

CRUD operations for EmailAccount records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all emailAccount records |
| `get` | Get a emailAccount by id |
| `create` | Create a new emailAccount |
| `update` | Update an existing emailAccount |
| `delete` | Delete a emailAccount |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `email` | String |
| `provider` | String |
| `syncState` | JSON |
| `emailTrgmSimilarity` | Float |
| `providerTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `email`, `emailTrgmSimilarity`, `providerTrgmSimilarity`, `searchScore`
**Optional create fields (backend defaults):** `provider`, `syncState`

### `message`

CRUD operations for Message records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all message records |
| `get` | Get a message by id |
| `create` | Create a new message |
| `update` | Update an existing message |
| `delete` | Delete a message |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `emailAccountId` | UUID |
| `threadId` | String |
| `remoteId` | String |
| `fromAddress` | String |
| `toAddresses` | String |
| `subject` | String |
| `bodyText` | String |
| `receivedAt` | Datetime |
| `tags` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `bodyTextBm25Score` | Float |
| `embeddingTextBm25Score` | Float |
| `threadIdTrgmSimilarity` | Float |
| `remoteIdTrgmSimilarity` | Float |
| `fromAddressTrgmSimilarity` | Float |
| `subjectTrgmSimilarity` | Float |
| `bodyTextTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `bodyTextBm25Score`, `embeddingTextBm25Score`, `threadIdTrgmSimilarity`, `remoteIdTrgmSimilarity`, `fromAddressTrgmSimilarity`, `subjectTrgmSimilarity`, `bodyTextTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `emailAccountId`, `threadId`, `remoteId`, `fromAddress`, `toAddresses`, `subject`, `bodyText`, `receivedAt`, `tags`, `embeddingText`, `embedding`

### `activity-log`

CRUD operations for ActivityLog records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all activityLog records |
| `get` | Get a activityLog by id |
| `create` | Create a new activityLog |
| `update` | Update an existing activityLog |
| `delete` | Delete a activityLog |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `actorType` | String |
| `actorId` | UUID |
| `action` | String |
| `targetType` | String |
| `targetId` | UUID |
| `metadata` | JSON |
| `actorTypeTrgmSimilarity` | Float |
| `actionTrgmSimilarity` | Float |
| `targetTypeTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `actorType`, `action`, `targetType`, `targetId`, `actorTypeTrgmSimilarity`, `actionTrgmSimilarity`, `targetTypeTrgmSimilarity`, `searchScore`
**Optional create fields (backend defaults):** `actorId`, `metadata`

### `context-relation`

CRUD operations for ContextRelation records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all contextRelation records |
| `get` | Get a contextRelation by id |
| `create` | Create a new contextRelation |
| `update` | Update an existing contextRelation |
| `delete` | Delete a contextRelation |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `fromType` | String |
| `fromId` | UUID |
| `toType` | String |
| `toId` | UUID |
| `relationKind` | String |
| `reason` | String |
| `strength` | BigFloat |
| `fromTypeTrgmSimilarity` | Float |
| `toTypeTrgmSimilarity` | Float |
| `relationKindTrgmSimilarity` | Float |
| `reasonTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `fromType`, `fromId`, `toType`, `toId`, `fromTypeTrgmSimilarity`, `toTypeTrgmSimilarity`, `relationKindTrgmSimilarity`, `reasonTrgmSimilarity`, `searchScore`
**Optional create fields (backend defaults):** `relationKind`, `reason`, `strength`

### `user-setting`

CRUD operations for UserSetting records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all userSetting records |
| `get` | Get a userSetting by id |
| `create` | Create a new userSetting |
| `update` | Update an existing userSetting |
| `delete` | Delete a userSetting |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `key` | String |
| `value` | JSON |
| `category` | String |
| `keyTrgmSimilarity` | Float |
| `categoryTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `key`, `keyTrgmSimilarity`, `categoryTrgmSimilarity`, `searchScore`
**Optional create fields (backend defaults):** `value`, `category`

### `execution-log`

CRUD operations for ExecutionLog records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all executionLog records |
| `get` | Get a executionLog by id |
| `create` | Create a new executionLog |
| `update` | Update an existing executionLog |
| `delete` | Delete a executionLog |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `sessionId` | UUID |
| `stepName` | String |
| `input` | String |
| `output` | String |
| `toolCalls` | JSON |
| `durationMs` | Int |
| `stepNameTrgmSimilarity` | Float |
| `inputTrgmSimilarity` | Float |
| `outputTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `stepNameTrgmSimilarity`, `inputTrgmSimilarity`, `outputTrgmSimilarity`, `searchScore`
**Optional create fields (backend defaults):** `sessionId`, `stepName`, `input`, `output`, `toolCalls`, `durationMs`

### `session-archive`

CRUD operations for SessionArchive records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all sessionArchive records |
| `get` | Get a sessionArchive by id |
| `create` | Create a new sessionArchive |
| `update` | Update an existing sessionArchive |
| `delete` | Delete a sessionArchive |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `sessionId` | UUID |
| `archiveIndex` | Int |
| `summary` | String |
| `messageRangeStart` | Int |
| `messageRangeEnd` | Int |
| `rawMessages` | JSON |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingTextBm25Score` | Float |
| `summaryTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `sessionId`, `archiveIndex`, `summary`, `embeddingTextBm25Score`, `summaryTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `messageRangeStart`, `messageRangeEnd`, `rawMessages`, `embeddingText`, `embedding`

### `webhook`

CRUD operations for Webhook records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all webhook records |
| `get` | Get a webhook by id |
| `create` | Create a new webhook |
| `update` | Update an existing webhook |
| `delete` | Delete a webhook |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `integrationId` | UUID |
| `url` | String |
| `eventType` | String |
| `secret` | String |
| `isActive` | Boolean |
| `urlTrgmSimilarity` | Float |
| `eventTypeTrgmSimilarity` | Float |
| `secretTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `url`, `eventType`, `urlTrgmSimilarity`, `eventTypeTrgmSimilarity`, `secretTrgmSimilarity`, `searchScore`
**Optional create fields (backend defaults):** `integrationId`, `secret`, `isActive`

### `notification`

CRUD operations for Notification records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all notification records |
| `get` | Get a notification by id |
| `create` | Create a new notification |
| `update` | Update an existing notification |
| `delete` | Delete a notification |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `title` | String |
| `body` | String |
| `type` | String |
| `priority` | String |
| `readAt` | Datetime |
| `actionUrl` | String |
| `sourceEntityId` | UUID |
| `sourceEntityType` | String |
| `titleTrgmSimilarity` | Float |
| `bodyTrgmSimilarity` | Float |
| `typeTrgmSimilarity` | Float |
| `priorityTrgmSimilarity` | Float |
| `actionUrlTrgmSimilarity` | Float |
| `sourceEntityTypeTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `titleTrgmSimilarity`, `bodyTrgmSimilarity`, `typeTrgmSimilarity`, `priorityTrgmSimilarity`, `actionUrlTrgmSimilarity`, `sourceEntityTypeTrgmSimilarity`, `searchScore`
**Optional create fields (backend defaults):** `title`, `body`, `type`, `priority`, `readAt`, `actionUrl`, `sourceEntityId`, `sourceEntityType`

### `workflow-run`

CRUD operations for WorkflowRun records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all workflowRun records |
| `get` | Get a workflowRun by id |
| `create` | Create a new workflowRun |
| `update` | Update an existing workflowRun |
| `delete` | Delete a workflowRun |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `workflowId` | UUID |
| `status` | String |
| `startedAt` | Datetime |
| `completedAt` | Datetime |
| `input` | JSON |
| `output` | JSON |
| `error` | String |
| `statusTrgmSimilarity` | Float |
| `errorTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `workflowId`, `statusTrgmSimilarity`, `errorTrgmSimilarity`, `searchScore`
**Optional create fields (backend defaults):** `status`, `startedAt`, `completedAt`, `input`, `output`, `error`

### `workflow-step`

CRUD operations for WorkflowStep records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all workflowStep records |
| `get` | Get a workflowStep by id |
| `create` | Create a new workflowStep |
| `update` | Update an existing workflowStep |
| `delete` | Delete a workflowStep |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `workflowId` | UUID |
| `stepOrder` | Int |
| `actionType` | String |
| `actionConfig` | JSON |
| `onSuccessStep` | Int |
| `onFailureStep` | Int |
| `timeoutMs` | Int |
| `actionTypeTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `workflowId`, `stepOrder`, `actionType`, `actionTypeTrgmSimilarity`, `searchScore`
**Optional create fields (backend defaults):** `actionConfig`, `onSuccessStep`, `onFailureStep`, `timeoutMs`

### `integration`

CRUD operations for Integration records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all integration records |
| `get` | Get a integration by id |
| `create` | Create a new integration |
| `update` | Update an existing integration |
| `delete` | Delete a integration |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `name` | String |
| `provider` | String |
| `type` | String |
| `credentialsRef` | String |
| `config` | JSON |
| `status` | String |
| `lastSyncedAt` | Datetime |
| `nameTrgmSimilarity` | Float |
| `providerTrgmSimilarity` | Float |
| `typeTrgmSimilarity` | Float |
| `credentialsRefTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`, `provider`, `nameTrgmSimilarity`, `providerTrgmSimilarity`, `typeTrgmSimilarity`, `credentialsRefTrgmSimilarity`, `statusTrgmSimilarity`, `searchScore`
**Optional create fields (backend defaults):** `type`, `credentialsRef`, `config`, `status`, `lastSyncedAt`

### `skill-execution`

CRUD operations for SkillExecution records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all skillExecution records |
| `get` | Get a skillExecution by id |
| `create` | Create a new skillExecution |
| `update` | Update an existing skillExecution |
| `delete` | Delete a skillExecution |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `skillId` | UUID |
| `agentId` | UUID |
| `sessionId` | UUID |
| `status` | String |
| `startedAt` | Datetime |
| `completedAt` | Datetime |
| `durationMs` | Int |
| `input` | JSON |
| `output` | JSON |
| `error` | String |
| `statusTrgmSimilarity` | Float |
| `errorTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `skillId`, `statusTrgmSimilarity`, `errorTrgmSimilarity`, `searchScore`
**Optional create fields (backend defaults):** `agentId`, `sessionId`, `status`, `startedAt`, `completedAt`, `durationMs`, `input`, `output`, `error`

### `chat`

CRUD operations for Chat records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all chat records |
| `get` | Get a chat by id |
| `create` | Create a new chat |
| `update` | Update an existing chat |
| `delete` | Delete a chat |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `title` | String |
| `startedAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingTextBm25Score` | Float |
| `titleTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `embeddingTextBm25Score`, `titleTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `title`, `startedAt`, `embeddingText`, `embedding`

### `chat-message`

CRUD operations for ChatMessage records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all chatMessage records |
| `get` | Get a chatMessage by id |
| `create` | Create a new chatMessage |
| `update` | Update an existing chatMessage |
| `delete` | Delete a chatMessage |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chatId` | UUID |
| `threadId` | UUID |
| `role` | String |
| `content` | String |
| `toolCalls` | JSON |
| `embeddingText` | String |
| `embedding` | Vector |
| `contentBm25Score` | Float |
| `embeddingTextBm25Score` | Float |
| `roleTrgmSimilarity` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `contentBm25Score`, `embeddingTextBm25Score`, `roleTrgmSimilarity`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `chatId`, `threadId`, `role`, `content`, `toolCalls`, `embeddingText`, `embedding`

### `thread`

CRUD operations for Thread records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all thread records |
| `get` | Get a thread by id |
| `create` | Create a new thread |
| `update` | Update an existing thread |
| `delete` | Delete a thread |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `title` | String |
| `summary` | String |
| `status` | String |
| `parentThreadId` | UUID |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingTextBm25Score` | Float |
| `titleTrgmSimilarity` | Float |
| `summaryTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `title`, `embeddingTextBm25Score`, `titleTrgmSimilarity`, `summaryTrgmSimilarity`, `statusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `summary`, `status`, `parentThreadId`, `embeddingText`, `embedding`

### `reminder`

CRUD operations for Reminder records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all reminder records |
| `get` | Get a reminder by id |
| `create` | Create a new reminder |
| `update` | Update an existing reminder |
| `delete` | Delete a reminder |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `title` | String |
| `dueAt` | Datetime |
| `completedAt` | Datetime |
| `recurrence` | String |
| `status` | String |
| `relatedEntityId` | UUID |
| `relatedEntityType` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingTextBm25Score` | Float |
| `titleTrgmSimilarity` | Float |
| `recurrenceTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `relatedEntityTypeTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `title`, `embeddingTextBm25Score`, `titleTrgmSimilarity`, `recurrenceTrgmSimilarity`, `statusTrgmSimilarity`, `relatedEntityTypeTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `dueAt`, `completedAt`, `recurrence`, `status`, `relatedEntityId`, `relatedEntityType`, `embeddingText`, `embedding`

### `image`

CRUD operations for Image records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all image records |
| `get` | Get a image by id |
| `create` | Create a new image |
| `update` | Update an existing image |
| `delete` | Delete a image |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `url` | String |
| `meta` | JSON |
| `altText` | String |
| `caption` | String |
| `embedding` | Vector |
| `urlTrgmSimilarity` | Float |
| `altTextTrgmSimilarity` | Float |
| `captionTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `url`, `urlTrgmSimilarity`, `altTextTrgmSimilarity`, `captionTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `meta`, `altText`, `caption`, `embedding`

### `list-item`

CRUD operations for ListItem records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all listItem records |
| `get` | Get a listItem by id |
| `create` | Create a new listItem |
| `update` | Update an existing listItem |
| `delete` | Delete a listItem |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `listId` | UUID |
| `content` | String |
| `position` | Int |
| `isChecked` | Boolean |
| `refId` | UUID |
| `refType` | String |
| `contentTrgmSimilarity` | Float |
| `refTypeTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `listId`, `contentTrgmSimilarity`, `refTypeTrgmSimilarity`, `searchScore`
**Optional create fields (backend defaults):** `content`, `position`, `isChecked`, `refId`, `refType`

### `company-link`

CRUD operations for CompanyLink records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all companyLink records |
| `get` | Get a companyLink by id |
| `create` | Create a new companyLink |
| `update` | Update an existing companyLink |
| `delete` | Delete a companyLink |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `title` | String |
| `url` | String |
| `embedding` | Vector |
| `companyId` | UUID |
| `titleTrgmSimilarity` | Float |
| `urlTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `url`, `companyId`, `titleTrgmSimilarity`, `urlTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `title`, `embedding`

### `contact-link`

CRUD operations for ContactLink records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all contactLink records |
| `get` | Get a contactLink by id |
| `create` | Create a new contactLink |
| `update` | Update an existing contactLink |
| `delete` | Delete a contactLink |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `title` | String |
| `url` | String |
| `embedding` | Vector |
| `contactId` | UUID |
| `titleTrgmSimilarity` | Float |
| `urlTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `url`, `contactId`, `titleTrgmSimilarity`, `urlTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `title`, `embedding`

### `event-link`

CRUD operations for EventLink records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all eventLink records |
| `get` | Get a eventLink by id |
| `create` | Create a new eventLink |
| `update` | Update an existing eventLink |
| `delete` | Delete a eventLink |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `title` | String |
| `url` | String |
| `embedding` | Vector |
| `eventId` | UUID |
| `titleTrgmSimilarity` | Float |
| `urlTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `url`, `eventId`, `titleTrgmSimilarity`, `urlTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `title`, `embedding`

### `venue-link`

CRUD operations for VenueLink records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all venueLink records |
| `get` | Get a venueLink by id |
| `create` | Create a new venueLink |
| `update` | Update an existing venueLink |
| `delete` | Delete a venueLink |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `title` | String |
| `url` | String |
| `embedding` | Vector |
| `venueId` | UUID |
| `titleTrgmSimilarity` | Float |
| `urlTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `url`, `venueId`, `titleTrgmSimilarity`, `urlTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `title`, `embedding`

### `agent-spawn`

CRUD operations for AgentSpawn records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all agentSpawn records |
| `get` | Get a agentSpawn by id |
| `create` | Create a new agentSpawn |
| `update` | Update an existing agentSpawn |
| `delete` | Delete a agentSpawn |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `parentAgentId` | UUID |
| `childAgentId` | UUID |
| `sessionId` | UUID |
| `task` | String |
| `status` | String |
| `result` | JSON |
| `maxIterations` | Int |
| `startedAt` | Datetime |
| `completedAt` | Datetime |
| `agentId` | UUID |
| `taskTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `parentAgentId`, `task`, `agentId`, `taskTrgmSimilarity`, `statusTrgmSimilarity`, `searchScore`
**Optional create fields (backend defaults):** `childAgentId`, `sessionId`, `status`, `result`, `maxIterations`, `startedAt`, `completedAt`

### `habit`

CRUD operations for Habit records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all habit records |
| `get` | Get a habit by id |
| `create` | Create a new habit |
| `update` | Update an existing habit |
| `delete` | Delete a habit |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `name` | String |
| `frequency` | String |
| `targetCount` | Int |
| `currentStreak` | Int |
| `bestStreak` | Int |
| `category` | String |
| `tags` | String |
| `nameTrgmSimilarity` | Float |
| `frequencyTrgmSimilarity` | Float |
| `categoryTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`, `nameTrgmSimilarity`, `frequencyTrgmSimilarity`, `categoryTrgmSimilarity`, `searchScore`
**Optional create fields (backend defaults):** `frequency`, `targetCount`, `currentStreak`, `bestStreak`, `category`, `tags`

### `workflow`

CRUD operations for Workflow records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all workflow records |
| `get` | Get a workflow by id |
| `create` | Create a new workflow |
| `update` | Update an existing workflow |
| `delete` | Delete a workflow |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `name` | String |
| `description` | String |
| `triggerType` | String |
| `triggerConfig` | JSON |
| `isActive` | Boolean |
| `tags` | String |
| `nameTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `triggerTypeTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `triggerTypeTrgmSimilarity`, `searchScore`
**Optional create fields (backend defaults):** `description`, `triggerType`, `triggerConfig`, `isActive`, `tags`

### `expense`

CRUD operations for Expense records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all expense records |
| `get` | Get a expense by id |
| `create` | Create a new expense |
| `update` | Update an existing expense |
| `delete` | Delete a expense |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `amount` | BigFloat |
| `currency` | String |
| `date` | Date |
| `category` | String |
| `description` | String |
| `merchant` | String |
| `receiptUrl` | String |
| `isRecurring` | Boolean |
| `tags` | String |
| `currencyTrgmSimilarity` | Float |
| `categoryTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `merchantTrgmSimilarity` | Float |
| `receiptUrlTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `currencyTrgmSimilarity`, `categoryTrgmSimilarity`, `descriptionTrgmSimilarity`, `merchantTrgmSimilarity`, `receiptUrlTrgmSimilarity`, `searchScore`
**Optional create fields (backend defaults):** `amount`, `currency`, `date`, `category`, `description`, `merchant`, `receiptUrl`, `isRecurring`, `tags`

### `billing-subscription`

CRUD operations for BillingSubscription records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all billingSubscription records |
| `get` | Get a billingSubscription by id |
| `create` | Create a new billingSubscription |
| `update` | Update an existing billingSubscription |
| `delete` | Delete a billingSubscription |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `name` | String |
| `amount` | BigFloat |
| `currency` | String |
| `frequency` | String |
| `provider` | String |
| `nextBillingDate` | Date |
| `cancellationDate` | Date |
| `status` | String |
| `tags` | String |
| `notes` | String |
| `nameTrgmSimilarity` | Float |
| `currencyTrgmSimilarity` | Float |
| `frequencyTrgmSimilarity` | Float |
| `providerTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `notesTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`, `nameTrgmSimilarity`, `currencyTrgmSimilarity`, `frequencyTrgmSimilarity`, `providerTrgmSimilarity`, `statusTrgmSimilarity`, `notesTrgmSimilarity`, `searchScore`
**Optional create fields (backend defaults):** `amount`, `currency`, `frequency`, `provider`, `nextBillingDate`, `cancellationDate`, `status`, `tags`, `notes`

### `idea`

CRUD operations for Idea records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all idea records |
| `get` | Get a idea by id |
| `create` | Create a new idea |
| `update` | Update an existing idea |
| `delete` | Delete a idea |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `content` | String |
| `source` | String |
| `status` | String |
| `tags` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingTextBm25Score` | Float |
| `contentTrgmSimilarity` | Float |
| `sourceTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `content`, `embeddingTextBm25Score`, `contentTrgmSimilarity`, `sourceTrgmSimilarity`, `statusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `source`, `status`, `tags`, `embeddingText`, `embedding`

### `list`

CRUD operations for List records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all list records |
| `get` | Get a list by id |
| `create` | Create a new list |
| `update` | Update an existing list |
| `delete` | Delete a list |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `name` | String |
| `description` | String |
| `type` | String |
| `tags` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingTextBm25Score` | Float |
| `nameTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `typeTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`, `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `typeTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `description`, `type`, `tags`, `embeddingText`, `embedding`

### `repository`

CRUD operations for Repository records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all repository records |
| `get` | Get a repository by id |
| `create` | Create a new repository |
| `update` | Update an existing repository |
| `delete` | Delete a repository |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `name` | String |
| `url` | String |
| `description` | String |
| `defaultBranch` | String |
| `lastSyncedAt` | Datetime |
| `tags` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingTextBm25Score` | Float |
| `nameTrgmSimilarity` | Float |
| `urlTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `defaultBranchTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`, `embeddingTextBm25Score`, `nameTrgmSimilarity`, `urlTrgmSimilarity`, `descriptionTrgmSimilarity`, `defaultBranchTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `url`, `description`, `defaultBranch`, `lastSyncedAt`, `tags`, `embeddingText`, `embedding`

### `deal`

CRUD operations for Deal records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all deal records |
| `get` | Get a deal by id |
| `create` | Create a new deal |
| `update` | Update an existing deal |
| `delete` | Delete a deal |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `name` | String |
| `stage` | String |
| `value` | BigFloat |
| `currency` | String |
| `expectedCloseDate` | Datetime |
| `notes` | String |
| `tags` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingTextBm25Score` | Float |
| `nameTrgmSimilarity` | Float |
| `stageTrgmSimilarity` | Float |
| `currencyTrgmSimilarity` | Float |
| `notesTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`, `embeddingTextBm25Score`, `nameTrgmSimilarity`, `stageTrgmSimilarity`, `currencyTrgmSimilarity`, `notesTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `stage`, `value`, `currency`, `expectedCloseDate`, `notes`, `tags`, `embeddingText`, `embedding`

### `goal`

CRUD operations for Goal records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all goal records |
| `get` | Get a goal by id |
| `create` | Create a new goal |
| `update` | Update an existing goal |
| `delete` | Delete a goal |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `title` | String |
| `description` | String |
| `targetDate` | Datetime |
| `status` | String |
| `category` | String |
| `progressPct` | Int |
| `tags` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingTextBm25Score` | Float |
| `titleTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `categoryTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `title`, `embeddingTextBm25Score`, `titleTrgmSimilarity`, `descriptionTrgmSimilarity`, `statusTrgmSimilarity`, `categoryTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `description`, `targetDate`, `status`, `category`, `progressPct`, `tags`, `embeddingText`, `embedding`

### `note`

CRUD operations for Note records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all note records |
| `get` | Get a note by id |
| `create` | Create a new note |
| `update` | Update an existing note |
| `delete` | Delete a note |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `content` | String |
| `notableType` | String |
| `notableId` | UUID |
| `abstract` | String |
| `overview` | String |
| `activeCount` | Int |
| `lastAccessedAt` | Datetime |
| `tags` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `contentBm25Score` | Float |
| `embeddingTextBm25Score` | Float |
| `contentTrgmSimilarity` | Float |
| `notableTypeTrgmSimilarity` | Float |
| `abstractTrgmSimilarity` | Float |
| `overviewTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `content`, `contentBm25Score`, `embeddingTextBm25Score`, `contentTrgmSimilarity`, `notableTypeTrgmSimilarity`, `abstractTrgmSimilarity`, `overviewTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `notableType`, `notableId`, `abstract`, `overview`, `activeCount`, `lastAccessedAt`, `tags`, `embeddingText`, `embedding`

### `prompt`

CRUD operations for Prompt records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all prompt records |
| `get` | Get a prompt by id |
| `create` | Create a new prompt |
| `update` | Update an existing prompt |
| `delete` | Delete a prompt |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `name` | String |
| `content` | String |
| `type` | String |
| `model` | String |
| `version` | Int |
| `isActive` | Boolean |
| `tags` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `contentBm25Score` | Float |
| `embeddingTextBm25Score` | Float |
| `nameTrgmSimilarity` | Float |
| `contentTrgmSimilarity` | Float |
| `typeTrgmSimilarity` | Float |
| `modelTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`, `content`, `contentBm25Score`, `embeddingTextBm25Score`, `nameTrgmSimilarity`, `contentTrgmSimilarity`, `typeTrgmSimilarity`, `modelTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `type`, `model`, `version`, `isActive`, `tags`, `embeddingText`, `embedding`

### `blueprint`

CRUD operations for Blueprint records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all blueprint records |
| `get` | Get a blueprint by id |
| `create` | Create a new blueprint |
| `update` | Update an existing blueprint |
| `delete` | Delete a blueprint |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `title` | String |
| `steps` | JSON |
| `triggerConditions` | String |
| `conversationId` | UUID |
| `tags` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingTextBm25Score` | Float |
| `titleTrgmSimilarity` | Float |
| `triggerConditionsTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `title`, `embeddingTextBm25Score`, `titleTrgmSimilarity`, `triggerConditionsTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `steps`, `triggerConditions`, `conversationId`, `tags`, `embeddingText`, `embedding`

### `template`

CRUD operations for Template records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all template records |
| `get` | Get a template by id |
| `create` | Create a new template |
| `update` | Update an existing template |
| `delete` | Delete a template |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `name` | String |
| `description` | String |
| `type` | String |
| `content` | JSON |
| `variables` | JSON |
| `isActive` | Boolean |
| `tags` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingTextBm25Score` | Float |
| `nameTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `typeTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`, `content`, `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `typeTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `description`, `type`, `variables`, `isActive`, `tags`, `embeddingText`, `embedding`

### `tool`

CRUD operations for Tool records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all tool records |
| `get` | Get a tool by id |
| `create` | Create a new tool |
| `update` | Update an existing tool |
| `delete` | Delete a tool |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `name` | String |
| `description` | String |
| `type` | String |
| `inputSchema` | JSON |
| `outputSchema` | JSON |
| `endpoint` | String |
| `authMethod` | String |
| `isActive` | Boolean |
| `tags` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingTextBm25Score` | Float |
| `nameTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `typeTrgmSimilarity` | Float |
| `endpointTrgmSimilarity` | Float |
| `authMethodTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`, `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `typeTrgmSimilarity`, `endpointTrgmSimilarity`, `authMethodTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `description`, `type`, `inputSchema`, `outputSchema`, `endpoint`, `authMethod`, `isActive`, `tags`, `embeddingText`, `embedding`

### `recipe`

CRUD operations for Recipe records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all recipe records |
| `get` | Get a recipe by id |
| `create` | Create a new recipe |
| `update` | Update an existing recipe |
| `delete` | Delete a recipe |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `name` | String |
| `description` | String |
| `cuisine` | String |
| `prepTimeMinutes` | Int |
| `cookTimeMinutes` | Int |
| `servings` | Int |
| `difficulty` | String |
| `ingredients` | JSON |
| `instructions` | JSON |
| `sourceUrl` | String |
| `imageUrl` | String |
| `tags` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingTextBm25Score` | Float |
| `nameTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `cuisineTrgmSimilarity` | Float |
| `difficultyTrgmSimilarity` | Float |
| `sourceUrlTrgmSimilarity` | Float |
| `imageUrlTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`, `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `cuisineTrgmSimilarity`, `difficultyTrgmSimilarity`, `sourceUrlTrgmSimilarity`, `imageUrlTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `description`, `cuisine`, `prepTimeMinutes`, `cookTimeMinutes`, `servings`, `difficulty`, `ingredients`, `instructions`, `sourceUrl`, `imageUrl`, `tags`, `embeddingText`, `embedding`

### `trip`

CRUD operations for Trip records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all trip records |
| `get` | Get a trip by id |
| `create` | Create a new trip |
| `update` | Update an existing trip |
| `delete` | Delete a trip |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `name` | String |
| `destination` | String |
| `startDate` | Date |
| `endDate` | Date |
| `status` | String |
| `notes` | String |
| `tags` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingTextBm25Score` | Float |
| `nameTrgmSimilarity` | Float |
| `destinationTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `notesTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`, `embeddingTextBm25Score`, `nameTrgmSimilarity`, `destinationTrgmSimilarity`, `statusTrgmSimilarity`, `notesTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `destination`, `startDate`, `endDate`, `status`, `notes`, `tags`, `embeddingText`, `embedding`

### `memory`

CRUD operations for Memory records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all memory records |
| `get` | Get a memory by id |
| `create` | Create a new memory |
| `update` | Update an existing memory |
| `delete` | Delete a memory |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `content` | String |
| `memoryType` | String |
| `memoryCategory` | String |
| `agentId` | UUID |
| `importance` | Int |
| `verified` | Boolean |
| `source` | String |
| `relatedEntityType` | String |
| `relatedEntityId` | UUID |
| `abstract` | String |
| `overview` | String |
| `activeCount` | Int |
| `lastAccessedAt` | Datetime |
| `tags` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingTextBm25Score` | Float |
| `contentTrgmSimilarity` | Float |
| `memoryTypeTrgmSimilarity` | Float |
| `memoryCategoryTrgmSimilarity` | Float |
| `sourceTrgmSimilarity` | Float |
| `relatedEntityTypeTrgmSimilarity` | Float |
| `abstractTrgmSimilarity` | Float |
| `overviewTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `content`, `embeddingTextBm25Score`, `contentTrgmSimilarity`, `memoryTypeTrgmSimilarity`, `memoryCategoryTrgmSimilarity`, `sourceTrgmSimilarity`, `relatedEntityTypeTrgmSimilarity`, `abstractTrgmSimilarity`, `overviewTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `memoryType`, `memoryCategory`, `agentId`, `importance`, `verified`, `source`, `relatedEntityType`, `relatedEntityId`, `abstract`, `overview`, `activeCount`, `lastAccessedAt`, `tags`, `embeddingText`, `embedding`

### `rule`

CRUD operations for Rule records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all rule records |
| `get` | Get a rule by id |
| `create` | Create a new rule |
| `update` | Update an existing rule |
| `delete` | Delete a rule |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `title` | String |
| `content` | String |
| `kind` | String |
| `severity` | String |
| `isActive` | Boolean |
| `slug` | String |
| `verification` | String |
| `tags` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `triggerConcept` | Vector |
| `embeddingTextBm25Score` | Float |
| `titleTrgmSimilarity` | Float |
| `contentTrgmSimilarity` | Float |
| `kindTrgmSimilarity` | Float |
| `severityTrgmSimilarity` | Float |
| `slugTrgmSimilarity` | Float |
| `verificationTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `triggerConceptVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `title`, `embeddingTextBm25Score`, `titleTrgmSimilarity`, `contentTrgmSimilarity`, `kindTrgmSimilarity`, `severityTrgmSimilarity`, `slugTrgmSimilarity`, `verificationTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `triggerConceptVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `content`, `kind`, `severity`, `isActive`, `slug`, `verification`, `tags`, `embeddingText`, `embedding`, `triggerConcept`

### `task`

CRUD operations for Task records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all task records |
| `get` | Get a task by id |
| `create` | Create a new task |
| `update` | Update an existing task |
| `delete` | Delete a task |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `title` | String |
| `description` | String |
| `status` | String |
| `priority` | Int |
| `projectId` | UUID |
| `taskType` | String |
| `assignedAgentId` | UUID |
| `parentTaskId` | UUID |
| `dueDate` | Datetime |
| `completedAt` | Datetime |
| `conversationId` | UUID |
| `dependencies` | UUID |
| `tags` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingTextBm25Score` | Float |
| `titleTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `taskTypeTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `title`, `embeddingTextBm25Score`, `titleTrgmSimilarity`, `descriptionTrgmSimilarity`, `statusTrgmSimilarity`, `taskTypeTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `description`, `status`, `priority`, `projectId`, `taskType`, `assignedAgentId`, `parentTaskId`, `dueDate`, `completedAt`, `conversationId`, `dependencies`, `tags`, `embeddingText`, `embedding`

### `agent`

CRUD operations for Agent records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all agent records |
| `get` | Get a agent by id |
| `create` | Create a new agent |
| `update` | Update an existing agent |
| `delete` | Delete a agent |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `name` | String |
| `role` | String |
| `capabilities` | JSON |
| `config` | JSON |
| `status` | String |
| `persona` | String |
| `backstory` | String |
| `communicationStyle` | String |
| `systemPrompt` | String |
| `preferredModel` | String |
| `fallbackModels` | String |
| `temperature` | BigFloat |
| `mood` | String |
| `focus` | String |
| `lastActiveAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingTextBm25Score` | Float |
| `nameTrgmSimilarity` | Float |
| `roleTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `personaTrgmSimilarity` | Float |
| `backstoryTrgmSimilarity` | Float |
| `communicationStyleTrgmSimilarity` | Float |
| `systemPromptTrgmSimilarity` | Float |
| `preferredModelTrgmSimilarity` | Float |
| `moodTrgmSimilarity` | Float |
| `focusTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`, `embeddingTextBm25Score`, `nameTrgmSimilarity`, `roleTrgmSimilarity`, `statusTrgmSimilarity`, `personaTrgmSimilarity`, `backstoryTrgmSimilarity`, `communicationStyleTrgmSimilarity`, `systemPromptTrgmSimilarity`, `preferredModelTrgmSimilarity`, `moodTrgmSimilarity`, `focusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `role`, `capabilities`, `config`, `status`, `persona`, `backstory`, `communicationStyle`, `systemPrompt`, `preferredModel`, `fallbackModels`, `temperature`, `mood`, `focus`, `lastActiveAt`, `embeddingText`, `embedding`

### `session`

CRUD operations for Session records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all session records |
| `get` | Get a session by id |
| `create` | Create a new session |
| `update` | Update an existing session |
| `delete` | Delete a session |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `title` | String |
| `agentId` | UUID |
| `startedAt` | Datetime |
| `endedAt` | Datetime |
| `status` | String |
| `contextSummary` | String |
| `sessionSummary` | String |
| `archivedMessages` | JSON |
| `compressionCount` | Int |
| `archivedAt` | Datetime |
| `extractedMemoryIds` | UUID |
| `contextsUsed` | JSON |
| `skillsUsed` | UUID |
| `embeddingText` | String |
| `embedding` | Vector |
| `uagentTrgmSimilarity` | Float |
| `fingerprintModeTrgmSimilarity` | Float |
| `csrfSecretTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `uagentTrgmSimilarity`, `fingerprintModeTrgmSimilarity`, `csrfSecretTrgmSimilarity`, `searchScore`
**Optional create fields (backend defaults):** `title`, `agentId`, `startedAt`, `endedAt`, `status`, `contextSummary`, `sessionSummary`, `archivedMessages`, `compressionCount`, `archivedAt`, `extractedMemoryIds`, `contextsUsed`, `skillsUsed`, `embeddingText`, `embedding`

### `skill`

CRUD operations for Skill records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all skill records |
| `get` | Get a skill by id |
| `create` | Create a new skill |
| `update` | Update an existing skill |
| `delete` | Delete a skill |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `name` | String |
| `slug` | String |
| `description` | String |
| `content` | String |
| `procedure` | String |
| `interface` | JSON |
| `requirements` | JSON |
| `prerequisites` | JSON |
| `alwaysLoad` | Boolean |
| `filePath` | String |
| `contentHash` | String |
| `category` | String |
| `isActive` | Boolean |
| `abstract` | String |
| `overview` | String |
| `activeCount` | Int |
| `lastAccessedAt` | Datetime |
| `tags` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `intentTrigger` | Vector |
| `embeddingTextBm25Score` | Float |
| `nameTrgmSimilarity` | Float |
| `slugTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `contentTrgmSimilarity` | Float |
| `procedureTrgmSimilarity` | Float |
| `filePathTrgmSimilarity` | Float |
| `contentHashTrgmSimilarity` | Float |
| `categoryTrgmSimilarity` | Float |
| `abstractTrgmSimilarity` | Float |
| `overviewTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `intentTriggerVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`, `embeddingTextBm25Score`, `nameTrgmSimilarity`, `slugTrgmSimilarity`, `descriptionTrgmSimilarity`, `contentTrgmSimilarity`, `procedureTrgmSimilarity`, `filePathTrgmSimilarity`, `contentHashTrgmSimilarity`, `categoryTrgmSimilarity`, `abstractTrgmSimilarity`, `overviewTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `intentTriggerVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `slug`, `description`, `content`, `procedure`, `interface`, `requirements`, `prerequisites`, `alwaysLoad`, `filePath`, `contentHash`, `category`, `isActive`, `abstract`, `overview`, `activeCount`, `lastAccessedAt`, `tags`, `embeddingText`, `embedding`, `intentTrigger`

### `project`

CRUD operations for Project records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all project records |
| `get` | Get a project by id |
| `create` | Create a new project |
| `update` | Update an existing project |
| `delete` | Delete a project |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `name` | String |
| `description` | String |
| `status` | String |
| `startDate` | Datetime |
| `dueDate` | Datetime |
| `tags` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `searchTsv` | FullText |
| `searchTsvRank` | Float |
| `embeddingTextBm25Score` | Float |
| `nameTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`, `searchTsvRank`, `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `statusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `description`, `status`, `startDate`, `dueDate`, `tags`, `embeddingText`, `embedding`, `searchTsv`

### `document`

CRUD operations for Document records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all document records |
| `get` | Get a document by id |
| `create` | Create a new document |
| `update` | Update an existing document |
| `delete` | Delete a document |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `title` | String |
| `url` | String |
| `content` | String |
| `sourceType` | String |
| `isRead` | Boolean |
| `savedAt` | Datetime |
| `parentDocumentId` | UUID |
| `abstract` | String |
| `overview` | String |
| `activeCount` | Int |
| `lastAccessedAt` | Datetime |
| `tags` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `searchTsv` | FullText |
| `searchTsvRank` | Float |
| `contentBm25Score` | Float |
| `embeddingTextBm25Score` | Float |
| `titleTrgmSimilarity` | Float |
| `urlTrgmSimilarity` | Float |
| `contentTrgmSimilarity` | Float |
| `sourceTypeTrgmSimilarity` | Float |
| `abstractTrgmSimilarity` | Float |
| `overviewTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `title`, `searchTsvRank`, `contentBm25Score`, `embeddingTextBm25Score`, `titleTrgmSimilarity`, `urlTrgmSimilarity`, `contentTrgmSimilarity`, `sourceTypeTrgmSimilarity`, `abstractTrgmSimilarity`, `overviewTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `url`, `content`, `sourceType`, `isRead`, `savedAt`, `parentDocumentId`, `abstract`, `overview`, `activeCount`, `lastAccessedAt`, `tags`, `embeddingText`, `embedding`, `searchTsv`

### `company`

CRUD operations for Company records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all company records |
| `get` | Get a company by id |
| `create` | Create a new company |
| `update` | Update an existing company |
| `delete` | Delete a company |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `name` | String |
| `domain` | String |
| `industry` | String |
| `description` | String |
| `tags` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `searchTsv` | FullText |
| `mainImageId` | UUID |
| `searchTsvRank` | Float |
| `embeddingTextBm25Score` | Float |
| `nameTrgmSimilarity` | Float |
| `domainTrgmSimilarity` | Float |
| `industryTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`, `searchTsvRank`, `embeddingTextBm25Score`, `nameTrgmSimilarity`, `domainTrgmSimilarity`, `industryTrgmSimilarity`, `descriptionTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `domain`, `industry`, `description`, `tags`, `embeddingText`, `embedding`, `searchTsv`, `mainImageId`

### `event`

CRUD operations for Event records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all event records |
| `get` | Get a event by id |
| `create` | Create a new event |
| `update` | Update an existing event |
| `delete` | Delete a event |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `name` | String |
| `eventType` | String |
| `location` | String |
| `city` | String |
| `startedAt` | Datetime |
| `endedAt` | Datetime |
| `notes` | String |
| `tags` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `searchTsv` | FullText |
| `mainImageId` | UUID |
| `searchTsvRank` | Float |
| `embeddingTextBm25Score` | Float |
| `nameTrgmSimilarity` | Float |
| `eventTypeTrgmSimilarity` | Float |
| `locationTrgmSimilarity` | Float |
| `cityTrgmSimilarity` | Float |
| `notesTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`, `searchTsvRank`, `embeddingTextBm25Score`, `nameTrgmSimilarity`, `eventTypeTrgmSimilarity`, `locationTrgmSimilarity`, `cityTrgmSimilarity`, `notesTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `eventType`, `location`, `city`, `startedAt`, `endedAt`, `notes`, `tags`, `embeddingText`, `embedding`, `searchTsv`, `mainImageId`

### `contact`

CRUD operations for Contact records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all contact records |
| `get` | Get a contact by id |
| `create` | Create a new contact |
| `update` | Update an existing contact |
| `delete` | Delete a contact |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `firstName` | String |
| `lastName` | String |
| `email` | String |
| `phone` | String |
| `headline` | String |
| `bio` | String |
| `location` | String |
| `birthday` | Date |
| `relationshipType` | String |
| `howWeMet` | String |
| `twitterHandle` | String |
| `linkedinUrl` | String |
| `githubUsername` | String |
| `instagramHandle` | String |
| `website` | String |
| `tags` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `searchTsv` | FullText |
| `mainImageId` | UUID |
| `searchTsvRank` | Float |
| `embeddingTextBm25Score` | Float |
| `firstNameTrgmSimilarity` | Float |
| `lastNameTrgmSimilarity` | Float |
| `emailTrgmSimilarity` | Float |
| `phoneTrgmSimilarity` | Float |
| `headlineTrgmSimilarity` | Float |
| `bioTrgmSimilarity` | Float |
| `locationTrgmSimilarity` | Float |
| `relationshipTypeTrgmSimilarity` | Float |
| `howWeMetTrgmSimilarity` | Float |
| `twitterHandleTrgmSimilarity` | Float |
| `linkedinUrlTrgmSimilarity` | Float |
| `githubUsernameTrgmSimilarity` | Float |
| `instagramHandleTrgmSimilarity` | Float |
| `websiteTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `firstName`, `searchTsvRank`, `embeddingTextBm25Score`, `firstNameTrgmSimilarity`, `lastNameTrgmSimilarity`, `emailTrgmSimilarity`, `phoneTrgmSimilarity`, `headlineTrgmSimilarity`, `bioTrgmSimilarity`, `locationTrgmSimilarity`, `relationshipTypeTrgmSimilarity`, `howWeMetTrgmSimilarity`, `twitterHandleTrgmSimilarity`, `linkedinUrlTrgmSimilarity`, `githubUsernameTrgmSimilarity`, `instagramHandleTrgmSimilarity`, `websiteTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `lastName`, `email`, `phone`, `headline`, `bio`, `location`, `birthday`, `relationshipType`, `howWeMet`, `twitterHandle`, `linkedinUrl`, `githubUsername`, `instagramHandle`, `website`, `tags`, `embeddingText`, `embedding`, `searchTsv`, `mainImageId`

### `venue`

CRUD operations for Venue records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all venue records |
| `get` | Get a venue by id |
| `create` | Create a new venue |
| `update` | Update an existing venue |
| `delete` | Delete a venue |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `name` | String |
| `address` | String |
| `neighborhood` | String |
| `city` | String |
| `category` | String |
| `status` | String |
| `googlePlaceId` | String |
| `rating` | BigFloat |
| `priceLevel` | String |
| `isFavorite` | Boolean |
| `notes` | String |
| `tags` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `searchTsv` | FullText |
| `mainImageId` | UUID |
| `searchTsvRank` | Float |
| `embeddingTextBm25Score` | Float |
| `nameTrgmSimilarity` | Float |
| `addressTrgmSimilarity` | Float |
| `neighborhoodTrgmSimilarity` | Float |
| `cityTrgmSimilarity` | Float |
| `categoryTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `googlePlaceIdTrgmSimilarity` | Float |
| `priceLevelTrgmSimilarity` | Float |
| `notesTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`, `searchTsvRank`, `embeddingTextBm25Score`, `nameTrgmSimilarity`, `addressTrgmSimilarity`, `neighborhoodTrgmSimilarity`, `cityTrgmSimilarity`, `categoryTrgmSimilarity`, `statusTrgmSimilarity`, `googlePlaceIdTrgmSimilarity`, `priceLevelTrgmSimilarity`, `notesTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `embeddingVectorDistance`, `searchScore`
**Optional create fields (backend defaults):** `address`, `neighborhood`, `city`, `category`, `status`, `googlePlaceId`, `rating`, `priceLevel`, `isFavorite`, `notes`, `tags`, `embeddingText`, `embedding`, `searchTsv`, `mainImageId`

## Output

All commands output JSON to stdout. Pipe to `jq` for formatting:

```bash
agent-db car list | jq '.[]'
agent-db car get --id <uuid> | jq '.'
```

## Non-Interactive Mode

Use `--no-tty` to skip all interactive prompts (useful for scripts and CI):

```bash
agent-db --no-tty car create --name "Sedan" --year 2024
```

---

Built by the [Constructive](https://constructive.io) team.

## Disclaimer

AS DESCRIBED IN THE LICENSES, THE SOFTWARE IS PROVIDED "AS IS", AT YOUR OWN RISK, AND WITHOUT WARRANTIES OF ANY KIND.

No developer or entity involved in creating this software will be liable for any claims or damages whatsoever associated with your use, inability to use, or your interaction with other users of the code, including any direct, indirect, incidental, special, exemplary, punitive or consequential damages, or loss of profits, cryptocurrencies, tokens, or anything else of value.
