# agentic-db CLI

<p align="center" width="100%">
  <img height="120" src="https://raw.githubusercontent.com/constructive-io/constructive/refs/heads/main/assets/outline-logo.svg" />
</p>

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

## Setup

```bash
# Create a context pointing at your GraphQL endpoint
agentic-db context create production --endpoint https://api.example.com/graphql

# Set the active context
agentic-db context use production

# Authenticate
agentic-db auth set-token <your-token>
```

## Commands

| Command | Description |
|---------|-------------|
| `context` | Manage API contexts (endpoints) |
| `auth` | Manage authentication tokens |
| `config` | Manage config key-value store (per-context) |
| `agent-collaborator` | agentCollaborator CRUD operations |
| `agent` | agent CRUD operations |
| `agent-log` | agentLog CRUD operations |
| `agent-logs-chunk` | agentLogsChunk CRUD operations |
| `agent-prompt` | agentPrompt CRUD operations |
| `prompt` | prompt CRUD operations |
| `agents-chunk` | agentsChunk CRUD operations |
| `autonomy-record` | autonomyRecord CRUD operations |
| `autonomy-record-link` | autonomyRecordLink CRUD operations |
| `autonomy-records-chunk` | autonomyRecordsChunk CRUD operations |
| `calendar-attendee` | calendarAttendee CRUD operations |
| `calendar` | calendar CRUD operations |
| `calendar-event` | calendarEvent CRUD operations |
| `calendar-event-contact` | calendarEventContact CRUD operations |
| `contact` | contact CRUD operations |
| `calendar-event-note` | calendarEventNote CRUD operations |
| `note` | note CRUD operations |
| `calendar-events-chunk` | calendarEventsChunk CRUD operations |
| `calendar-event-task` | calendarEventTask CRUD operations |
| `task` | task CRUD operations |
| `codebase-dependency` | codebaseDependency CRUD operations |
| `codebases-chunk` | codebasesChunk CRUD operations |
| `codebasis` | codebasis CRUD operations |
| `code-chunk` | codeChunk CRUD operations |
| `companies-chunk` | companiesChunk CRUD operations |
| `company` | company CRUD operations |
| `deal` | deal CRUD operations |
| `company-event` | companyEvent CRUD operations |
| `event` | event CRUD operations |
| `company-image` | companyImage CRUD operations |
| `image` | image CRUD operations |
| `company-link` | companyLink CRUD operations |
| `memory` | memory CRUD operations |
| `company-memory` | companyMemory CRUD operations |
| `company-note` | companyNote CRUD operations |
| `contact-company` | contactCompany CRUD operations |
| `email` | email CRUD operations |
| `email-thread` | emailThread CRUD operations |
| `contact-event` | contactEvent CRUD operations |
| `expense` | expense CRUD operations |
| `contact-image` | contactImage CRUD operations |
| `contact-link` | contactLink CRUD operations |
| `contact-memory` | contactMemory CRUD operations |
| `contact-note` | contactNote CRUD operations |
| `project` | project CRUD operations |
| `contact-relationship` | contactRelationship CRUD operations |
| `contacts-chunk` | contactsChunk CRUD operations |
| `conversation` | conversation CRUD operations |
| `conversations-chunk` | conversationsChunk CRUD operations |
| `deal-company` | dealCompany CRUD operations |
| `deal-contact` | dealContact CRUD operations |
| `deal-note` | dealNote CRUD operations |
| `deals-chunk` | dealsChunk CRUD operations |
| `email-attachment` | emailAttachment CRUD operations |
| `email-note` | emailNote CRUD operations |
| `email-recipient` | emailRecipient CRUD operations |
| `emails-chunk` | emailsChunk CRUD operations |
| `email-threads-chunk` | emailThreadsChunk CRUD operations |
| `event-image` | eventImage CRUD operations |
| `event-link` | eventLink CRUD operations |
| `event-note` | eventNote CRUD operations |
| `events-chunk` | eventsChunk CRUD operations |
| `event-venue` | eventVenue CRUD operations |
| `venue` | venue CRUD operations |
| `expense-contact` | expenseContact CRUD operations |
| `expenses-chunk` | expensesChunk CRUD operations |
| `goal` | goal CRUD operations |
| `goal-habit` | goalHabit CRUD operations |
| `habit` | habit CRUD operations |
| `goal-project` | goalProject CRUD operations |
| `goals-chunk` | goalsChunk CRUD operations |
| `hiking-trail` | hikingTrail CRUD operations |
| `hiking-trails-chunk` | hikingTrailsChunk CRUD operations |
| `interaction` | interaction CRUD operations |
| `interactions-chunk` | interactionsChunk CRUD operations |
| `memories-chunk` | memoriesChunk CRUD operations |
| `message` | message CRUD operations |
| `messages-chunk` | messagesChunk CRUD operations |
| `notes-chunk` | notesChunk CRUD operations |
| `place` | place CRUD operations |
| `places-chunk` | placesChunk CRUD operations |
| `project-contact` | projectContact CRUD operations |
| `projects-chunk` | projectsChunk CRUD operations |
| `prompts-chunk` | promptsChunk CRUD operations |
| `provider-sync-state` | providerSyncState CRUD operations |
| `raw-contact` | rawContact CRUD operations |
| `raw-contact-email` | rawContactEmail CRUD operations |
| `raw-contact-phone` | rawContactPhone CRUD operations |
| `raw-contact-url` | rawContactUrl CRUD operations |
| `rule` | rule CRUD operations |
| `rules-chunk` | rulesChunk CRUD operations |
| `runtime-artifact` | runtimeArtifact CRUD operations |
| `runtime-config` | runtimeConfig CRUD operations |
| `runtime-event` | runtimeEvent CRUD operations |
| `runtime-log` | runtimeLog CRUD operations |
| `runtime-logs-chunk` | runtimeLogsChunk CRUD operations |
| `runtime-metric` | runtimeMetric CRUD operations |
| `runtime-schedule` | runtimeSchedule CRUD operations |
| `runtime-state` | runtimeState CRUD operations |
| `runtime-state-dependency` | runtimeStateDependency CRUD operations |
| `runtime-states-chunk` | runtimeStatesChunk CRUD operations |
| `skill` | skill CRUD operations |
| `skills-chunk` | skillsChunk CRUD operations |
| `skill-tool` | skillTool CRUD operations |
| `tool-definition` | toolDefinition CRUD operations |
| `tag` | tag CRUD operations |
| `task-contact` | taskContact CRUD operations |
| `task-note` | taskNote CRUD operations |
| `task-project` | taskProject CRUD operations |
| `tasks-chunk` | tasksChunk CRUD operations |
| `thread-participant` | threadParticipant CRUD operations |
| `tool-definitions-chunk` | toolDefinitionsChunk CRUD operations |
| `tool-execution` | toolExecution CRUD operations |
| `touchpoint` | touchpoint CRUD operations |
| `touchpoints-chunk` | touchpointsChunk CRUD operations |
| `trip` | trip CRUD operations |
| `trips-chunk` | tripsChunk CRUD operations |
| `venue-image` | venueImage CRUD operations |
| `venue-link` | venueLink CRUD operations |
| `venues-chunk` | venuesChunk CRUD operations |

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

Configuration is stored at `~/.agentic-db/config/`.

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

Variables are scoped to the active context and stored at `~/.agentic-db/config/`.

## Table Commands

### `agent-collaborator`

CRUD operations for AgentCollaborator records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all agentCollaborator records |
| `get` | Get a agentCollaborator by id |
| `create` | Create a new agentCollaborator |
| `update` | Update an existing agentCollaborator |
| `delete` | Delete a agentCollaborator |

**Fields:**

| Field | Type |
|-------|------|
| `agentId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `agentId`, `entityId`

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
| `name` | String |
| `description` | String |
| `systemPrompt` | String |
| `model` | String |
| `temperature` | BigFloat |
| `status` | String |
| `config` | JSON |
| `tags` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `nameTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `systemPromptTrgmSimilarity` | Float |
| `modelTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `description`, `systemPrompt`, `model`, `temperature`, `status`, `config`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `systemPromptTrgmSimilarity`, `modelTrgmSimilarity`, `statusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `agent-log`

CRUD operations for AgentLog records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all agentLog records |
| `get` | Get a agentLog by id |
| `create` | Create a new agentLog |
| `update` | Update an existing agentLog |
| `delete` | Delete a agentLog |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `agentId` | UUID |
| `level` | String |
| `message` | String |
| `context` | JSON |
| `taskId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `levelTrgmSimilarity` | Float |
| `messageTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `agentId`, `level`, `message`
**Optional create fields (backend defaults):** `context`, `taskId`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `levelTrgmSimilarity`, `messageTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `agent-logs-chunk`

CRUD operations for AgentLogsChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all agentLogsChunk records |
| `get` | Get a agentLogsChunk by id |
| `create` | Create a new agentLogsChunk |
| `update` | Update an existing agentLogsChunk |
| `delete` | Delete a agentLogsChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `agentLogsId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `agentLogsId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `name` | String |
| `content` | String |
| `category` | String |
| `version` | Int |
| `isActive` | Boolean |
| `tags` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `nameTrgmSimilarity` | Float |
| `contentTrgmSimilarity` | Float |
| `categoryTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`, `content`
**Optional create fields (backend defaults):** `category`, `version`, `isActive`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `contentTrgmSimilarity`, `categoryTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `agents-chunk`

CRUD operations for AgentsChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all agentsChunk records |
| `get` | Get a agentsChunk by id |
| `create` | Create a new agentsChunk |
| `update` | Update an existing agentsChunk |
| `delete` | Delete a agentsChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `agentsId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `agentsId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `autonomy-record`

CRUD operations for AutonomyRecord records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all autonomyRecord records |
| `get` | Get a autonomyRecord by id |
| `create` | Create a new autonomyRecord |
| `update` | Update an existing autonomyRecord |
| `delete` | Delete a autonomyRecord |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `title` | String |
| `recordType` | String |
| `content` | String |
| `status` | String |
| `priority` | Int |
| `source` | String |
| `context` | JSON |
| `tags` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `titleTrgmSimilarity` | Float |
| `recordTypeTrgmSimilarity` | Float |
| `contentTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `sourceTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `title`
**Optional create fields (backend defaults):** `recordType`, `content`, `status`, `priority`, `source`, `context`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `recordTypeTrgmSimilarity`, `contentTrgmSimilarity`, `statusTrgmSimilarity`, `sourceTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `autonomy-record-link`

CRUD operations for AutonomyRecordLink records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all autonomyRecordLink records |
| `get` | Get a autonomyRecordLink by id |
| `create` | Create a new autonomyRecordLink |
| `update` | Update an existing autonomyRecordLink |
| `delete` | Delete a autonomyRecordLink |

**Fields:**

| Field | Type |
|-------|------|
| `autonomyRecordId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `autonomyRecordId`, `entityId`

### `autonomy-records-chunk`

CRUD operations for AutonomyRecordsChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all autonomyRecordsChunk records |
| `get` | Get a autonomyRecordsChunk by id |
| `create` | Create a new autonomyRecordsChunk |
| `update` | Update an existing autonomyRecordsChunk |
| `delete` | Delete a autonomyRecordsChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `autonomyRecordsId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `autonomyRecordsId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `calendar-attendee`

CRUD operations for CalendarAttendee records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all calendarAttendee records |
| `get` | Get a calendarAttendee by id |
| `create` | Create a new calendarAttendee |
| `update` | Update an existing calendarAttendee |
| `delete` | Delete a calendarAttendee |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `contactId` | UUID |
| `responseStatus` | String |
| `role` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `calendarEventId` | UUID |

**Required create fields:** `entityId`, `calendarEventId`
**Optional create fields (backend defaults):** `contactId`, `responseStatus`, `role`

### `calendar`

CRUD operations for Calendar records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all calendar records |
| `get` | Get a calendar by id |
| `create` | Create a new calendar |
| `update` | Update an existing calendar |
| `delete` | Delete a calendar |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `providerAccountId` | String |
| `providerCalendarId` | String |
| `name` | String |
| `color` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `providerAccountId`, `providerCalendarId`, `color`

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
| `providerEventId` | String |
| `title` | String |
| `description` | String |
| `startTime` | Datetime |
| `endTime` | Datetime |
| `meetingUrl` | String |
| `organizerContactId` | UUID |
| `tags` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `searchTsv` | FullText |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `calendarId` | UUID |
| `searchTsvRank` | Float |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `providerEventIdTrgmSimilarity` | Float |
| `titleTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `meetingUrlTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `title`, `calendarId`
**Optional create fields (backend defaults):** `providerEventId`, `description`, `startTime`, `endTime`, `meetingUrl`, `organizerContactId`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `providerEventIdTrgmSimilarity`, `titleTrgmSimilarity`, `descriptionTrgmSimilarity`, `meetingUrlTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `mainImageId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `searchTsv` | FullText |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `searchTsvRank` | Float |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
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
| `searchScore` | Float |

**Required create fields:** `entityId`, `firstName`
**Optional create fields (backend defaults):** `lastName`, `email`, `phone`, `headline`, `bio`, `location`, `birthday`, `relationshipType`, `howWeMet`, `twitterHandle`, `linkedinUrl`, `githubUsername`, `instagramHandle`, `website`, `tags`, `mainImageId`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `firstNameTrgmSimilarity`, `lastNameTrgmSimilarity`, `emailTrgmSimilarity`, `phoneTrgmSimilarity`, `headlineTrgmSimilarity`, `bioTrgmSimilarity`, `locationTrgmSimilarity`, `relationshipTypeTrgmSimilarity`, `howWeMetTrgmSimilarity`, `twitterHandleTrgmSimilarity`, `linkedinUrlTrgmSimilarity`, `githubUsernameTrgmSimilarity`, `instagramHandleTrgmSimilarity`, `websiteTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `calendar-event-note`

CRUD operations for CalendarEventNote records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all calendarEventNote records |
| `get` | Get a calendarEventNote by id |
| `create` | Create a new calendarEventNote |
| `update` | Update an existing calendarEventNote |
| `delete` | Delete a calendarEventNote |

**Fields:**

| Field | Type |
|-------|------|
| `calendarEventId` | UUID |
| `noteId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `calendarEventId`, `noteId`, `entityId`

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
| `content` | String |
| `abstract` | String |
| `overview` | String |
| `activeCount` | Int |
| `lastAccessedAt` | Datetime |
| `tags` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `contentBm25Score` | Float |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `abstractTrgmSimilarity` | Float |
| `overviewTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `content`
**Optional create fields (backend defaults):** `abstract`, `overview`, `activeCount`, `lastAccessedAt`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `contentBm25Score`, `embeddingTextBm25Score`, `contentTrgmSimilarity`, `abstractTrgmSimilarity`, `overviewTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `calendar-events-chunk`

CRUD operations for CalendarEventsChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all calendarEventsChunk records |
| `get` | Get a calendarEventsChunk by id |
| `create` | Create a new calendarEventsChunk |
| `update` | Update an existing calendarEventsChunk |
| `delete` | Delete a calendarEventsChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `calendarEventsId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `calendarEventsId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `calendar-event-task`

CRUD operations for CalendarEventTask records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all calendarEventTask records |
| `get` | Get a calendarEventTask by id |
| `create` | Create a new calendarEventTask |
| `update` | Update an existing calendarEventTask |
| `delete` | Delete a calendarEventTask |

**Fields:**

| Field | Type |
|-------|------|
| `calendarEventId` | UUID |
| `taskId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `calendarEventId`, `taskId`, `entityId`

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
| `agentId` | UUID |
| `title` | String |
| `description` | String |
| `status` | String |
| `priority` | Int |
| `result` | String |
| `startedAt` | Datetime |
| `completedAt` | Datetime |
| `meta` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `titleTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `resultTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `title`
**Optional create fields (backend defaults):** `agentId`, `description`, `status`, `priority`, `result`, `startedAt`, `completedAt`, `meta`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `descriptionTrgmSimilarity`, `statusTrgmSimilarity`, `resultTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `codebase-dependency`

CRUD operations for CodebaseDependency records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all codebaseDependency records |
| `get` | Get a codebaseDependency by id |
| `create` | Create a new codebaseDependency |
| `update` | Update an existing codebaseDependency |
| `delete` | Delete a codebaseDependency |

**Fields:**

| Field | Type |
|-------|------|
| `codebasisId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `codebasisId`, `entityId`

### `codebases-chunk`

CRUD operations for CodebasesChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all codebasesChunk records |
| `get` | Get a codebasesChunk by id |
| `create` | Create a new codebasesChunk |
| `update` | Update an existing codebasesChunk |
| `delete` | Delete a codebasesChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `codebasesId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `codebasesId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `codebasis`

CRUD operations for Codebasis records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all codebasis records |
| `get` | Get a codebasis by id |
| `create` | Create a new codebasis |
| `update` | Update an existing codebasis |
| `delete` | Delete a codebasis |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `name` | String |
| `description` | String |
| `repositoryUrl` | String |
| `defaultBranch` | String |
| `language` | String |
| `framework` | String |
| `lastSyncedAt` | Datetime |
| `config` | JSON |
| `tags` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `nameTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `repositoryUrlTrgmSimilarity` | Float |
| `defaultBranchTrgmSimilarity` | Float |
| `languageTrgmSimilarity` | Float |
| `frameworkTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `description`, `repositoryUrl`, `defaultBranch`, `language`, `framework`, `lastSyncedAt`, `config`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `repositoryUrlTrgmSimilarity`, `defaultBranchTrgmSimilarity`, `languageTrgmSimilarity`, `frameworkTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `code-chunk`

CRUD operations for CodeChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all codeChunk records |
| `get` | Get a codeChunk by id |
| `create` | Create a new codeChunk |
| `update` | Update an existing codeChunk |
| `delete` | Delete a codeChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `codebaseId` | UUID |
| `filePath` | String |
| `chunkIndex` | Int |
| `content` | String |
| `language` | String |
| `startLine` | Int |
| `endLine` | Int |
| `symbolName` | String |
| `symbolType` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `codebasisId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `filePathTrgmSimilarity` | Float |
| `contentTrgmSimilarity` | Float |
| `languageTrgmSimilarity` | Float |
| `symbolNameTrgmSimilarity` | Float |
| `symbolTypeTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `codebaseId`, `filePath`, `content`, `codebasisId`
**Optional create fields (backend defaults):** `chunkIndex`, `language`, `startLine`, `endLine`, `symbolName`, `symbolType`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `filePathTrgmSimilarity`, `contentTrgmSimilarity`, `languageTrgmSimilarity`, `symbolNameTrgmSimilarity`, `symbolTypeTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `companies-chunk`

CRUD operations for CompaniesChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all companiesChunk records |
| `get` | Get a companiesChunk by id |
| `create` | Create a new companiesChunk |
| `update` | Update an existing companiesChunk |
| `delete` | Delete a companiesChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `companiesId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `companiesId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `name` | String |
| `domain` | String |
| `industry` | String |
| `description` | String |
| `tags` | String |
| `mainImageId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `searchTsv` | FullText |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `searchTsvRank` | Float |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `nameTrgmSimilarity` | Float |
| `domainTrgmSimilarity` | Float |
| `industryTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `domain`, `industry`, `description`, `tags`, `mainImageId`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `domainTrgmSimilarity`, `industryTrgmSimilarity`, `descriptionTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `name` | String |
| `stage` | String |
| `value` | BigFloat |
| `currency` | String |
| `expectedCloseDate` | Datetime |
| `notesText` | String |
| `tags` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `nameTrgmSimilarity` | Float |
| `stageTrgmSimilarity` | Float |
| `currencyTrgmSimilarity` | Float |
| `notesTextTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `stage`, `value`, `currency`, `expectedCloseDate`, `notesText`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `stageTrgmSimilarity`, `currencyTrgmSimilarity`, `notesTextTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `name` | String |
| `eventType` | String |
| `location` | String |
| `city` | String |
| `startedAt` | Datetime |
| `endedAt` | Datetime |
| `notesText` | String |
| `tags` | String |
| `mainImageId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `searchTsv` | FullText |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `searchTsvRank` | Float |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `nameTrgmSimilarity` | Float |
| `eventTypeTrgmSimilarity` | Float |
| `locationTrgmSimilarity` | Float |
| `cityTrgmSimilarity` | Float |
| `notesTextTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `eventType`, `location`, `city`, `startedAt`, `endedAt`, `notesText`, `tags`, `mainImageId`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `eventTypeTrgmSimilarity`, `locationTrgmSimilarity`, `cityTrgmSimilarity`, `notesTextTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `url` | String |
| `meta` | JSON |
| `altText` | String |
| `caption` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `url`
**Optional create fields (backend defaults):** `meta`, `altText`, `caption`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `title` | String |
| `url` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `companyId` | UUID |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `url`, `companyId`
**Optional create fields (backend defaults):** `title`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `title` | String |
| `content` | String |
| `location` | String |
| `occurredAt` | Datetime |
| `mood` | String |
| `tags` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `agentId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `titleTrgmSimilarity` | Float |
| `contentTrgmSimilarity` | Float |
| `locationTrgmSimilarity` | Float |
| `moodTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `title`
**Optional create fields (backend defaults):** `content`, `location`, `occurredAt`, `mood`, `tags`, `embeddingText`, `embedding`, `embeddingStale`, `agentId`
> **Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `contentTrgmSimilarity`, `locationTrgmSimilarity`, `moodTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `company-memory`

CRUD operations for CompanyMemory records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all companyMemory records |
| `get` | Get a companyMemory by id |
| `create` | Create a new companyMemory |
| `update` | Update an existing companyMemory |
| `delete` | Delete a companyMemory |

**Fields:**

| Field | Type |
|-------|------|
| `companyId` | UUID |
| `memoryId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `companyId`, `memoryId`, `entityId`

### `company-note`

CRUD operations for CompanyNote records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all companyNote records |
| `get` | Get a companyNote by id |
| `create` | Create a new companyNote |
| `update` | Update an existing companyNote |
| `delete` | Delete a companyNote |

**Fields:**

| Field | Type |
|-------|------|
| `companyId` | UUID |
| `noteId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `companyId`, `noteId`, `entityId`

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

### `email`

CRUD operations for Email records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all email records |
| `get` | Get a email by id |
| `create` | Create a new email |
| `update` | Update an existing email |
| `delete` | Delete a email |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `providerMessageId` | String |
| `fromContactId` | UUID |
| `to` | JSON |
| `cc` | JSON |
| `bcc` | JSON |
| `subject` | String |
| `bodyText` | String |
| `bodyHtml` | String |
| `sentAt` | Datetime |
| `tags` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `searchTsv` | FullText |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `emailThreadId` | UUID |

**Required create fields:** `entityId`, `emailThreadId`
**Optional create fields (backend defaults):** `providerMessageId`, `fromContactId`, `to`, `cc`, `bcc`, `subject`, `bodyText`, `bodyHtml`, `sentAt`, `tags`, `embeddingText`, `embedding`, `embeddingStale`

### `email-thread`

CRUD operations for EmailThread records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all emailThread records |
| `get` | Get a emailThread by id |
| `create` | Create a new emailThread |
| `update` | Update an existing emailThread |
| `delete` | Delete a emailThread |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `providerThreadId` | String |
| `subject` | String |
| `lastMessageAt` | Datetime |
| `summary` | String |
| `status` | String |
| `tags` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `searchTsv` | FullText |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `searchTsvRank` | Float |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `providerThreadIdTrgmSimilarity` | Float |
| `subjectTrgmSimilarity` | Float |
| `summaryTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`
**Optional create fields (backend defaults):** `providerThreadId`, `subject`, `lastMessageAt`, `summary`, `status`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `providerThreadIdTrgmSimilarity`, `subjectTrgmSimilarity`, `summaryTrgmSimilarity`, `statusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `description` | String |
| `amount` | BigFloat |
| `currency` | String |
| `category` | String |
| `occurredAt` | Datetime |
| `vendor` | String |
| `notes` | String |
| `tags` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `tripId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `descriptionTrgmSimilarity` | Float |
| `currencyTrgmSimilarity` | Float |
| `categoryTrgmSimilarity` | Float |
| `vendorTrgmSimilarity` | Float |
| `notesTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `description`, `amount`
**Optional create fields (backend defaults):** `currency`, `category`, `occurredAt`, `vendor`, `notes`, `tags`, `embeddingText`, `embedding`, `embeddingStale`, `tripId`
> **Unified Search API fields:** `embeddingTextBm25Score`, `descriptionTrgmSimilarity`, `currencyTrgmSimilarity`, `categoryTrgmSimilarity`, `vendorTrgmSimilarity`, `notesTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `title` | String |
| `url` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `contactId` | UUID |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `url`, `contactId`
**Optional create fields (backend defaults):** `title`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `contact-memory`

CRUD operations for ContactMemory records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all contactMemory records |
| `get` | Get a contactMemory by id |
| `create` | Create a new contactMemory |
| `update` | Update an existing contactMemory |
| `delete` | Delete a contactMemory |

**Fields:**

| Field | Type |
|-------|------|
| `contactId` | UUID |
| `memoryId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `contactId`, `memoryId`, `entityId`

### `contact-note`

CRUD operations for ContactNote records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all contactNote records |
| `get` | Get a contactNote by id |
| `create` | Create a new contactNote |
| `update` | Update an existing contactNote |
| `delete` | Delete a contactNote |

**Fields:**

| Field | Type |
|-------|------|
| `contactId` | UUID |
| `noteId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `contactId`, `noteId`, `entityId`

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
| `name` | String |
| `description` | String |
| `status` | String |
| `projectType` | String |
| `priority` | Int |
| `startedAt` | Datetime |
| `targetDate` | Datetime |
| `completedAt` | Datetime |
| `config` | JSON |
| `tags` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `nameTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `projectTypeTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `description`, `status`, `projectType`, `priority`, `startedAt`, `targetDate`, `completedAt`, `config`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `statusTrgmSimilarity`, `projectTypeTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `contact-relationship`

CRUD operations for ContactRelationship records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all contactRelationship records |
| `get` | Get a contactRelationship by id |
| `create` | Create a new contactRelationship |
| `update` | Update an existing contactRelationship |
| `delete` | Delete a contactRelationship |

**Fields:**

| Field | Type |
|-------|------|
| `contactId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `contactId`, `entityId`

### `contacts-chunk`

CRUD operations for ContactsChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all contactsChunk records |
| `get` | Get a contactsChunk by id |
| `create` | Create a new contactsChunk |
| `update` | Update an existing contactsChunk |
| `delete` | Delete a contactsChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `contactsId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `contactsId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `conversation`

CRUD operations for Conversation records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all conversation records |
| `get` | Get a conversation by id |
| `create` | Create a new conversation |
| `update` | Update an existing conversation |
| `delete` | Delete a conversation |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `title` | String |
| `agentId` | UUID |
| `status` | String |
| `meta` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `titleTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `title`
**Optional create fields (backend defaults):** `agentId`, `status`, `meta`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `statusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `conversations-chunk`

CRUD operations for ConversationsChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all conversationsChunk records |
| `get` | Get a conversationsChunk by id |
| `create` | Create a new conversationsChunk |
| `update` | Update an existing conversationsChunk |
| `delete` | Delete a conversationsChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `conversationsId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `conversationsId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `deal-company`

CRUD operations for DealCompany records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all dealCompany records |
| `get` | Get a dealCompany by id |
| `create` | Create a new dealCompany |
| `update` | Update an existing dealCompany |
| `delete` | Delete a dealCompany |

**Fields:**

| Field | Type |
|-------|------|
| `dealId` | UUID |
| `companyId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `dealId`, `companyId`, `entityId`

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

### `deal-note`

CRUD operations for DealNote records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all dealNote records |
| `get` | Get a dealNote by id |
| `create` | Create a new dealNote |
| `update` | Update an existing dealNote |
| `delete` | Delete a dealNote |

**Fields:**

| Field | Type |
|-------|------|
| `dealId` | UUID |
| `noteId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `dealId`, `noteId`, `entityId`

### `deals-chunk`

CRUD operations for DealsChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all dealsChunk records |
| `get` | Get a dealsChunk by id |
| `create` | Create a new dealsChunk |
| `update` | Update an existing dealsChunk |
| `delete` | Delete a dealsChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `dealsId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `dealsId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `email-attachment`

CRUD operations for EmailAttachment records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all emailAttachment records |
| `get` | Get a emailAttachment by id |
| `create` | Create a new emailAttachment |
| `update` | Update an existing emailAttachment |
| `delete` | Delete a emailAttachment |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `filename` | String |
| `contentType` | String |
| `sizeBytes` | Int |
| `storageUrl` | String |
| `providerAttachmentId` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `emailId` | UUID |

**Required create fields:** `entityId`, `filename`, `emailId`
**Optional create fields (backend defaults):** `contentType`, `sizeBytes`, `storageUrl`, `providerAttachmentId`

### `email-note`

CRUD operations for EmailNote records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all emailNote records |
| `get` | Get a emailNote by id |
| `create` | Create a new emailNote |
| `update` | Update an existing emailNote |
| `delete` | Delete a emailNote |

**Fields:**

| Field | Type |
|-------|------|
| `emailId` | UUID |
| `noteId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `emailId`, `noteId`, `entityId`

### `email-recipient`

CRUD operations for EmailRecipient records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all emailRecipient records |
| `get` | Get a emailRecipient by id |
| `create` | Create a new emailRecipient |
| `update` | Update an existing emailRecipient |
| `delete` | Delete a emailRecipient |

**Fields:**

| Field | Type |
|-------|------|
| `emailId` | UUID |
| `contactId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `emailId`, `contactId`, `entityId`

### `emails-chunk`

CRUD operations for EmailsChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all emailsChunk records |
| `get` | Get a emailsChunk by id |
| `create` | Create a new emailsChunk |
| `update` | Update an existing emailsChunk |
| `delete` | Delete a emailsChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `emailsId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `emailsId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `email-threads-chunk`

CRUD operations for EmailThreadsChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all emailThreadsChunk records |
| `get` | Get a emailThreadsChunk by id |
| `create` | Create a new emailThreadsChunk |
| `update` | Update an existing emailThreadsChunk |
| `delete` | Delete a emailThreadsChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `emailThreadsId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `emailThreadsId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `title` | String |
| `url` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `eventId` | UUID |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `url`, `eventId`
**Optional create fields (backend defaults):** `title`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `event-note`

CRUD operations for EventNote records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all eventNote records |
| `get` | Get a eventNote by id |
| `create` | Create a new eventNote |
| `update` | Update an existing eventNote |
| `delete` | Delete a eventNote |

**Fields:**

| Field | Type |
|-------|------|
| `eventId` | UUID |
| `noteId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `eventId`, `noteId`, `entityId`

### `events-chunk`

CRUD operations for EventsChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all eventsChunk records |
| `get` | Get a eventsChunk by id |
| `create` | Create a new eventsChunk |
| `update` | Update an existing eventsChunk |
| `delete` | Delete a eventsChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `eventsId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `eventsId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `mainImageId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `searchTsv` | FullText |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `searchTsvRank` | Float |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
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
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `address`, `neighborhood`, `city`, `category`, `status`, `googlePlaceId`, `rating`, `priceLevel`, `isFavorite`, `notes`, `tags`, `mainImageId`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `addressTrgmSimilarity`, `neighborhoodTrgmSimilarity`, `cityTrgmSimilarity`, `categoryTrgmSimilarity`, `statusTrgmSimilarity`, `googlePlaceIdTrgmSimilarity`, `priceLevelTrgmSimilarity`, `notesTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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

### `expenses-chunk`

CRUD operations for ExpensesChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all expensesChunk records |
| `get` | Get a expensesChunk by id |
| `create` | Create a new expensesChunk |
| `update` | Update an existing expensesChunk |
| `delete` | Delete a expensesChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `expensesId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `expensesId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `title` | String |
| `description` | String |
| `status` | String |
| `targetDate` | Datetime |
| `progress` | BigFloat |
| `tags` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `titleTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `title`
**Optional create fields (backend defaults):** `description`, `status`, `targetDate`, `progress`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `descriptionTrgmSimilarity`, `statusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `name` | String |
| `frequency` | String |
| `streak` | Int |
| `lastCompletedAt` | Datetime |
| `tags` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `frequency`, `streak`, `lastCompletedAt`, `tags`

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

### `goals-chunk`

CRUD operations for GoalsChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all goalsChunk records |
| `get` | Get a goalsChunk by id |
| `create` | Create a new goalsChunk |
| `update` | Update an existing goalsChunk |
| `delete` | Delete a goalsChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `goalsId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `goalsId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `hiking-trail`

CRUD operations for HikingTrail records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all hikingTrail records |
| `get` | Get a hikingTrail by id |
| `create` | Create a new hikingTrail |
| `update` | Update an existing hikingTrail |
| `delete` | Delete a hikingTrail |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `name` | String |
| `location` | String |
| `description` | String |
| `difficulty` | String |
| `distanceKm` | BigFloat |
| `elevationGainm` | BigFloat |
| `rating` | BigFloat |
| `tags` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `nameTrgmSimilarity` | Float |
| `locationTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `difficultyTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `location`, `description`, `difficulty`, `distanceKm`, `elevationGainm`, `rating`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `locationTrgmSimilarity`, `descriptionTrgmSimilarity`, `difficultyTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `hiking-trails-chunk`

CRUD operations for HikingTrailsChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all hikingTrailsChunk records |
| `get` | Get a hikingTrailsChunk by id |
| `create` | Create a new hikingTrailsChunk |
| `update` | Update an existing hikingTrailsChunk |
| `delete` | Delete a hikingTrailsChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `hikingTrailsId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `hikingTrailsId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `contactId` | UUID |
| `type` | String |
| `occurredAt` | Datetime |
| `summary` | String |
| `sentiment` | String |
| `tags` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `typeTrgmSimilarity` | Float |
| `summaryTrgmSimilarity` | Float |
| `sentimentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `contactId`, `type`, `occurredAt`
**Optional create fields (backend defaults):** `summary`, `sentiment`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `typeTrgmSimilarity`, `summaryTrgmSimilarity`, `sentimentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `interactions-chunk`

CRUD operations for InteractionsChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all interactionsChunk records |
| `get` | Get a interactionsChunk by id |
| `create` | Create a new interactionsChunk |
| `update` | Update an existing interactionsChunk |
| `delete` | Delete a interactionsChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `interactionsId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `interactionsId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `memories-chunk`

CRUD operations for MemoriesChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all memoriesChunk records |
| `get` | Get a memoriesChunk by id |
| `create` | Create a new memoriesChunk |
| `update` | Update an existing memoriesChunk |
| `delete` | Delete a memoriesChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `memoriesId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `memoriesId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `conversationId` | UUID |
| `role` | String |
| `content` | String |
| `tokenCount` | Int |
| `meta` | JSON |
| `toolCalls` | JSON |
| `toolResults` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `roleTrgmSimilarity` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `conversationId`, `role`, `content`
**Optional create fields (backend defaults):** `tokenCount`, `meta`, `toolCalls`, `toolResults`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `roleTrgmSimilarity`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `messages-chunk`

CRUD operations for MessagesChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all messagesChunk records |
| `get` | Get a messagesChunk by id |
| `create` | Create a new messagesChunk |
| `update` | Update an existing messagesChunk |
| `delete` | Delete a messagesChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `messagesId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `messagesId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `notes-chunk`

CRUD operations for NotesChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all notesChunk records |
| `get` | Get a notesChunk by id |
| `create` | Create a new notesChunk |
| `update` | Update an existing notesChunk |
| `delete` | Delete a notesChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `notesId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `notesId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `place`

CRUD operations for Place records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all place records |
| `get` | Get a place by id |
| `create` | Create a new place |
| `update` | Update an existing place |
| `delete` | Delete a place |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `name` | String |
| `address` | String |
| `description` | String |
| `category` | String |
| `rating` | BigFloat |
| `tags` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `nameTrgmSimilarity` | Float |
| `addressTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `categoryTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `address`, `description`, `category`, `rating`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `addressTrgmSimilarity`, `descriptionTrgmSimilarity`, `categoryTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `places-chunk`

CRUD operations for PlacesChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all placesChunk records |
| `get` | Get a placesChunk by id |
| `create` | Create a new placesChunk |
| `update` | Update an existing placesChunk |
| `delete` | Delete a placesChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `placesId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `placesId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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

### `projects-chunk`

CRUD operations for ProjectsChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all projectsChunk records |
| `get` | Get a projectsChunk by id |
| `create` | Create a new projectsChunk |
| `update` | Update an existing projectsChunk |
| `delete` | Delete a projectsChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `projectsId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `projectsId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `prompts-chunk`

CRUD operations for PromptsChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all promptsChunk records |
| `get` | Get a promptsChunk by id |
| `create` | Create a new promptsChunk |
| `update` | Update an existing promptsChunk |
| `delete` | Delete a promptsChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `promptsId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `promptsId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `provider-sync-state`

CRUD operations for ProviderSyncState records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all providerSyncState records |
| `get` | Get a providerSyncState by id |
| `create` | Create a new providerSyncState |
| `update` | Update an existing providerSyncState |
| `delete` | Delete a providerSyncState |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `provider` | String |
| `resourceType` | String |
| `syncCursor` | String |
| `historyId` | String |
| `lastSyncAt` | Datetime |
| `status` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |

**Required create fields:** `entityId`, `provider`, `resourceType`
**Optional create fields (backend defaults):** `syncCursor`, `historyId`, `lastSyncAt`, `status`

### `raw-contact`

CRUD operations for RawContact records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all rawContact records |
| `get` | Get a rawContact by id |
| `create` | Create a new rawContact |
| `update` | Update an existing rawContact |
| `delete` | Delete a rawContact |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `externalId` | String |
| `source` | String |
| `firstName` | String |
| `lastName` | String |
| `fullName` | String |
| `headline` | String |
| `bio` | String |
| `location` | String |
| `company` | String |
| `jobTitle` | String |
| `rawData` | JSON |
| `confidence` | BigFloat |
| `ingestedAt` | Datetime |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |

**Required create fields:** `entityId`
**Optional create fields (backend defaults):** `externalId`, `source`, `firstName`, `lastName`, `fullName`, `headline`, `bio`, `location`, `company`, `jobTitle`, `rawData`, `confidence`, `ingestedAt`

### `raw-contact-email`

CRUD operations for RawContactEmail records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all rawContactEmail records |
| `get` | Get a rawContactEmail by id |
| `create` | Create a new rawContactEmail |
| `update` | Update an existing rawContactEmail |
| `delete` | Delete a rawContactEmail |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `email` | String |
| `emailType` | String |
| `isPrimary` | Boolean |
| `source` | String |
| `confidence` | BigFloat |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `rawContactId` | UUID |

**Required create fields:** `entityId`, `email`, `rawContactId`
**Optional create fields (backend defaults):** `emailType`, `isPrimary`, `source`, `confidence`

### `raw-contact-phone`

CRUD operations for RawContactPhone records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all rawContactPhone records |
| `get` | Get a rawContactPhone by id |
| `create` | Create a new rawContactPhone |
| `update` | Update an existing rawContactPhone |
| `delete` | Delete a rawContactPhone |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `phone` | String |
| `phoneType` | String |
| `isPrimary` | Boolean |
| `source` | String |
| `confidence` | BigFloat |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `rawContactId` | UUID |

**Required create fields:** `entityId`, `phone`, `rawContactId`
**Optional create fields (backend defaults):** `phoneType`, `isPrimary`, `source`, `confidence`

### `raw-contact-url`

CRUD operations for RawContactUrl records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all rawContactUrl records |
| `get` | Get a rawContactUrl by id |
| `create` | Create a new rawContactUrl |
| `update` | Update an existing rawContactUrl |
| `delete` | Delete a rawContactUrl |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `url` | String |
| `urlType` | String |
| `source` | String |
| `confidence` | BigFloat |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `rawContactId` | UUID |

**Required create fields:** `entityId`, `url`, `rawContactId`
**Optional create fields (backend defaults):** `urlType`, `source`, `confidence`

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
| `name` | String |
| `description` | String |
| `triggerType` | String |
| `triggerConfig` | JSON |
| `actionType` | String |
| `actionConfig` | JSON |
| `isActive` | Boolean |
| `priority` | Int |
| `triggerConcept` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `triggerConceptEmbedding` | Vector |
| `agentId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `triggerConceptEmbeddingVectorDistance` | Float |
| `nameTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `triggerTypeTrgmSimilarity` | Float |
| `actionTypeTrgmSimilarity` | Float |
| `triggerConceptTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`, `agentId`
**Optional create fields (backend defaults):** `description`, `triggerType`, `triggerConfig`, `actionType`, `actionConfig`, `isActive`, `priority`, `triggerConcept`, `embeddingText`, `embedding`, `embeddingStale`, `triggerConceptEmbedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `triggerTypeTrgmSimilarity`, `actionTypeTrgmSimilarity`, `triggerConceptTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `rules-chunk`

CRUD operations for RulesChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all rulesChunk records |
| `get` | Get a rulesChunk by id |
| `create` | Create a new rulesChunk |
| `update` | Update an existing rulesChunk |
| `delete` | Delete a rulesChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `rulesId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `rulesId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `runtime-artifact`

CRUD operations for RuntimeArtifact records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all runtimeArtifact records |
| `get` | Get a runtimeArtifact by id |
| `create` | Create a new runtimeArtifact |
| `update` | Update an existing runtimeArtifact |
| `delete` | Delete a runtimeArtifact |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `runtimeStateId` | UUID |
| `name` | String |
| `artifactType` | String |
| `content` | String |
| `meta` | JSON |
| `sizeBytes` | Int |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |

**Required create fields:** `entityId`, `runtimeStateId`, `name`
**Optional create fields (backend defaults):** `artifactType`, `content`, `meta`, `sizeBytes`

### `runtime-config`

CRUD operations for RuntimeConfig records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all runtimeConfig records |
| `get` | Get a runtimeConfig by id |
| `create` | Create a new runtimeConfig |
| `update` | Update an existing runtimeConfig |
| `delete` | Delete a runtimeConfig |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `key` | String |
| `value` | JSON |
| `description` | String |
| `isSecret` | Boolean |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |

**Required create fields:** `entityId`, `key`
**Optional create fields (backend defaults):** `value`, `description`, `isSecret`

### `runtime-event`

CRUD operations for RuntimeEvent records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all runtimeEvent records |
| `get` | Get a runtimeEvent by id |
| `create` | Create a new runtimeEvent |
| `update` | Update an existing runtimeEvent |
| `delete` | Delete a runtimeEvent |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `eventType` | String |
| `payload` | JSON |
| `source` | String |
| `processedAt` | Datetime |
| `status` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |

**Required create fields:** `entityId`, `eventType`, `payload`
**Optional create fields (backend defaults):** `source`, `processedAt`, `status`

### `runtime-log`

CRUD operations for RuntimeLog records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all runtimeLog records |
| `get` | Get a runtimeLog by id |
| `create` | Create a new runtimeLog |
| `update` | Update an existing runtimeLog |
| `delete` | Delete a runtimeLog |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `runtimeStateId` | UUID |
| `level` | String |
| `message` | String |
| `context` | JSON |
| `stepIndex` | Int |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `levelTrgmSimilarity` | Float |
| `messageTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `runtimeStateId`, `level`, `message`
**Optional create fields (backend defaults):** `context`, `stepIndex`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `levelTrgmSimilarity`, `messageTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `runtime-logs-chunk`

CRUD operations for RuntimeLogsChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all runtimeLogsChunk records |
| `get` | Get a runtimeLogsChunk by id |
| `create` | Create a new runtimeLogsChunk |
| `update` | Update an existing runtimeLogsChunk |
| `delete` | Delete a runtimeLogsChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `runtimeLogsId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `runtimeLogsId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `runtime-metric`

CRUD operations for RuntimeMetric records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all runtimeMetric records |
| `get` | Get a runtimeMetric by id |
| `create` | Create a new runtimeMetric |
| `update` | Update an existing runtimeMetric |
| `delete` | Delete a runtimeMetric |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `runtimeStateId` | UUID |
| `metricName` | String |
| `metricValue` | BigFloat |
| `unit` | String |
| `meta` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |

**Required create fields:** `entityId`, `runtimeStateId`, `metricName`, `metricValue`
**Optional create fields (backend defaults):** `unit`, `meta`

### `runtime-schedule`

CRUD operations for RuntimeSchedule records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all runtimeSchedule records |
| `get` | Get a runtimeSchedule by id |
| `create` | Create a new runtimeSchedule |
| `update` | Update an existing runtimeSchedule |
| `delete` | Delete a runtimeSchedule |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `name` | String |
| `cronExpression` | String |
| `nextRunAt` | Datetime |
| `lastRunAt` | Datetime |
| `isActive` | Boolean |
| `config` | JSON |
| `timezone` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `cronExpression`, `nextRunAt`, `lastRunAt`, `isActive`, `config`, `timezone`

### `runtime-state`

CRUD operations for RuntimeState records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all runtimeState records |
| `get` | Get a runtimeState by id |
| `create` | Create a new runtimeState |
| `update` | Update an existing runtimeState |
| `delete` | Delete a runtimeState |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `name` | String |
| `stateType` | String |
| `status` | String |
| `data` | JSON |
| `parentId` | UUID |
| `startedAt` | Datetime |
| `endedAt` | Datetime |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `nameTrgmSimilarity` | Float |
| `stateTypeTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `stateType`, `status`, `data`, `parentId`, `startedAt`, `endedAt`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `stateTypeTrgmSimilarity`, `statusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `runtime-state-dependency`

CRUD operations for RuntimeStateDependency records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all runtimeStateDependency records |
| `get` | Get a runtimeStateDependency by id |
| `create` | Create a new runtimeStateDependency |
| `update` | Update an existing runtimeStateDependency |
| `delete` | Delete a runtimeStateDependency |

**Fields:**

| Field | Type |
|-------|------|
| `runtimeStateId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `runtimeStateId`, `entityId`

### `runtime-states-chunk`

CRUD operations for RuntimeStatesChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all runtimeStatesChunk records |
| `get` | Get a runtimeStatesChunk by id |
| `create` | Create a new runtimeStatesChunk |
| `update` | Update an existing runtimeStatesChunk |
| `delete` | Delete a runtimeStatesChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `runtimeStatesId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `runtimeStatesId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `name` | String |
| `description` | String |
| `category` | String |
| `implementation` | String |
| `config` | JSON |
| `isActive` | Boolean |
| `intentTrigger` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `intentTriggerEmbedding` | Vector |
| `agentId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `intentTriggerEmbeddingVectorDistance` | Float |
| `nameTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `categoryTrgmSimilarity` | Float |
| `implementationTrgmSimilarity` | Float |
| `intentTriggerTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`, `agentId`
**Optional create fields (backend defaults):** `description`, `category`, `implementation`, `config`, `isActive`, `intentTrigger`, `embeddingText`, `embedding`, `embeddingStale`, `intentTriggerEmbedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `categoryTrgmSimilarity`, `implementationTrgmSimilarity`, `intentTriggerTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `skills-chunk`

CRUD operations for SkillsChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all skillsChunk records |
| `get` | Get a skillsChunk by id |
| `create` | Create a new skillsChunk |
| `update` | Update an existing skillsChunk |
| `delete` | Delete a skillsChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `skillsId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `skillsId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `skill-tool`

CRUD operations for SkillTool records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all skillTool records |
| `get` | Get a skillTool by id |
| `create` | Create a new skillTool |
| `update` | Update an existing skillTool |
| `delete` | Delete a skillTool |

**Fields:**

| Field | Type |
|-------|------|
| `skillId` | UUID |
| `toolDefinitionId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `skillId`, `toolDefinitionId`, `entityId`

### `tool-definition`

CRUD operations for ToolDefinition records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all toolDefinition records |
| `get` | Get a toolDefinition by id |
| `create` | Create a new toolDefinition |
| `update` | Update an existing toolDefinition |
| `delete` | Delete a toolDefinition |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `name` | String |
| `description` | String |
| `toolType` | String |
| `schema` | JSON |
| `config` | JSON |
| `isActive` | Boolean |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `nameTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `toolTypeTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `description`, `toolType`, `schema`, `config`, `isActive`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `toolTypeTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `name` | String |
| `color` | String |
| `category` | String |
| `usageCount` | Int |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `color`, `category`, `usageCount`

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

### `task-note`

CRUD operations for TaskNote records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all taskNote records |
| `get` | Get a taskNote by id |
| `create` | Create a new taskNote |
| `update` | Update an existing taskNote |
| `delete` | Delete a taskNote |

**Fields:**

| Field | Type |
|-------|------|
| `taskId` | UUID |
| `noteId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `taskId`, `noteId`, `entityId`

### `task-project`

CRUD operations for TaskProject records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all taskProject records |
| `get` | Get a taskProject by id |
| `create` | Create a new taskProject |
| `update` | Update an existing taskProject |
| `delete` | Delete a taskProject |

**Fields:**

| Field | Type |
|-------|------|
| `taskId` | UUID |
| `projectId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `taskId`, `projectId`, `entityId`

### `tasks-chunk`

CRUD operations for TasksChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all tasksChunk records |
| `get` | Get a tasksChunk by id |
| `create` | Create a new tasksChunk |
| `update` | Update an existing tasksChunk |
| `delete` | Delete a tasksChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `tasksId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `tasksId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `thread-participant`

CRUD operations for ThreadParticipant records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all threadParticipant records |
| `get` | Get a threadParticipant by id |
| `create` | Create a new threadParticipant |
| `update` | Update an existing threadParticipant |
| `delete` | Delete a threadParticipant |

**Fields:**

| Field | Type |
|-------|------|
| `emailThreadId` | UUID |
| `contactId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `emailThreadId`, `contactId`, `entityId`

### `tool-definitions-chunk`

CRUD operations for ToolDefinitionsChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all toolDefinitionsChunk records |
| `get` | Get a toolDefinitionsChunk by id |
| `create` | Create a new toolDefinitionsChunk |
| `update` | Update an existing toolDefinitionsChunk |
| `delete` | Delete a toolDefinitionsChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `toolDefinitionsId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `toolDefinitionsId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `tool-execution`

CRUD operations for ToolExecution records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all toolExecution records |
| `get` | Get a toolExecution by id |
| `create` | Create a new toolExecution |
| `update` | Update an existing toolExecution |
| `delete` | Delete a toolExecution |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `toolDefinitionId` | UUID |
| `messageId` | UUID |
| `input` | JSON |
| `output` | JSON |
| `status` | String |
| `startedAt` | Datetime |
| `completedAt` | Datetime |
| `error` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |

**Required create fields:** `entityId`, `toolDefinitionId`
**Optional create fields (backend defaults):** `messageId`, `input`, `output`, `status`, `startedAt`, `completedAt`, `error`

### `touchpoint`

CRUD operations for Touchpoint records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all touchpoint records |
| `get` | Get a touchpoint by id |
| `create` | Create a new touchpoint |
| `update` | Update an existing touchpoint |
| `delete` | Delete a touchpoint |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `contactId` | UUID |
| `touchpointType` | String |
| `occurredAt` | Datetime |
| `subject` | String |
| `summary` | String |
| `sentiment` | String |
| `direction` | String |
| `channel` | String |
| `dealId` | UUID |
| `companyId` | UUID |
| `eventId` | UUID |
| `meta` | JSON |
| `tags` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `touchpointTypeTrgmSimilarity` | Float |
| `subjectTrgmSimilarity` | Float |
| `summaryTrgmSimilarity` | Float |
| `sentimentTrgmSimilarity` | Float |
| `directionTrgmSimilarity` | Float |
| `channelTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `contactId`, `touchpointType`, `occurredAt`
**Optional create fields (backend defaults):** `subject`, `summary`, `sentiment`, `direction`, `channel`, `dealId`, `companyId`, `eventId`, `meta`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `touchpointTypeTrgmSimilarity`, `subjectTrgmSimilarity`, `summaryTrgmSimilarity`, `sentimentTrgmSimilarity`, `directionTrgmSimilarity`, `channelTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `touchpoints-chunk`

CRUD operations for TouchpointsChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all touchpointsChunk records |
| `get` | Get a touchpointsChunk by id |
| `create` | Create a new touchpointsChunk |
| `update` | Update an existing touchpointsChunk |
| `delete` | Delete a touchpointsChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `touchpointsId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `touchpointsId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `name` | String |
| `destination` | String |
| `description` | String |
| `startDate` | Datetime |
| `endDate` | Datetime |
| `tags` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `nameTrgmSimilarity` | Float |
| `destinationTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `destination`, `description`, `startDate`, `endDate`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `destinationTrgmSimilarity`, `descriptionTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `trips-chunk`

CRUD operations for TripsChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all tripsChunk records |
| `get` | Get a tripsChunk by id |
| `create` | Create a new tripsChunk |
| `update` | Update an existing tripsChunk |
| `delete` | Delete a tripsChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `tripsId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `tripsId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `title` | String |
| `url` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `venueId` | UUID |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `url`, `venueId`
**Optional create fields (backend defaults):** `title`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `venues-chunk`

CRUD operations for VenuesChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all venuesChunk records |
| `get` | Get a venuesChunk by id |
| `create` | Create a new venuesChunk |
| `update` | Update an existing venuesChunk |
| `delete` | Delete a venuesChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `venuesId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `venuesId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


## Output

All commands output JSON to stdout. Pipe to `jq` for formatting:

```bash
agentic-db car list | jq '.[]'
agentic-db car get --id <uuid> | jq '.'
```

## Non-Interactive Mode

Use `--no-tty` to skip all interactive prompts (useful for scripts and CI):

```bash
agentic-db --no-tty car create --name "Sedan" --year 2024
```

---

Built by the [Constructive](https://constructive.io) team.

## Disclaimer

AS DESCRIBED IN THE LICENSES, THE SOFTWARE IS PROVIDED "AS IS", AT YOUR OWN RISK, AND WITHOUT WARRANTIES OF ANY KIND.

No developer or entity involved in creating this software will be liable for any claims or damages whatsoever associated with your use, inability to use, or your interaction with other users of the code, including any direct, indirect, incidental, special, exemplary, punitive or consequential damages, or loss of profits, cryptocurrencies, tokens, or anything else of value.
