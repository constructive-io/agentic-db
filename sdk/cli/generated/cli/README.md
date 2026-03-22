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
| `agent-chunk` | agentChunk CRUD operations |
| `agent-collaborator` | agentCollaborator CRUD operations |
| `agent` | agent CRUD operations |
| `agent-log-chunk` | agentLogChunk CRUD operations |
| `agent-log` | agentLog CRUD operations |
| `agent-task-chunk` | agentTaskChunk CRUD operations |
| `agent-task` | agentTask CRUD operations |
| `autonomy-record-chunk` | autonomyRecordChunk CRUD operations |
| `autonomy-record` | autonomyRecord CRUD operations |
| `autonomy-record-link` | autonomyRecordLink CRUD operations |
| `codebas-chunk` | codebasChunk CRUD operations |
| `codebase-dependency` | codebaseDependency CRUD operations |
| `codebasis` | codebasis CRUD operations |
| `code-chunk` | codeChunk CRUD operations |
| `company-chunk` | companyChunk CRUD operations |
| `company` | company CRUD operations |
| `contact` | contact CRUD operations |
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
| `contact-image` | contactImage CRUD operations |
| `contact-link` | contactLink CRUD operations |
| `contact-memory` | contactMemory CRUD operations |
| `contact-note` | contactNote CRUD operations |
| `project` | project CRUD operations |
| `conversation-chunk` | conversationChunk CRUD operations |
| `conversation` | conversation CRUD operations |
| `deal-chunk` | dealChunk CRUD operations |
| `deal-contact` | dealContact CRUD operations |
| `deal-note` | dealNote CRUD operations |
| `event-chunk` | eventChunk CRUD operations |
| `event-image` | eventImage CRUD operations |
| `event-link` | eventLink CRUD operations |
| `event-note` | eventNote CRUD operations |
| `event-venue` | eventVenue CRUD operations |
| `venue` | venue CRUD operations |
| `goal-chunk` | goalChunk CRUD operations |
| `goal` | goal CRUD operations |
| `goal-habit` | goalHabit CRUD operations |
| `habit` | habit CRUD operations |
| `goal-project` | goalProject CRUD operations |
| `habit-chunk` | habitChunk CRUD operations |
| `hiking-trail-chunk` | hikingTrailChunk CRUD operations |
| `hiking-trail` | hikingTrail CRUD operations |
| `trip` | trip CRUD operations |
| `interaction-chunk` | interactionChunk CRUD operations |
| `interaction` | interaction CRUD operations |
| `itinerary-item-chunk` | itineraryItemChunk CRUD operations |
| `itinerary-item` | itineraryItem CRUD operations |
| `memory-chunk` | memoryChunk CRUD operations |
| `message-chunk` | messageChunk CRUD operations |
| `message` | message CRUD operations |
| `note-chunk` | noteChunk CRUD operations |
| `place-chunk` | placeChunk CRUD operations |
| `place` | place CRUD operations |
| `project-chunk` | projectChunk CRUD operations |
| `project-contact` | projectContact CRUD operations |
| `rule-chunk` | ruleChunk CRUD operations |
| `rule` | rule CRUD operations |
| `runtime-artifact` | runtimeArtifact CRUD operations |
| `runtime-config` | runtimeConfig CRUD operations |
| `runtime-event` | runtimeEvent CRUD operations |
| `runtime-log-chunk` | runtimeLogChunk CRUD operations |
| `runtime-log` | runtimeLog CRUD operations |
| `runtime-metric` | runtimeMetric CRUD operations |
| `runtime-schedule` | runtimeSchedule CRUD operations |
| `runtime-state-chunk` | runtimeStateChunk CRUD operations |
| `runtime-state` | runtimeState CRUD operations |
| `runtime-state-dependency` | runtimeStateDependency CRUD operations |
| `skill-chunk` | skillChunk CRUD operations |
| `skill` | skill CRUD operations |
| `tag` | tag CRUD operations |
| `tool-definition` | toolDefinition CRUD operations |
| `tool-execution` | toolExecution CRUD operations |
| `trip-chunk` | tripChunk CRUD operations |
| `trip-hiking-trail` | tripHikingTrail CRUD operations |
| `trip-place` | tripPlace CRUD operations |
| `venue-chunk` | venueChunk CRUD operations |
| `venue-image` | venueImage CRUD operations |
| `venue-link` | venueLink CRUD operations |

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
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `agentId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `agentId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
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


### `agent-log-chunk`

CRUD operations for AgentLogChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all agentLogChunk records |
| `get` | Get a agentLogChunk by id |
| `create` | Create a new agentLogChunk |
| `update` | Update an existing agentLogChunk |
| `delete` | Delete a agentLogChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `agentLogId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `agentLogId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
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
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
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


### `agent-task-chunk`

CRUD operations for AgentTaskChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all agentTaskChunk records |
| `get` | Get a agentTaskChunk by id |
| `create` | Create a new agentTaskChunk |
| `update` | Update an existing agentTaskChunk |
| `delete` | Delete a agentTaskChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `agentTaskId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `agentTaskId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `agent-task`

CRUD operations for AgentTask records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all agentTask records |
| `get` | Get a agentTask by id |
| `create` | Create a new agentTask |
| `update` | Update an existing agentTask |
| `delete` | Delete a agentTask |

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
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
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

**Required create fields:** `entityId`, `agentId`, `title`
**Optional create fields (backend defaults):** `description`, `status`, `priority`, `result`, `startedAt`, `completedAt`, `meta`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `descriptionTrgmSimilarity`, `statusTrgmSimilarity`, `resultTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `autonomy-record-chunk`

CRUD operations for AutonomyRecordChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all autonomyRecordChunk records |
| `get` | Get a autonomyRecordChunk by id |
| `create` | Create a new autonomyRecordChunk |
| `update` | Update an existing autonomyRecordChunk |
| `delete` | Delete a autonomyRecordChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `autonomyRecordId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `autonomyRecordId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
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
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
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

### `codebas-chunk`

CRUD operations for CodebasChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all codebasChunk records |
| `get` | Get a codebasChunk by id |
| `create` | Create a new codebasChunk |
| `update` | Update an existing codebasChunk |
| `delete` | Delete a codebasChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `codebasisId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `codebasisId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
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
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
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
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
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
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `companyId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `companyId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`, `embeddingStale`
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
| `name` | String |
| `domain` | String |
| `industry` | String |
| `description` | String |
| `tags` | String |
| `embeddingText` | String |
| `mainImageId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
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
**Optional create fields (backend defaults):** `domain`, `industry`, `description`, `tags`, `embeddingText`, `mainImageId`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `domainTrgmSimilarity`, `industryTrgmSimilarity`, `descriptionTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `embeddingText` | String |
| `mainImageId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
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
**Optional create fields (backend defaults):** `lastName`, `email`, `phone`, `headline`, `bio`, `location`, `birthday`, `relationshipType`, `howWeMet`, `twitterHandle`, `linkedinUrl`, `githubUsername`, `instagramHandle`, `website`, `tags`, `embeddingText`, `mainImageId`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `firstNameTrgmSimilarity`, `lastNameTrgmSimilarity`, `emailTrgmSimilarity`, `phoneTrgmSimilarity`, `headlineTrgmSimilarity`, `bioTrgmSimilarity`, `locationTrgmSimilarity`, `relationshipTypeTrgmSimilarity`, `howWeMetTrgmSimilarity`, `twitterHandleTrgmSimilarity`, `linkedinUrlTrgmSimilarity`, `githubUsernameTrgmSimilarity`, `instagramHandleTrgmSimilarity`, `websiteTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
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
| `embeddingText` | String |
| `mainImageId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
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
**Optional create fields (backend defaults):** `eventType`, `location`, `city`, `startedAt`, `endedAt`, `notesText`, `tags`, `embeddingText`, `mainImageId`, `embedding`, `embeddingStale`
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
| `occurredAt` | Datetime |
| `location` | String |
| `mood` | String |
| `importance` | Int |
| `tags` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
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
**Optional create fields (backend defaults):** `content`, `occurredAt`, `location`, `mood`, `importance`, `tags`, `embeddingText`, `embedding`, `embeddingStale`, `agentId`
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
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
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
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `contactId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `contactId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`, `embeddingStale`
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
| `name` | String |
| `stage` | String |
| `value` | BigFloat |
| `currency` | String |
| `expectedCloseDate` | Datetime |
| `notesText` | String |
| `tags` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
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
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
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


### `conversation-chunk`

CRUD operations for ConversationChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all conversationChunk records |
| `get` | Get a conversationChunk by id |
| `create` | Create a new conversationChunk |
| `update` | Update an existing conversationChunk |
| `delete` | Delete a conversationChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `conversationId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `conversationId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
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
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
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
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `dealId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `dealId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`, `embeddingStale`
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
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `eventId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `eventId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`, `embeddingStale`
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
| `embeddingText` | String |
| `mainImageId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
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
**Optional create fields (backend defaults):** `address`, `neighborhood`, `city`, `category`, `status`, `googlePlaceId`, `rating`, `priceLevel`, `isFavorite`, `notes`, `tags`, `embeddingText`, `mainImageId`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `addressTrgmSimilarity`, `neighborhoodTrgmSimilarity`, `cityTrgmSimilarity`, `categoryTrgmSimilarity`, `statusTrgmSimilarity`, `googlePlaceIdTrgmSimilarity`, `priceLevelTrgmSimilarity`, `notesTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `goalId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `goalId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`, `embeddingStale`
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
| `title` | String |
| `description` | String |
| `category` | String |
| `status` | String |
| `priority` | Int |
| `targetDate` | Datetime |
| `completedAt` | Datetime |
| `progress` | BigFloat |
| `tags` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `titleTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `categoryTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `title`
**Optional create fields (backend defaults):** `description`, `category`, `status`, `priority`, `targetDate`, `completedAt`, `progress`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `descriptionTrgmSimilarity`, `categoryTrgmSimilarity`, `statusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
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
| `description` | String |
| `frequency` | String |
| `targetCount` | Int |
| `currentStreak` | Int |
| `bestStreak` | Int |
| `isActive` | Boolean |
| `tags` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `nameTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `frequencyTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `description`, `frequency`, `targetCount`, `currentStreak`, `bestStreak`, `isActive`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `frequencyTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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

### `habit-chunk`

CRUD operations for HabitChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all habitChunk records |
| `get` | Get a habitChunk by id |
| `create` | Create a new habitChunk |
| `update` | Update an existing habitChunk |
| `delete` | Delete a habitChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `habitId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `habitId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `hiking-trail-chunk`

CRUD operations for HikingTrailChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all hikingTrailChunk records |
| `get` | Get a hikingTrailChunk by id |
| `create` | Create a new hikingTrailChunk |
| `update` | Update an existing hikingTrailChunk |
| `delete` | Delete a hikingTrailChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `hikingTrailId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `hikingTrailId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
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
| `description` | String |
| `difficulty` | String |
| `distanceKm` | BigFloat |
| `elevationGainm` | BigFloat |
| `estimatedTimeHours` | BigFloat |
| `trailType` | String |
| `region` | String |
| `notes` | String |
| `tags` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `nameTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `difficultyTrgmSimilarity` | Float |
| `trailTypeTrgmSimilarity` | Float |
| `regionTrgmSimilarity` | Float |
| `notesTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `description`, `difficulty`, `distanceKm`, `elevationGainm`, `estimatedTimeHours`, `trailType`, `region`, `notes`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `difficultyTrgmSimilarity`, `trailTypeTrgmSimilarity`, `regionTrgmSimilarity`, `notesTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
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
| `description` | String |
| `destination` | String |
| `startedAt` | Datetime |
| `endedAt` | Datetime |
| `status` | String |
| `budget` | BigFloat |
| `currency` | String |
| `tags` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `nameTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `destinationTrgmSimilarity` | Float |
| `statusTrgmSimilarity` | Float |
| `currencyTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `description`, `destination`, `startedAt`, `endedAt`, `status`, `budget`, `currency`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `destinationTrgmSimilarity`, `statusTrgmSimilarity`, `currencyTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `interactionId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `interactionId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`, `embeddingStale`
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
| `contactId` | UUID |
| `type` | String |
| `occurredAt` | Datetime |
| `summary` | String |
| `sentiment` | String |
| `tags` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
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


### `itinerary-item-chunk`

CRUD operations for ItineraryItemChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all itineraryItemChunk records |
| `get` | Get a itineraryItemChunk by id |
| `create` | Create a new itineraryItemChunk |
| `update` | Update an existing itineraryItemChunk |
| `delete` | Delete a itineraryItemChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `itineraryItemId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `itineraryItemId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `itinerary-item`

CRUD operations for ItineraryItem records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all itineraryItem records |
| `get` | Get a itineraryItem by id |
| `create` | Create a new itineraryItem |
| `update` | Update an existing itineraryItem |
| `delete` | Delete a itineraryItem |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `tripId` | UUID |
| `name` | String |
| `description` | String |
| `dayNumber` | Int |
| `startTime` | Datetime |
| `endTime` | Datetime |
| `placeId` | UUID |
| `category` | String |
| `cost` | BigFloat |
| `notes` | String |
| `sortOrder` | Int |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `nameTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `categoryTrgmSimilarity` | Float |
| `notesTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `tripId`, `name`
**Optional create fields (backend defaults):** `description`, `dayNumber`, `startTime`, `endTime`, `placeId`, `category`, `cost`, `notes`, `sortOrder`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `categoryTrgmSimilarity`, `notesTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
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
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `memoryId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `memoryId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`, `embeddingStale`
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
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `messageId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `messageId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`, `embeddingStale`
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
| `conversationId` | UUID |
| `role` | String |
| `content` | String |
| `tokenCount` | Int |
| `meta` | JSON |
| `toolCalls` | JSON |
| `toolResults` | JSON |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
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
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `noteId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `noteId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `place-chunk`

CRUD operations for PlaceChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all placeChunk records |
| `get` | Get a placeChunk by id |
| `create` | Create a new placeChunk |
| `update` | Update an existing placeChunk |
| `delete` | Delete a placeChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `placeId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `placeId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
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
| `description` | String |
| `address` | String |
| `city` | String |
| `country` | String |
| `category` | String |
| `rating` | BigFloat |
| `notes` | String |
| `tags` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `nameTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `addressTrgmSimilarity` | Float |
| `cityTrgmSimilarity` | Float |
| `countryTrgmSimilarity` | Float |
| `categoryTrgmSimilarity` | Float |
| `notesTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `description`, `address`, `city`, `country`, `category`, `rating`, `notes`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `addressTrgmSimilarity`, `cityTrgmSimilarity`, `countryTrgmSimilarity`, `categoryTrgmSimilarity`, `notesTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `projectId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `projectId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`, `embeddingStale`
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
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `ruleId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `ruleId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
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

### `runtime-log-chunk`

CRUD operations for RuntimeLogChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all runtimeLogChunk records |
| `get` | Get a runtimeLogChunk by id |
| `create` | Create a new runtimeLogChunk |
| `update` | Update an existing runtimeLogChunk |
| `delete` | Delete a runtimeLogChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `runtimeLogId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `runtimeLogId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
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

### `runtime-state-chunk`

CRUD operations for RuntimeStateChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all runtimeStateChunk records |
| `get` | Get a runtimeStateChunk by id |
| `create` | Create a new runtimeStateChunk |
| `update` | Update an existing runtimeStateChunk |
| `delete` | Delete a runtimeStateChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `runtimeStateId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `runtimeStateId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


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
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
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
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `skillId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `skillId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
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
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
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
| `inputSchema` | JSON |
| `outputSchema` | JSON |
| `implementation` | String |
| `isActive` | Boolean |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |

**Required create fields:** `entityId`, `name`
**Optional create fields (backend defaults):** `description`, `inputSchema`, `outputSchema`, `implementation`, `isActive`

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
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `tripId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `tripId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`, `embeddingStale`
> **Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.


### `trip-hiking-trail`

CRUD operations for TripHikingTrail records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all tripHikingTrail records |
| `get` | Get a tripHikingTrail by id |
| `create` | Create a new tripHikingTrail |
| `update` | Update an existing tripHikingTrail |
| `delete` | Delete a tripHikingTrail |

**Fields:**

| Field | Type |
|-------|------|
| `tripId` | UUID |
| `hikingTrailId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `tripId`, `hikingTrailId`, `entityId`

### `trip-place`

CRUD operations for TripPlace records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all tripPlace records |
| `get` | Get a tripPlace by id |
| `create` | Create a new tripPlace |
| `update` | Update an existing tripPlace |
| `delete` | Delete a tripPlace |

**Fields:**

| Field | Type |
|-------|------|
| `tripId` | UUID |
| `placeId` | UUID |
| `id` | UUID |
| `entityId` | UUID |

**Required create fields:** `tripId`, `placeId`, `entityId`

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
| `chunkIndex` | Int |
| `content` | String |
| `embeddingText` | String |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `venueId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `contentTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `entityId`, `chunkIndex`, `content`, `venueId`
**Optional create fields (backend defaults):** `embeddingText`, `embedding`, `embeddingStale`
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
