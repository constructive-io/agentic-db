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
| `activity-log-chunk` | activityLogChunk CRUD operations |
| `activity-log` | activityLog CRUD operations |
| `agent-chunk` | agentChunk CRUD operations |
| `agent` | agent CRUD operations |
| `agent-prompt` | agentPrompt CRUD operations |
| `prompt` | prompt CRUD operations |
| `agent-rule` | agentRule CRUD operations |
| `rule` | rule CRUD operations |
| `agent-skill` | agentSkill CRUD operations |
| `skill` | skill CRUD operations |
| `agent-spawn` | agentSpawn CRUD operations |
| `agent-tool` | agentTool CRUD operations |
| `tool` | tool CRUD operations |
| `billing-subscription` | billingSubscription CRUD operations |
| `blueprint-chunk` | blueprintChunk CRUD operations |
| `blueprint` | blueprint CRUD operations |
| `calendar-account` | calendarAccount CRUD operations |
| `calendar-event-chunk` | calendarEventChunk CRUD operations |
| `calendar-event` | calendarEvent CRUD operations |
| `calendar-event-contact` | calendarEventContact CRUD operations |
| `contact` | contact CRUD operations |
| `chat-chunk` | chatChunk CRUD operations |
| `chat` | chat CRUD operations |
| `chat-message-chunk` | chatMessageChunk CRUD operations |
| `chat-message` | chatMessage CRUD operations |
| `chunk` | chunk CRUD operations |
| `company-chunk` | companyChunk CRUD operations |
| `company` | company CRUD operations |
| `company-event` | companyEvent CRUD operations |
| `event` | event CRUD operations |
| `company-image` | companyImage CRUD operations |
| `image` | image CRUD operations |
| `company-link` | companyLink CRUD operations |
| `memory` | memory CRUD operations |
| `company-memory` | companyMemory CRUD operations |
| `company-note` | companyNote CRUD operations |
| `note` | note CRUD operations |
| `contact-chunk` | contactChunk CRUD operations |
| `contact-company` | contactCompany CRUD operations |
| `deal` | deal CRUD operations |
| `contact-event` | contactEvent CRUD operations |
| `expense` | expense CRUD operations |
| `contact-image` | contactImage CRUD operations |
| `contact-link` | contactLink CRUD operations |
| `contact-memory` | contactMemory CRUD operations |
| `contact-note` | contactNote CRUD operations |
| `project` | project CRUD operations |
| `task` | task CRUD operations |
| `deal-chunk` | dealChunk CRUD operations |
| `deal-contact` | dealContact CRUD operations |
| `deal-note` | dealNote CRUD operations |
| `document-chunk` | documentChunk CRUD operations |
| `document` | document CRUD operations |
| `email-account` | emailAccount CRUD operations |
| `event-chunk` | eventChunk CRUD operations |
| `event-image` | eventImage CRUD operations |
| `event-link` | eventLink CRUD operations |
| `event-note` | eventNote CRUD operations |
| `event-venue` | eventVenue CRUD operations |
| `venue` | venue CRUD operations |
| `execution-log` | executionLog CRUD operations |
| `expense-contact` | expenseContact CRUD operations |
| `file` | file CRUD operations |
| `goal-chunk` | goalChunk CRUD operations |
| `goal` | goal CRUD operations |
| `goal-habit` | goalHabit CRUD operations |
| `habit` | habit CRUD operations |
| `goal-project` | goalProject CRUD operations |
| `habit-log` | habitLog CRUD operations |
| `idea-chunk` | ideaChunk CRUD operations |
| `idea` | idea CRUD operations |
| `integration` | integration CRUD operations |
| `interaction-chunk` | interactionChunk CRUD operations |
| `interaction` | interaction CRUD operations |
| `list-chunk` | listChunk CRUD operations |
| `list` | list CRUD operations |
| `memory-chunk` | memoryChunk CRUD operations |
| `message-chunk` | messageChunk CRUD operations |
| `message` | message CRUD operations |
| `milestone` | milestone CRUD operations |
| `note-chunk` | noteChunk CRUD operations |
| `process` | process CRUD operations |
| `project-chunk` | projectChunk CRUD operations |
| `project-contact` | projectContact CRUD operations |
| `prompt-chunk` | promptChunk CRUD operations |
| `recipe-chunk` | recipeChunk CRUD operations |
| `recipe` | recipe CRUD operations |
| `reminder-chunk` | reminderChunk CRUD operations |
| `reminder` | reminder CRUD operations |
| `repository-chunk` | repositoryChunk CRUD operations |
| `repository` | repository CRUD operations |
| `rule-chunk` | ruleChunk CRUD operations |
| `scheduled-job` | scheduledJob CRUD operations |
| `session-archive-chunk` | sessionArchiveChunk CRUD operations |
| `session-archive` | sessionArchive CRUD operations |
| `session-chunk` | sessionChunk CRUD operations |
| `session` | session CRUD operations |
| `skill-chunk` | skillChunk CRUD operations |
| `skill-execution` | skillExecution CRUD operations |
| `tag` | tag CRUD operations |
| `task-chunk` | taskChunk CRUD operations |
| `task-contact` | taskContact CRUD operations |
| `task-note` | taskNote CRUD operations |
| `template-chunk` | templateChunk CRUD operations |
| `template` | template CRUD operations |
| `thread-chunk` | threadChunk CRUD operations |
| `thread` | thread CRUD operations |
| `tool-chunk` | toolChunk CRUD operations |
| `trip-chunk` | tripChunk CRUD operations |
| `trip` | trip CRUD operations |
| `user-setting` | userSetting CRUD operations |
| `venue-chunk` | venueChunk CRUD operations |
| `venue-image` | venueImage CRUD operations |
| `venue-link` | venueLink CRUD operations |
| `webhook` | webhook CRUD operations |
| `workflow` | workflow CRUD operations |
| `workflow-run` | workflowRun CRUD operations |
| `workflow-step` | workflowStep CRUD operations |

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

### `activity-log-chunk`

CRUD operations for ActivityLogChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all activityLogChunk records |
| `get` | Get a activityLogChunk by id |
| `create` | Create a new activityLogChunk |
| `update` | Update an existing activityLogChunk |
| `delete` | Delete a activityLogChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `activityLogId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `activityLogId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `activityType` | String |
| `title` | String |
| `description` | String |
| `occurredAt` | Datetime |
| `durationMinutes` | BigFloat |
| `data` | JSON |
| `tags` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `descriptionBm25Score` | Float |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `activityTypeTrgmSimilarity` | Float |
| `titleTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `activityType`
**Optional create fields (backend defaults):** `title`, `description`, `occurredAt`, `durationMinutes`, `data`, `tags`, `embeddingText`, `embedding`
> **Unified Search API fields:** `descriptionBm25Score`, `embeddingTextBm25Score`, `activityTypeTrgmSimilarity`, `titleTrgmSimilarity`, `descriptionTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `agent-chunk`

CRUD operations for AgentChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all agentChunk records |
| `get` | Get a agentChunk by id |
| `create` | Create a new agentChunk |
| `update` | Update an existing agentChunk |
| `delete` | Delete a agentChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `agentId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `agentId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `embeddingVectorDistance` | Float |
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
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `role`, `capabilities`, `config`, `status`, `persona`, `backstory`, `communicationStyle`, `systemPrompt`, `preferredModel`, `fallbackModels`, `temperature`, `mood`, `focus`, `lastActiveAt`, `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `roleTrgmSimilarity`, `statusTrgmSimilarity`, `personaTrgmSimilarity`, `backstoryTrgmSimilarity`, `communicationStyleTrgmSimilarity`, `systemPromptTrgmSimilarity`, `preferredModelTrgmSimilarity`, `moodTrgmSimilarity`, `focusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
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
| `embeddingVectorDistance` | Float |
| `nameTrgmSimilarity` | Float |
| `contentTrgmSimilarity` | Float |
| `typeTrgmSimilarity` | Float |
| `modelTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`, `content`
**Optional create fields (backend defaults):** `type`, `model`, `version`, `isActive`, `tags`, `embeddingText`, `embedding`
> **Unified Search API fields:** `contentBm25Score`, `embeddingTextBm25Score`, `nameTrgmSimilarity`, `contentTrgmSimilarity`, `typeTrgmSimilarity`, `modelTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `embeddingVectorDistance` | Float |
| `triggerConceptVectorDistance` | Float |
| `titleTrgmSimilarity` | Float |
| `contentTrgmSimilarity` | Float |
| `kindTrgmSimilarity` | Float |
| `severityTrgmSimilarity` | Float |
| `slugTrgmSimilarity` | Float |
| `verificationTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `title`
**Optional create fields (backend defaults):** `content`, `kind`, `severity`, `isActive`, `slug`, `verification`, `tags`, `embeddingText`, `embedding`, `triggerConcept`
> **Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `contentTrgmSimilarity`, `kindTrgmSimilarity`, `severityTrgmSimilarity`, `slugTrgmSimilarity`, `verificationTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `embeddingVectorDistance` | Float |
| `intentTriggerVectorDistance` | Float |
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
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `slug`, `description`, `content`, `procedure`, `interface`, `requirements`, `prerequisites`, `alwaysLoad`, `filePath`, `contentHash`, `category`, `isActive`, `abstract`, `overview`, `activeCount`, `lastAccessedAt`, `tags`, `embeddingText`, `embedding`, `intentTrigger`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `slugTrgmSimilarity`, `descriptionTrgmSimilarity`, `contentTrgmSimilarity`, `procedureTrgmSimilarity`, `filePathTrgmSimilarity`, `contentHashTrgmSimilarity`, `categoryTrgmSimilarity`, `abstractTrgmSimilarity`, `overviewTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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

**Required create fields:** `entityId`, `parentAgentId`, `task`, `agentId`
**Optional create fields (backend defaults):** `childAgentId`, `sessionId`, `status`, `result`, `maxIterations`, `startedAt`, `completedAt`

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
| `embeddingVectorDistance` | Float |
| `nameTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `typeTrgmSimilarity` | Float |
| `endpointTrgmSimilarity` | Float |
| `authMethodTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `description`, `type`, `inputSchema`, `outputSchema`, `endpoint`, `authMethod`, `isActive`, `tags`, `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `typeTrgmSimilarity`, `endpointTrgmSimilarity`, `authMethodTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `amount`, `currency`, `frequency`, `provider`, `nextBillingDate`, `cancellationDate`, `status`, `tags`, `notes`

### `blueprint-chunk`

CRUD operations for BlueprintChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all blueprintChunk records |
| `get` | Get a blueprintChunk by id |
| `create` | Create a new blueprintChunk |
| `update` | Update an existing blueprintChunk |
| `delete` | Delete a blueprintChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `blueprintId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `blueprintId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `embeddingVectorDistance` | Float |
| `titleTrgmSimilarity` | Float |
| `triggerConditionsTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `title`
**Optional create fields (backend defaults):** `steps`, `triggerConditions`, `conversationId`, `tags`, `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `triggerConditionsTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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

**Required create fields:** `entityId`, `email`
**Optional create fields (backend defaults):** `provider`, `syncToken`, `lastSyncedAt`

### `calendar-event-chunk`

CRUD operations for CalendarEventChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all calendarEventChunk records |
| `get` | Get a calendarEventChunk by id |
| `create` | Create a new calendarEventChunk |
| `update` | Update an existing calendarEventChunk |
| `delete` | Delete a calendarEventChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `calendarEventId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `calendarEventId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `embeddingVectorDistance` | Float |
| `remoteIdTrgmSimilarity` | Float |
| `titleTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `locationTrgmSimilarity` | Float |
| `recurrenceRuleTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `title`, `startAt`
**Optional create fields (backend defaults):** `calendarAccountId`, `remoteId`, `description`, `endAt`, `allDay`, `location`, `recurrenceRule`, `status`, `tags`, `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `remoteIdTrgmSimilarity`, `titleTrgmSimilarity`, `descriptionTrgmSimilarity`, `locationTrgmSimilarity`, `recurrenceRuleTrgmSimilarity`, `statusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
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
**Optional create fields (backend defaults):** `lastName`, `email`, `phone`, `headline`, `bio`, `location`, `birthday`, `relationshipType`, `howWeMet`, `twitterHandle`, `linkedinUrl`, `githubUsername`, `instagramHandle`, `website`, `tags`, `embeddingText`, `embedding`, `mainImageId`
> **Unified Search API fields:** `embeddingTextBm25Score`, `firstNameTrgmSimilarity`, `lastNameTrgmSimilarity`, `emailTrgmSimilarity`, `phoneTrgmSimilarity`, `headlineTrgmSimilarity`, `bioTrgmSimilarity`, `locationTrgmSimilarity`, `relationshipTypeTrgmSimilarity`, `howWeMetTrgmSimilarity`, `twitterHandleTrgmSimilarity`, `linkedinUrlTrgmSimilarity`, `githubUsernameTrgmSimilarity`, `instagramHandleTrgmSimilarity`, `websiteTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `chat-chunk`

CRUD operations for ChatChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all chatChunk records |
| `get` | Get a chatChunk by id |
| `create` | Create a new chatChunk |
| `update` | Update an existing chatChunk |
| `delete` | Delete a chatChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `chatId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `chatId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `embeddingVectorDistance` | Float |
| `titleTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`
**Optional create fields (backend defaults):** `title`, `startedAt`, `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `chat-message-chunk`

CRUD operations for ChatMessageChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all chatMessageChunk records |
| `get` | Get a chatMessageChunk by id |
| `create` | Create a new chatMessageChunk |
| `update` | Update an existing chatMessageChunk |
| `delete` | Delete a chatMessageChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `chatMessageId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `chatMessageId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `embeddingVectorDistance` | Float |
| `roleTrgmSimilarity` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`
**Optional create fields (backend defaults):** `chatId`, `threadId`, `role`, `content`, `toolCalls`, `embeddingText`, `embedding`
> **Unified Search API fields:** `contentBm25Score`, `embeddingTextBm25Score`, `roleTrgmSimilarity`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `content`
**Optional create fields (backend defaults):** `fileId`, `repositoryId`, `startLine`, `endLine`, `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `company-chunk`

CRUD operations for CompanyChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all companyChunk records |
| `get` | Get a companyChunk by id |
| `create` | Create a new companyChunk |
| `update` | Update an existing companyChunk |
| `delete` | Delete a companyChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `companyId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `companyId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
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
| `embeddingVectorDistance` | Float |
| `nameTrgmSimilarity` | Float |
| `domainTrgmSimilarity` | Float |
| `industryTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `domain`, `industry`, `description`, `tags`, `embeddingText`, `embedding`, `mainImageId`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `domainTrgmSimilarity`, `industryTrgmSimilarity`, `descriptionTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
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
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `name` | String |
| `eventType` | String |
| `location` | String |
| `city` | String |
| `startedAt` | Datetime |
| `endedAt` | Datetime |
| `notesText` | String |
| `tags` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `searchTsv` | FullText |
| `mainImageId` | UUID |
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
**Optional create fields (backend defaults):** `eventType`, `location`, `city`, `startedAt`, `endedAt`, `notesText`, `tags`, `embeddingText`, `embedding`, `mainImageId`
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
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `url` | String |
| `meta` | JSON |
| `altText` | String |
| `caption` | String |
| `embedding` | Vector |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `url`
**Optional create fields (backend defaults):** `meta`, `altText`, `caption`, `embedding`
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
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `title` | String |
| `url` | String |
| `embedding` | Vector |
| `companyId` | UUID |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `url`, `companyId`
**Optional create fields (backend defaults):** `title`, `embedding`
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
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `content` | String |
| `memoryType` | String |
| `memoryCategory` | String |
| `agentId` | UUID |
| `importance` | Int |
| `verified` | Boolean |
| `source` | String |
| `abstract` | String |
| `overview` | String |
| `activeCount` | Int |
| `lastAccessedAt` | Datetime |
| `tags` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `memoryTypeTrgmSimilarity` | Float |
| `memoryCategoryTrgmSimilarity` | Float |
| `sourceTrgmSimilarity` | Float |
| `abstractTrgmSimilarity` | Float |
| `overviewTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `content`
**Optional create fields (backend defaults):** `memoryType`, `memoryCategory`, `agentId`, `importance`, `verified`, `source`, `abstract`, `overview`, `activeCount`, `lastAccessedAt`, `tags`, `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `memoryTypeTrgmSimilarity`, `memoryCategoryTrgmSimilarity`, `sourceTrgmSimilarity`, `abstractTrgmSimilarity`, `overviewTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
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
| `abstract` | String |
| `overview` | String |
| `activeCount` | Int |
| `lastAccessedAt` | Datetime |
| `tags` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `contentBm25Score` | Float |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `abstractTrgmSimilarity` | Float |
| `overviewTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `content`
**Optional create fields (backend defaults):** `abstract`, `overview`, `activeCount`, `lastAccessedAt`, `tags`, `embeddingText`, `embedding`
> **Unified Search API fields:** `contentBm25Score`, `embeddingTextBm25Score`, `contentTrgmSimilarity`, `abstractTrgmSimilarity`, `overviewTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `contact-chunk`

CRUD operations for ContactChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all contactChunk records |
| `get` | Get a contactChunk by id |
| `create` | Create a new contactChunk |
| `update` | Update an existing contactChunk |
| `delete` | Delete a contactChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `contactId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `contactId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `notesText` | String |
| `tags` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `nameTrgmSimilarity` | Float |
| `stageTrgmSimilarity` | Float |
| `currencyTrgmSimilarity` | Float |
| `notesTextTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `stage`, `value`, `currency`, `expectedCloseDate`, `notesText`, `tags`, `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `stageTrgmSimilarity`, `currencyTrgmSimilarity`, `notesTextTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
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

**Required create fields:** `entityId`
**Optional create fields (backend defaults):** `amount`, `currency`, `date`, `category`, `description`, `merchant`, `receiptUrl`, `isRecurring`, `tags`

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
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `title` | String |
| `url` | String |
| `embedding` | Vector |
| `contactId` | UUID |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `url`, `contactId`
**Optional create fields (backend defaults):** `title`, `embedding`
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
| `embeddingVectorDistance` | Float |
| `nameTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `description`, `status`, `startDate`, `dueDate`, `tags`, `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `statusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `embeddingVectorDistance` | Float |
| `titleTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `taskTypeTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `title`
**Optional create fields (backend defaults):** `description`, `status`, `priority`, `projectId`, `taskType`, `assignedAgentId`, `parentTaskId`, `dueDate`, `completedAt`, `conversationId`, `dependencies`, `tags`, `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `descriptionTrgmSimilarity`, `statusTrgmSimilarity`, `taskTypeTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `deal-chunk`

CRUD operations for DealChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all dealChunk records |
| `get` | Get a dealChunk by id |
| `create` | Create a new dealChunk |
| `update` | Update an existing dealChunk |
| `delete` | Delete a dealChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `dealId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `dealId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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

### `document-chunk`

CRUD operations for DocumentChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all documentChunk records |
| `get` | Get a documentChunk by id |
| `create` | Create a new documentChunk |
| `update` | Update an existing documentChunk |
| `delete` | Delete a documentChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `documentId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `documentId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `embeddingVectorDistance` | Float |
| `titleTrgmSimilarity` | Float |
| `urlTrgmSimilarity` | Float |
| `contentTrgmSimilarity` | Float |
| `sourceTypeTrgmSimilarity` | Float |
| `abstractTrgmSimilarity` | Float |
| `overviewTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `title`
**Optional create fields (backend defaults):** `url`, `content`, `sourceType`, `isRead`, `savedAt`, `parentDocumentId`, `abstract`, `overview`, `activeCount`, `lastAccessedAt`, `tags`, `embeddingText`, `embedding`
> **Unified Search API fields:** `contentBm25Score`, `embeddingTextBm25Score`, `titleTrgmSimilarity`, `urlTrgmSimilarity`, `contentTrgmSimilarity`, `sourceTypeTrgmSimilarity`, `abstractTrgmSimilarity`, `overviewTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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

**Required create fields:** `entityId`, `email`
**Optional create fields (backend defaults):** `provider`, `syncState`

### `event-chunk`

CRUD operations for EventChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all eventChunk records |
| `get` | Get a eventChunk by id |
| `create` | Create a new eventChunk |
| `update` | Update an existing eventChunk |
| `delete` | Delete a eventChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `eventId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `eventId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
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
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `title` | String |
| `url` | String |
| `embedding` | Vector |
| `eventId` | UUID |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `url`, `eventId`
**Optional create fields (backend defaults):** `title`, `embedding`
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
**Optional create fields (backend defaults):** `address`, `neighborhood`, `city`, `category`, `status`, `googlePlaceId`, `rating`, `priceLevel`, `isFavorite`, `notes`, `tags`, `embeddingText`, `embedding`, `mainImageId`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `addressTrgmSimilarity`, `neighborhoodTrgmSimilarity`, `cityTrgmSimilarity`, `categoryTrgmSimilarity`, `statusTrgmSimilarity`, `googlePlaceIdTrgmSimilarity`, `priceLevelTrgmSimilarity`, `notesTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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

**Required create fields:** `entityId`
**Optional create fields (backend defaults):** `sessionId`, `stepName`, `input`, `output`, `toolCalls`, `durationMs`

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

**Required create fields:** `entityId`, `path`
**Optional create fields (backend defaults):** `repositoryId`, `language`, `hash`

### `goal-chunk`

CRUD operations for GoalChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all goalChunk records |
| `get` | Get a goalChunk by id |
| `create` | Create a new goalChunk |
| `update` | Update an existing goalChunk |
| `delete` | Delete a goalChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `goalId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `goalId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
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
| `embeddingVectorDistance` | Float |
| `titleTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `categoryTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `title`
**Optional create fields (backend defaults):** `description`, `targetDate`, `status`, `category`, `progressPct`, `tags`, `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `descriptionTrgmSimilarity`, `statusTrgmSimilarity`, `categoryTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
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
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `name` | String |
| `frequency` | String |
| `targetCount` | Int |
| `currentStreak` | Int |
| `bestStreak` | Int |
| `category` | String |
| `tags` | String |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `frequency`, `targetCount`, `currentStreak`, `bestStreak`, `category`, `tags`

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

**Required create fields:** `entityId`, `habitId`, `completedAt`
**Optional create fields (backend defaults):** `activityType`, `durationMinutes`, `distance`, `distanceUnit`, `reps`, `sets`, `weightAmount`, `weightUnit`, `calories`, `data`, `notes`, `tags`

### `idea-chunk`

CRUD operations for IdeaChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all ideaChunk records |
| `get` | Get a ideaChunk by id |
| `create` | Create a new ideaChunk |
| `update` | Update an existing ideaChunk |
| `delete` | Delete a ideaChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `ideaId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `ideaId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `sourceTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `content`
**Optional create fields (backend defaults):** `source`, `status`, `tags`, `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `sourceTrgmSimilarity`, `statusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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

**Required create fields:** `entityId`, `name`, `provider`
**Optional create fields (backend defaults):** `type`, `credentialsRef`, `config`, `status`, `lastSyncedAt`

### `interaction-chunk`

CRUD operations for InteractionChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all interactionChunk records |
| `get` | Get a interactionChunk by id |
| `create` | Create a new interactionChunk |
| `update` | Update an existing interactionChunk |
| `delete` | Delete a interactionChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `interactionId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `interactionId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
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
| `embeddingVectorDistance` | Float |
| `typeTrgmSimilarity` | Float |
| `summaryTrgmSimilarity` | Float |
| `sentimentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `contactId`, `type`, `occurredAt`
**Optional create fields (backend defaults):** `summary`, `sentiment`, `tags`, `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `typeTrgmSimilarity`, `summaryTrgmSimilarity`, `sentimentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `list-chunk`

CRUD operations for ListChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all listChunk records |
| `get` | Get a listChunk by id |
| `create` | Create a new listChunk |
| `update` | Update an existing listChunk |
| `delete` | Delete a listChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `listId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `listId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `embeddingVectorDistance` | Float |
| `nameTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `typeTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `description`, `type`, `tags`, `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `typeTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `memory-chunk`

CRUD operations for MemoryChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all memoryChunk records |
| `get` | Get a memoryChunk by id |
| `create` | Create a new memoryChunk |
| `update` | Update an existing memoryChunk |
| `delete` | Delete a memoryChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `memoryId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `memoryId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `message-chunk`

CRUD operations for MessageChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all messageChunk records |
| `get` | Get a messageChunk by id |
| `create` | Create a new messageChunk |
| `update` | Update an existing messageChunk |
| `delete` | Delete a messageChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `messageId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `messageId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
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
| `embeddingVectorDistance` | Float |
| `threadIdTrgmSimilarity` | Float |
| `remoteIdTrgmSimilarity` | Float |
| `fromAddressTrgmSimilarity` | Float |
| `subjectTrgmSimilarity` | Float |
| `bodyTextTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`
**Optional create fields (backend defaults):** `emailAccountId`, `threadId`, `remoteId`, `fromAddress`, `toAddresses`, `subject`, `bodyText`, `receivedAt`, `tags`, `embeddingText`, `embedding`
> **Unified Search API fields:** `bodyTextBm25Score`, `embeddingTextBm25Score`, `threadIdTrgmSimilarity`, `remoteIdTrgmSimilarity`, `fromAddressTrgmSimilarity`, `subjectTrgmSimilarity`, `bodyTextTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `projectId`, `dueDate`, `status`

### `note-chunk`

CRUD operations for NoteChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all noteChunk records |
| `get` | Get a noteChunk by id |
| `create` | Create a new noteChunk |
| `update` | Update an existing noteChunk |
| `delete` | Delete a noteChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `noteId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `noteId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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

**Required create fields:** `entityId`
**Optional create fields (backend defaults):** `pid`, `agentId`, `command`, `startedAt`, `endedAt`, `status`, `exitCode`, `logsPath`

### `project-chunk`

CRUD operations for ProjectChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all projectChunk records |
| `get` | Get a projectChunk by id |
| `create` | Create a new projectChunk |
| `update` | Update an existing projectChunk |
| `delete` | Delete a projectChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `projectId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `projectId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
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

### `prompt-chunk`

CRUD operations for PromptChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all promptChunk records |
| `get` | Get a promptChunk by id |
| `create` | Create a new promptChunk |
| `update` | Update an existing promptChunk |
| `delete` | Delete a promptChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `promptId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `promptId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `recipe-chunk`

CRUD operations for RecipeChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all recipeChunk records |
| `get` | Get a recipeChunk by id |
| `create` | Create a new recipeChunk |
| `update` | Update an existing recipeChunk |
| `delete` | Delete a recipeChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `recipeId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `recipeId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `embeddingVectorDistance` | Float |
| `nameTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `cuisineTrgmSimilarity` | Float |
| `difficultyTrgmSimilarity` | Float |
| `sourceUrlTrgmSimilarity` | Float |
| `imageUrlTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `description`, `cuisine`, `prepTimeMinutes`, `cookTimeMinutes`, `servings`, `difficulty`, `ingredients`, `instructions`, `sourceUrl`, `imageUrl`, `tags`, `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `cuisineTrgmSimilarity`, `difficultyTrgmSimilarity`, `sourceUrlTrgmSimilarity`, `imageUrlTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `reminder-chunk`

CRUD operations for ReminderChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all reminderChunk records |
| `get` | Get a reminderChunk by id |
| `create` | Create a new reminderChunk |
| `update` | Update an existing reminderChunk |
| `delete` | Delete a reminderChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `reminderId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `reminderId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `titleTrgmSimilarity` | Float |
| `recurrenceTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `title`
**Optional create fields (backend defaults):** `dueAt`, `completedAt`, `recurrence`, `status`, `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `recurrenceTrgmSimilarity`, `statusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `repository-chunk`

CRUD operations for RepositoryChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all repositoryChunk records |
| `get` | Get a repositoryChunk by id |
| `create` | Create a new repositoryChunk |
| `update` | Update an existing repositoryChunk |
| `delete` | Delete a repositoryChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `repositoryId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `repositoryId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `embeddingVectorDistance` | Float |
| `nameTrgmSimilarity` | Float |
| `urlTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `defaultBranchTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `url`, `description`, `defaultBranch`, `lastSyncedAt`, `tags`, `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `urlTrgmSimilarity`, `descriptionTrgmSimilarity`, `defaultBranchTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `rule-chunk`

CRUD operations for RuleChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all ruleChunk records |
| `get` | Get a ruleChunk by id |
| `create` | Create a new ruleChunk |
| `update` | Update an existing ruleChunk |
| `delete` | Delete a ruleChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `ruleId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `ruleId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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

**Required create fields:** `entityId`, `name`, `scheduleType`, `command`
**Optional create fields (backend defaults):** `scheduleExpr`, `runAt`, `message`, `agentId`, `sessionId`, `isActive`, `deleteAfterRun`, `lastRunAt`, `nextRunAt`, `runCount`, `lastResult`

### `session-archive-chunk`

CRUD operations for SessionArchiveChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all sessionArchiveChunk records |
| `get` | Get a sessionArchiveChunk by id |
| `create` | Create a new sessionArchiveChunk |
| `update` | Update an existing sessionArchiveChunk |
| `delete` | Delete a sessionArchiveChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `sessionArchiveId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `sessionArchiveId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `embeddingVectorDistance` | Float |
| `summaryTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `sessionId`, `archiveIndex`, `summary`
**Optional create fields (backend defaults):** `messageRangeStart`, `messageRangeEnd`, `rawMessages`, `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `summaryTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `session-chunk`

CRUD operations for SessionChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all sessionChunk records |
| `get` | Get a sessionChunk by id |
| `create` | Create a new sessionChunk |
| `update` | Update an existing sessionChunk |
| `delete` | Delete a sessionChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `sessionId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `sessionId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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

**Required create fields:** `entityId`
**Optional create fields (backend defaults):** `title`, `agentId`, `startedAt`, `endedAt`, `status`, `contextSummary`, `sessionSummary`, `archivedMessages`, `compressionCount`, `archivedAt`, `extractedMemoryIds`, `contextsUsed`, `skillsUsed`, `embeddingText`, `embedding`

### `skill-chunk`

CRUD operations for SkillChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all skillChunk records |
| `get` | Get a skillChunk by id |
| `create` | Create a new skillChunk |
| `update` | Update an existing skillChunk |
| `delete` | Delete a skillChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `skillId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `skillId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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

**Required create fields:** `entityId`, `skillId`
**Optional create fields (backend defaults):** `agentId`, `sessionId`, `status`, `startedAt`, `completedAt`, `durationMs`, `input`, `output`, `error`

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

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `color`, `category`, `usageCount`

### `task-chunk`

CRUD operations for TaskChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all taskChunk records |
| `get` | Get a taskChunk by id |
| `create` | Create a new taskChunk |
| `update` | Update an existing taskChunk |
| `delete` | Delete a taskChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `taskId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `taskId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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

### `template-chunk`

CRUD operations for TemplateChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all templateChunk records |
| `get` | Get a templateChunk by id |
| `create` | Create a new templateChunk |
| `update` | Update an existing templateChunk |
| `delete` | Delete a templateChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `templateId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `templateId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `embeddingVectorDistance` | Float |
| `nameTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `typeTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`, `content`
**Optional create fields (backend defaults):** `description`, `type`, `variables`, `isActive`, `tags`, `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `typeTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `thread-chunk`

CRUD operations for ThreadChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all threadChunk records |
| `get` | Get a threadChunk by id |
| `create` | Create a new threadChunk |
| `update` | Update an existing threadChunk |
| `delete` | Delete a threadChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `threadId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `threadId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `embeddingVectorDistance` | Float |
| `titleTrgmSimilarity` | Float |
| `summaryTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `title`
**Optional create fields (backend defaults):** `summary`, `status`, `parentThreadId`, `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `summaryTrgmSimilarity`, `statusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `tool-chunk`

CRUD operations for ToolChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all toolChunk records |
| `get` | Get a toolChunk by id |
| `create` | Create a new toolChunk |
| `update` | Update an existing toolChunk |
| `delete` | Delete a toolChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `toolId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `toolId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `trip-chunk`

CRUD operations for TripChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all tripChunk records |
| `get` | Get a tripChunk by id |
| `create` | Create a new tripChunk |
| `update` | Update an existing tripChunk |
| `delete` | Delete a tripChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `tripId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `tripId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
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
| `embeddingVectorDistance` | Float |
| `nameTrgmSimilarity` | Float |
| `destinationTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `notesTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `destination`, `startDate`, `endDate`, `status`, `notes`, `tags`, `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `destinationTrgmSimilarity`, `statusTrgmSimilarity`, `notesTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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

**Required create fields:** `entityId`, `key`
**Optional create fields (backend defaults):** `value`, `category`

### `venue-chunk`

CRUD operations for VenueChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all venueChunk records |
| `get` | Get a venueChunk by id |
| `create` | Create a new venueChunk |
| `update` | Update an existing venueChunk |
| `delete` | Delete a venueChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `embedding` | Vector |
| `venueId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `venueId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
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
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `title` | String |
| `url` | String |
| `embedding` | Vector |
| `venueId` | UUID |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `url`, `venueId`
**Optional create fields (backend defaults):** `title`, `embedding`
> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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

**Required create fields:** `entityId`, `url`, `eventType`
**Optional create fields (backend defaults):** `integrationId`, `secret`, `isActive`

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

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `description`, `triggerType`, `triggerConfig`, `isActive`, `tags`

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

**Required create fields:** `entityId`, `workflowId`
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

**Required create fields:** `entityId`, `workflowId`, `stepOrder`, `actionType`
**Optional create fields (backend defaults):** `actionConfig`, `onSuccessStep`, `onFailureStep`, `timeoutMs`

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
