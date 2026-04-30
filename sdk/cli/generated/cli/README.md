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
| `activity-log` | activityLog CRUD operations |
| `agent` | agent CRUD operations |
| `agent-collaborator` | agentCollaborator CRUD operations |
| `agent-log` | agentLog CRUD operations |
| `agent-prompt` | agentPrompt CRUD operations |
| `prompt` | prompt CRUD operations |
| `autonomy-record` | autonomyRecord CRUD operations |
| `autonomy-record-link` | autonomyRecordLink CRUD operations |
| `calendar-attendee` | calendarAttendee CRUD operations |
| `calendar` | calendar CRUD operations |
| `calendar-event` | calendarEvent CRUD operations |
| `calendar-event-contact` | calendarEventContact CRUD operations |
| `contact` | contact CRUD operations |
| `calendar-event-note` | calendarEventNote CRUD operations |
| `note` | note CRUD operations |
| `calendar-event-task` | calendarEventTask CRUD operations |
| `task` | task CRUD operations |
| `company` | company CRUD operations |
| `deal` | deal CRUD operations |
| `company-document` | companyDocument CRUD operations |
| `document` | document CRUD operations |
| `company-event` | companyEvent CRUD operations |
| `event` | event CRUD operations |
| `company-image` | companyImage CRUD operations |
| `image` | image CRUD operations |
| `company-link` | companyLink CRUD operations |
| `memory` | memory CRUD operations |
| `company-memory` | companyMemory CRUD operations |
| `company-note` | companyNote CRUD operations |
| `contact-address` | contactAddress CRUD operations |
| `contact-company` | contactCompany CRUD operations |
| `contact-email` | contactEmail CRUD operations |
| `email` | email CRUD operations |
| `email-thread` | emailThread CRUD operations |
| `contact-event` | contactEvent CRUD operations |
| `expense` | expense CRUD operations |
| `contact-image` | contactImage CRUD operations |
| `contact-link` | contactLink CRUD operations |
| `contact-memory` | contactMemory CRUD operations |
| `contact-note` | contactNote CRUD operations |
| `contact-phone` | contactPhone CRUD operations |
| `project` | project CRUD operations |
| `contact-relationship` | contactRelationship CRUD operations |
| `contacts-chunk` | contactsChunk CRUD operations |
| `conversation` | conversation CRUD operations |
| `deal-company` | dealCompany CRUD operations |
| `deal-contact` | dealContact CRUD operations |
| `deal-note` | dealNote CRUD operations |
| `documents-chunk` | documentsChunk CRUD operations |
| `email-attachment` | emailAttachment CRUD operations |
| `email-note` | emailNote CRUD operations |
| `email-recipient` | emailRecipient CRUD operations |
| `event-image` | eventImage CRUD operations |
| `event-link` | eventLink CRUD operations |
| `event-note` | eventNote CRUD operations |
| `event-venue` | eventVenue CRUD operations |
| `venue` | venue CRUD operations |
| `expense-contact` | expenseContact CRUD operations |
| `goal` | goal CRUD operations |
| `goal-habit` | goalHabit CRUD operations |
| `habit` | habit CRUD operations |
| `goal-project` | goalProject CRUD operations |
| `interaction` | interaction CRUD operations |
| `message` | message CRUD operations |
| `notes-chunk` | notesChunk CRUD operations |
| `place` | place CRUD operations |
| `project-contact` | projectContact CRUD operations |
| `project-document` | projectDocument CRUD operations |
| `provider-sync-state` | providerSyncState CRUD operations |
| `raw-contact` | rawContact CRUD operations |
| `raw-contact-email` | rawContactEmail CRUD operations |
| `raw-contact-phone` | rawContactPhone CRUD operations |
| `raw-contact-url` | rawContactUrl CRUD operations |
| `rule` | rule CRUD operations |
| `runtime-artifact` | runtimeArtifact CRUD operations |
| `runtime-config` | runtimeConfig CRUD operations |
| `runtime-event` | runtimeEvent CRUD operations |
| `runtime-log` | runtimeLog CRUD operations |
| `runtime-metric` | runtimeMetric CRUD operations |
| `runtime-schedule` | runtimeSchedule CRUD operations |
| `runtime-state` | runtimeState CRUD operations |
| `runtime-state-dependency` | runtimeStateDependency CRUD operations |
| `skill` | skill CRUD operations |
| `skill-tool` | skillTool CRUD operations |
| `tool-definition` | toolDefinition CRUD operations |
| `tag` | tag CRUD operations |
| `task-contact` | taskContact CRUD operations |
| `task-note` | taskNote CRUD operations |
| `task-project` | taskProject CRUD operations |
| `thread-participant` | threadParticipant CRUD operations |
| `tool-execution` | toolExecution CRUD operations |
| `touchpoint` | touchpoint CRUD operations |
| `trip` | trip CRUD operations |
| `venue-image` | venueImage CRUD operations |
| `venue-link` | venueLink CRUD operations |
| `request-upload-url` | Request a presigned URL for uploading a file directly to S3.
Client computes SHA-256 of the file content and provides it here.
If a file with the same hash already exists (dedup), returns the
existing file ID and deduplicated=true with no uploadUrl. |
| `confirm-upload` | Confirm that a file has been uploaded to S3.
Verifies the object exists in S3, checks content-type,
and transitions the file status from 'pending' to 'ready'. |
| `provision-bucket` | Provision an S3 bucket for a logical bucket in the database.
Reads the bucket config via RLS, then creates and configures
the S3 bucket with the appropriate privacy policies, CORS rules,
and lifecycle settings. |

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

### `activity-log`

CRUD operations for ActivityLog records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all activityLog records |
| `find-first` | Find first matching activityLog record |
| `search <query>` | Search activityLog records |
| `get` | Get a activityLog by id |
| `create` | Create a new activityLog |
| `update` | Update an existing activityLog |
| `delete` | Delete a activityLog |

**Fields:**

| Field | Type |
|-------|------|
| `activityType` | String |
| `completedAt` | Datetime |
| `durationMinutes` | Int |
| `quantity` | BigFloat |
| `quantityUnit` | String |
| `intensity` | String |
| `notes` | String |
| `meta` | JSON |
| `tags` | String |
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `habitId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `activityTypeTrgmSimilarity` | Float |
| `quantityUnitTrgmSimilarity` | Float |
| `intensityTrgmSimilarity` | Float |
| `notesTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `activityType`, `completedAt`
**Optional create fields (backend defaults):** `durationMinutes`, `quantity`, `quantityUnit`, `intensity`, `notes`, `meta`, `tags`, `embeddingText`, `embedding`, `embeddingStale`, `habitId`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `embeddingTextBm25Score`, `activityTypeTrgmSimilarity`, `quantityUnitTrgmSimilarity`, `intensityTrgmSimilarity`, `notesTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db activity-log list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db activity-log search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db activity-log list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db activity-log create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db activity-log update --embedding "new text to embed" --auto-embed
```

*BM25 keyword search via `bm25EmbeddingText`:*
```bash
agentic-db activity-log list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

*Fuzzy search via trigram similarity (`trgmActivityType`):*
```bash
agentic-db activity-log list --where.trgmActivityType.value "approximate query" --where.trgmActivityType.threshold 0.3 --select title,activityTypeTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmQuantityUnit`):*
```bash
agentic-db activity-log list --where.trgmQuantityUnit.value "approximate query" --where.trgmQuantityUnit.threshold 0.3 --select title,quantityUnitTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmIntensity`):*
```bash
agentic-db activity-log list --where.trgmIntensity.value "approximate query" --where.trgmIntensity.threshold 0.3 --select title,intensityTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmNotes`):*
```bash
agentic-db activity-log list --where.trgmNotes.value "approximate query" --where.trgmNotes.threshold 0.3 --select title,notesTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmbeddingText`):*
```bash
agentic-db activity-log list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

*Composite search (unifiedSearch dispatches to all text adapters):*
```bash
agentic-db activity-log list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,activityTypeTrgmSimilarity,quantityUnitTrgmSimilarity,intensityTrgmSimilarity,notesTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

*Search with pagination and field projection:*
```bash
agentic-db activity-log list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db activity-log search "query" --limit 10 --select id,title,searchScore
```


### `agent`

CRUD operations for Agent records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all agent records |
| `find-first` | Find first matching agent record |
| `search <query>` | Search agent records |
| `get` | Get a agent by id |
| `create` | Create a new agent |
| `update` | Update an existing agent |
| `delete` | Delete a agent |

**Fields:**

| Field | Type |
|-------|------|
| `name` | String |
| `description` | String |
| `systemPrompt` | String |
| `model` | String |
| `temperature` | BigFloat |
| `status` | String |
| `config` | JSON |
| `tags` | String |
| `id` | UUID |
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

**Required create fields:** `name`
**Optional create fields (backend defaults):** `description`, `systemPrompt`, `model`, `temperature`, `status`, `config`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `systemPromptTrgmSimilarity`, `modelTrgmSimilarity`, `statusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db agent list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db agent search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db agent list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db agent create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db agent update --embedding "new text to embed" --auto-embed
```

*BM25 keyword search via `bm25EmbeddingText`:*
```bash
agentic-db agent list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

*Fuzzy search via trigram similarity (`trgmName`):*
```bash
agentic-db agent list --where.trgmName.value "approximate query" --where.trgmName.threshold 0.3 --select title,nameTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmDescription`):*
```bash
agentic-db agent list --where.trgmDescription.value "approximate query" --where.trgmDescription.threshold 0.3 --select title,descriptionTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmSystemPrompt`):*
```bash
agentic-db agent list --where.trgmSystemPrompt.value "approximate query" --where.trgmSystemPrompt.threshold 0.3 --select title,systemPromptTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmModel`):*
```bash
agentic-db agent list --where.trgmModel.value "approximate query" --where.trgmModel.threshold 0.3 --select title,modelTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmStatus`):*
```bash
agentic-db agent list --where.trgmStatus.value "approximate query" --where.trgmStatus.threshold 0.3 --select title,statusTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmbeddingText`):*
```bash
agentic-db agent list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

*Composite search (unifiedSearch dispatches to all text adapters):*
```bash
agentic-db agent list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,nameTrgmSimilarity,descriptionTrgmSimilarity,systemPromptTrgmSimilarity,modelTrgmSimilarity,statusTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

*Search with pagination and field projection:*
```bash
agentic-db agent list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db agent search "query" --limit 10 --select id,title,searchScore
```


### `agent-collaborator`

CRUD operations for AgentCollaborator records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all agentCollaborator records |
| `find-first` | Find first matching agentCollaborator record |
| `get` | Get a agentCollaborator by id |
| `create` | Create a new agentCollaborator |
| `update` | Update an existing agentCollaborator |
| `delete` | Delete a agentCollaborator |

**Fields:**

| Field | Type |
|-------|------|
| `agentId` | UUID |
| `collaboratorId` | UUID |

**Required create fields:** `agentId`, `collaboratorId`

### `agent-log`

CRUD operations for AgentLog records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all agentLog records |
| `find-first` | Find first matching agentLog record |
| `search <query>` | Search agentLog records |
| `get` | Get a agentLog by id |
| `create` | Create a new agentLog |
| `update` | Update an existing agentLog |
| `delete` | Delete a agentLog |

**Fields:**

| Field | Type |
|-------|------|
| `agentId` | UUID |
| `level` | String |
| `message` | String |
| `context` | JSON |
| `taskId` | UUID |
| `id` | UUID |
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

**Required create fields:** `level`, `message`
**Optional create fields (backend defaults):** `agentId`, `context`, `taskId`, `embeddingText`, `embedding`, `embeddingStale`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `embeddingTextBm25Score`, `levelTrgmSimilarity`, `messageTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db agent-log list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db agent-log search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db agent-log list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db agent-log create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db agent-log update --embedding "new text to embed" --auto-embed
```

*BM25 keyword search via `bm25EmbeddingText`:*
```bash
agentic-db agent-log list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

*Fuzzy search via trigram similarity (`trgmLevel`):*
```bash
agentic-db agent-log list --where.trgmLevel.value "approximate query" --where.trgmLevel.threshold 0.3 --select title,levelTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmMessage`):*
```bash
agentic-db agent-log list --where.trgmMessage.value "approximate query" --where.trgmMessage.threshold 0.3 --select title,messageTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmbeddingText`):*
```bash
agentic-db agent-log list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

*Composite search (unifiedSearch dispatches to all text adapters):*
```bash
agentic-db agent-log list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,levelTrgmSimilarity,messageTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

*Search with pagination and field projection:*
```bash
agentic-db agent-log list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db agent-log search "query" --limit 10 --select id,title,searchScore
```


### `agent-prompt`

CRUD operations for AgentPrompt records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all agentPrompt records |
| `find-first` | Find first matching agentPrompt record |
| `get` | Get a agentPrompt by id |
| `create` | Create a new agentPrompt |
| `update` | Update an existing agentPrompt |
| `delete` | Delete a agentPrompt |

**Fields:**

| Field | Type |
|-------|------|
| `agentId` | UUID |
| `promptId` | UUID |

**Required create fields:** `agentId`, `promptId`

### `prompt`

CRUD operations for Prompt records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all prompt records |
| `find-first` | Find first matching prompt record |
| `search <query>` | Search prompt records |
| `get` | Get a prompt by id |
| `create` | Create a new prompt |
| `update` | Update an existing prompt |
| `delete` | Delete a prompt |

**Fields:**

| Field | Type |
|-------|------|
| `name` | String |
| `content` | String |
| `category` | String |
| `version` | Int |
| `isActive` | Boolean |
| `tags` | String |
| `id` | UUID |
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

**Required create fields:** `name`, `content`
**Optional create fields (backend defaults):** `category`, `version`, `isActive`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `contentTrgmSimilarity`, `categoryTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db prompt list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db prompt search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db prompt list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db prompt create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db prompt update --embedding "new text to embed" --auto-embed
```

*BM25 keyword search via `bm25EmbeddingText`:*
```bash
agentic-db prompt list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

*Fuzzy search via trigram similarity (`trgmName`):*
```bash
agentic-db prompt list --where.trgmName.value "approximate query" --where.trgmName.threshold 0.3 --select title,nameTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmContent`):*
```bash
agentic-db prompt list --where.trgmContent.value "approximate query" --where.trgmContent.threshold 0.3 --select title,contentTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmCategory`):*
```bash
agentic-db prompt list --where.trgmCategory.value "approximate query" --where.trgmCategory.threshold 0.3 --select title,categoryTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmbeddingText`):*
```bash
agentic-db prompt list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

*Composite search (unifiedSearch dispatches to all text adapters):*
```bash
agentic-db prompt list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,nameTrgmSimilarity,contentTrgmSimilarity,categoryTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

*Search with pagination and field projection:*
```bash
agentic-db prompt list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db prompt search "query" --limit 10 --select id,title,searchScore
```


### `autonomy-record`

CRUD operations for AutonomyRecord records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all autonomyRecord records |
| `find-first` | Find first matching autonomyRecord record |
| `search <query>` | Search autonomyRecord records |
| `get` | Get a autonomyRecord by id |
| `create` | Create a new autonomyRecord |
| `update` | Update an existing autonomyRecord |
| `delete` | Delete a autonomyRecord |

**Fields:**

| Field | Type |
|-------|------|
| `title` | String |
| `recordType` | String |
| `content` | String |
| `status` | String |
| `priority` | Int |
| `source` | String |
| `context` | JSON |
| `tags` | String |
| `id` | UUID |
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

**Required create fields:** `title`
**Optional create fields (backend defaults):** `recordType`, `content`, `status`, `priority`, `source`, `context`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `recordTypeTrgmSimilarity`, `contentTrgmSimilarity`, `statusTrgmSimilarity`, `sourceTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db autonomy-record list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db autonomy-record search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db autonomy-record list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db autonomy-record create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db autonomy-record update --embedding "new text to embed" --auto-embed
```

*BM25 keyword search via `bm25EmbeddingText`:*
```bash
agentic-db autonomy-record list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

*Fuzzy search via trigram similarity (`trgmTitle`):*
```bash
agentic-db autonomy-record list --where.trgmTitle.value "approximate query" --where.trgmTitle.threshold 0.3 --select title,titleTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmRecordType`):*
```bash
agentic-db autonomy-record list --where.trgmRecordType.value "approximate query" --where.trgmRecordType.threshold 0.3 --select title,recordTypeTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmContent`):*
```bash
agentic-db autonomy-record list --where.trgmContent.value "approximate query" --where.trgmContent.threshold 0.3 --select title,contentTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmStatus`):*
```bash
agentic-db autonomy-record list --where.trgmStatus.value "approximate query" --where.trgmStatus.threshold 0.3 --select title,statusTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmSource`):*
```bash
agentic-db autonomy-record list --where.trgmSource.value "approximate query" --where.trgmSource.threshold 0.3 --select title,sourceTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmbeddingText`):*
```bash
agentic-db autonomy-record list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

*Composite search (unifiedSearch dispatches to all text adapters):*
```bash
agentic-db autonomy-record list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,titleTrgmSimilarity,recordTypeTrgmSimilarity,contentTrgmSimilarity,statusTrgmSimilarity,sourceTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

*Search with pagination and field projection:*
```bash
agentic-db autonomy-record list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db autonomy-record search "query" --limit 10 --select id,title,searchScore
```


### `autonomy-record-link`

CRUD operations for AutonomyRecordLink records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all autonomyRecordLink records |
| `find-first` | Find first matching autonomyRecordLink record |
| `get` | Get a autonomyRecordLink by id |
| `create` | Create a new autonomyRecordLink |
| `update` | Update an existing autonomyRecordLink |
| `delete` | Delete a autonomyRecordLink |

**Fields:**

| Field | Type |
|-------|------|
| `sourceRecordId` | UUID |
| `targetRecordId` | UUID |

**Required create fields:** `sourceRecordId`, `targetRecordId`

### `calendar-attendee`

CRUD operations for CalendarAttendee records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all calendarAttendee records |
| `find-first` | Find first matching calendarAttendee record |
| `get` | Get a calendarAttendee by id |
| `create` | Create a new calendarAttendee |
| `update` | Update an existing calendarAttendee |
| `delete` | Delete a calendarAttendee |

**Fields:**

| Field | Type |
|-------|------|
| `contactId` | UUID |
| `responseStatus` | String |
| `role` | String |
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `calendarEventId` | UUID |

**Required create fields:** `calendarEventId`
**Optional create fields (backend defaults):** `contactId`, `responseStatus`, `role`

### `calendar`

CRUD operations for Calendar records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all calendar records |
| `find-first` | Find first matching calendar record |
| `get` | Get a calendar by id |
| `create` | Create a new calendar |
| `update` | Update an existing calendar |
| `delete` | Delete a calendar |

**Fields:**

| Field | Type |
|-------|------|
| `providerAccountId` | String |
| `providerCalendarId` | String |
| `name` | String |
| `color` | String |
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |

**Required create fields:** `name`
**Optional create fields (backend defaults):** `providerAccountId`, `providerCalendarId`, `color`

### `calendar-event`

CRUD operations for CalendarEvent records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all calendarEvent records |
| `find-first` | Find first matching calendarEvent record |
| `search <query>` | Search calendarEvent records |
| `get` | Get a calendarEvent by id |
| `create` | Create a new calendarEvent |
| `update` | Update an existing calendarEvent |
| `delete` | Delete a calendarEvent |

**Fields:**

| Field | Type |
|-------|------|
| `providerEventId` | String |
| `title` | String |
| `description` | String |
| `startTime` | Datetime |
| `endTime` | Datetime |
| `meetingUrl` | String |
| `organizerContactId` | UUID |
| `tags` | String |
| `id` | UUID |
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

**Required create fields:** `title`, `calendarId`
**Optional create fields (backend defaults):** `providerEventId`, `description`, `startTime`, `endTime`, `meetingUrl`, `organizerContactId`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `searchTsv`, `embeddingTextBm25Score`, `providerEventIdTrgmSimilarity`, `titleTrgmSimilarity`, `descriptionTrgmSimilarity`, `meetingUrlTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db calendar-event list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db calendar-event search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db calendar-event list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db calendar-event create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db calendar-event update --embedding "new text to embed" --auto-embed
```

*Full-text search via tsvector (`searchTsv`):*
```bash
agentic-db calendar-event list --where.searchTsv "search query" --select title,tsvRank
```

*BM25 keyword search via `bm25EmbeddingText`:*
```bash
agentic-db calendar-event list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

*Fuzzy search via trigram similarity (`trgmProviderEventId`):*
```bash
agentic-db calendar-event list --where.trgmProviderEventId.value "approximate query" --where.trgmProviderEventId.threshold 0.3 --select title,providerEventIdTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmTitle`):*
```bash
agentic-db calendar-event list --where.trgmTitle.value "approximate query" --where.trgmTitle.threshold 0.3 --select title,titleTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmDescription`):*
```bash
agentic-db calendar-event list --where.trgmDescription.value "approximate query" --where.trgmDescription.threshold 0.3 --select title,descriptionTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmMeetingUrl`):*
```bash
agentic-db calendar-event list --where.trgmMeetingUrl.value "approximate query" --where.trgmMeetingUrl.threshold 0.3 --select title,meetingUrlTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmbeddingText`):*
```bash
agentic-db calendar-event list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

*Composite search (unifiedSearch dispatches to all text adapters):*
```bash
agentic-db calendar-event list --where.unifiedSearch "search query" --select title,tsvRank,embeddingTextBm25Score,providerEventIdTrgmSimilarity,titleTrgmSimilarity,descriptionTrgmSimilarity,meetingUrlTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

*Search with pagination and field projection:*
```bash
agentic-db calendar-event list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db calendar-event search "query" --limit 10 --select id,title,searchScore
```


### `calendar-event-contact`

CRUD operations for CalendarEventContact records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all calendarEventContact records |
| `find-first` | Find first matching calendarEventContact record |
| `get` | Get a calendarEventContact by id |
| `create` | Create a new calendarEventContact |
| `update` | Update an existing calendarEventContact |
| `delete` | Delete a calendarEventContact |

**Fields:**

| Field | Type |
|-------|------|
| `calendarEventId` | UUID |
| `contactId` | UUID |

**Required create fields:** `calendarEventId`, `contactId`

### `contact`

CRUD operations for Contact records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all contact records |
| `find-first` | Find first matching contact record |
| `search <query>` | Search contact records |
| `get` | Get a contact by id |
| `create` | Create a new contact |
| `update` | Update an existing contact |
| `delete` | Delete a contact |

**Fields:**

| Field | Type |
|-------|------|
| `firstName` | String |
| `lastName` | String |
| `email` | String |
| `phone` | String |
| `headline` | String |
| `bio` | String |
| `location` | String |
| `birthday` | Date |
| `relationshipTypes` | String |
| `howWeMet` | String |
| `tags` | String |
| `mainImageId` | UUID |
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `searchTsv` | FullText |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `locationGeo` | GeographyInterface |
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
| `howWeMetTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `firstName`
**Optional create fields (backend defaults):** `lastName`, `email`, `phone`, `headline`, `bio`, `location`, `birthday`, `relationshipTypes`, `howWeMet`, `tags`, `mainImageId`, `embeddingText`, `embedding`, `embeddingStale`, `locationGeo`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `searchTsv`, `embeddingTextBm25Score`, `firstNameTrgmSimilarity`, `lastNameTrgmSimilarity`, `emailTrgmSimilarity`, `phoneTrgmSimilarity`, `headlineTrgmSimilarity`, `bioTrgmSimilarity`, `locationTrgmSimilarity`, `howWeMetTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db contact list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db contact search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db contact list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db contact create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db contact update --embedding "new text to embed" --auto-embed
```

*Full-text search via tsvector (`searchTsv`):*
```bash
agentic-db contact list --where.searchTsv "search query" --select title,tsvRank
```

*BM25 keyword search via `bm25EmbeddingText`:*
```bash
agentic-db contact list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

*Fuzzy search via trigram similarity (`trgmFirstName`):*
```bash
agentic-db contact list --where.trgmFirstName.value "approximate query" --where.trgmFirstName.threshold 0.3 --select title,firstNameTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmLastName`):*
```bash
agentic-db contact list --where.trgmLastName.value "approximate query" --where.trgmLastName.threshold 0.3 --select title,lastNameTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmail`):*
```bash
agentic-db contact list --where.trgmEmail.value "approximate query" --where.trgmEmail.threshold 0.3 --select title,emailTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmPhone`):*
```bash
agentic-db contact list --where.trgmPhone.value "approximate query" --where.trgmPhone.threshold 0.3 --select title,phoneTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmHeadline`):*
```bash
agentic-db contact list --where.trgmHeadline.value "approximate query" --where.trgmHeadline.threshold 0.3 --select title,headlineTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmBio`):*
```bash
agentic-db contact list --where.trgmBio.value "approximate query" --where.trgmBio.threshold 0.3 --select title,bioTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmLocation`):*
```bash
agentic-db contact list --where.trgmLocation.value "approximate query" --where.trgmLocation.threshold 0.3 --select title,locationTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmHowWeMet`):*
```bash
agentic-db contact list --where.trgmHowWeMet.value "approximate query" --where.trgmHowWeMet.threshold 0.3 --select title,howWeMetTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmbeddingText`):*
```bash
agentic-db contact list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

*Composite search (unifiedSearch dispatches to all text adapters):*
```bash
agentic-db contact list --where.unifiedSearch "search query" --select title,tsvRank,embeddingTextBm25Score,firstNameTrgmSimilarity,lastNameTrgmSimilarity,emailTrgmSimilarity,phoneTrgmSimilarity,headlineTrgmSimilarity,bioTrgmSimilarity,locationTrgmSimilarity,howWeMetTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

*Search with pagination and field projection:*
```bash
agentic-db contact list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db contact search "query" --limit 10 --select id,title,searchScore
```


### `calendar-event-note`

CRUD operations for CalendarEventNote records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all calendarEventNote records |
| `find-first` | Find first matching calendarEventNote record |
| `get` | Get a calendarEventNote by id |
| `create` | Create a new calendarEventNote |
| `update` | Update an existing calendarEventNote |
| `delete` | Delete a calendarEventNote |

**Fields:**

| Field | Type |
|-------|------|
| `calendarEventId` | UUID |
| `noteId` | UUID |

**Required create fields:** `calendarEventId`, `noteId`

### `note`

CRUD operations for Note records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all note records |
| `find-first` | Find first matching note record |
| `search <query>` | Search note records |
| `get` | Get a note by id |
| `create` | Create a new note |
| `update` | Update an existing note |
| `delete` | Delete a note |

**Fields:**

| Field | Type |
|-------|------|
| `content` | String |
| `abstract` | String |
| `overview` | String |
| `activeCount` | Int |
| `lastAccessedAt` | Datetime |
| `tags` | String |
| `id` | UUID |
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

**Required create fields:** `content`
**Optional create fields (backend defaults):** `abstract`, `overview`, `activeCount`, `lastAccessedAt`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `contentBm25Score`, `embeddingTextBm25Score`, `contentTrgmSimilarity`, `abstractTrgmSimilarity`, `overviewTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db note list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db note search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db note list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db note create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db note update --embedding "new text to embed" --auto-embed
```

*BM25 keyword search via `bm25Content`:*
```bash
agentic-db note list --where.bm25Content.query "search query" --select title,contentBm25Score
```

*BM25 keyword search via `bm25EmbeddingText`:*
```bash
agentic-db note list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

*Fuzzy search via trigram similarity (`trgmContent`):*
```bash
agentic-db note list --where.trgmContent.value "approximate query" --where.trgmContent.threshold 0.3 --select title,contentTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmAbstract`):*
```bash
agentic-db note list --where.trgmAbstract.value "approximate query" --where.trgmAbstract.threshold 0.3 --select title,abstractTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmOverview`):*
```bash
agentic-db note list --where.trgmOverview.value "approximate query" --where.trgmOverview.threshold 0.3 --select title,overviewTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmbeddingText`):*
```bash
agentic-db note list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

*Composite search (unifiedSearch dispatches to all text adapters):*
```bash
agentic-db note list --where.unifiedSearch "search query" --select title,contentBm25Score,embeddingTextBm25Score,contentTrgmSimilarity,abstractTrgmSimilarity,overviewTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

*Search with pagination and field projection:*
```bash
agentic-db note list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db note search "query" --limit 10 --select id,title,searchScore
```


### `calendar-event-task`

CRUD operations for CalendarEventTask records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all calendarEventTask records |
| `find-first` | Find first matching calendarEventTask record |
| `get` | Get a calendarEventTask by id |
| `create` | Create a new calendarEventTask |
| `update` | Update an existing calendarEventTask |
| `delete` | Delete a calendarEventTask |

**Fields:**

| Field | Type |
|-------|------|
| `calendarEventId` | UUID |
| `taskId` | UUID |

**Required create fields:** `calendarEventId`, `taskId`

### `task`

CRUD operations for Task records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all task records |
| `find-first` | Find first matching task record |
| `search <query>` | Search task records |
| `get` | Get a task by id |
| `create` | Create a new task |
| `update` | Update an existing task |
| `delete` | Delete a task |

**Fields:**

| Field | Type |
|-------|------|
| `agentId` | UUID |
| `title` | String |
| `description` | String |
| `status` | String |
| `priority` | Int |
| `result` | String |
| `startedAt` | Datetime |
| `completedAt` | Datetime |
| `meta` | JSON |
| `id` | UUID |
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

**Required create fields:** `title`
**Optional create fields (backend defaults):** `agentId`, `description`, `status`, `priority`, `result`, `startedAt`, `completedAt`, `meta`, `embeddingText`, `embedding`, `embeddingStale`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `descriptionTrgmSimilarity`, `statusTrgmSimilarity`, `resultTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db task list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db task search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db task list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db task create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db task update --embedding "new text to embed" --auto-embed
```

*BM25 keyword search via `bm25EmbeddingText`:*
```bash
agentic-db task list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

*Fuzzy search via trigram similarity (`trgmTitle`):*
```bash
agentic-db task list --where.trgmTitle.value "approximate query" --where.trgmTitle.threshold 0.3 --select title,titleTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmDescription`):*
```bash
agentic-db task list --where.trgmDescription.value "approximate query" --where.trgmDescription.threshold 0.3 --select title,descriptionTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmStatus`):*
```bash
agentic-db task list --where.trgmStatus.value "approximate query" --where.trgmStatus.threshold 0.3 --select title,statusTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmResult`):*
```bash
agentic-db task list --where.trgmResult.value "approximate query" --where.trgmResult.threshold 0.3 --select title,resultTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmbeddingText`):*
```bash
agentic-db task list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

*Composite search (unifiedSearch dispatches to all text adapters):*
```bash
agentic-db task list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,titleTrgmSimilarity,descriptionTrgmSimilarity,statusTrgmSimilarity,resultTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

*Search with pagination and field projection:*
```bash
agentic-db task list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db task search "query" --limit 10 --select id,title,searchScore
```


### `company`

CRUD operations for Company records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all company records |
| `find-first` | Find first matching company record |
| `search <query>` | Search company records |
| `get` | Get a company by id |
| `create` | Create a new company |
| `update` | Update an existing company |
| `delete` | Delete a company |

**Fields:**

| Field | Type |
|-------|------|
| `name` | String |
| `domain` | String |
| `industry` | String |
| `description` | String |
| `tags` | String |
| `mainImageId` | UUID |
| `id` | UUID |
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

**Required create fields:** `name`
**Optional create fields (backend defaults):** `domain`, `industry`, `description`, `tags`, `mainImageId`, `embeddingText`, `embedding`, `embeddingStale`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `searchTsv`, `embeddingTextBm25Score`, `nameTrgmSimilarity`, `domainTrgmSimilarity`, `industryTrgmSimilarity`, `descriptionTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db company list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db company search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db company list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db company create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db company update --embedding "new text to embed" --auto-embed
```

*Full-text search via tsvector (`searchTsv`):*
```bash
agentic-db company list --where.searchTsv "search query" --select title,tsvRank
```

*BM25 keyword search via `bm25EmbeddingText`:*
```bash
agentic-db company list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

*Fuzzy search via trigram similarity (`trgmName`):*
```bash
agentic-db company list --where.trgmName.value "approximate query" --where.trgmName.threshold 0.3 --select title,nameTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmDomain`):*
```bash
agentic-db company list --where.trgmDomain.value "approximate query" --where.trgmDomain.threshold 0.3 --select title,domainTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmIndustry`):*
```bash
agentic-db company list --where.trgmIndustry.value "approximate query" --where.trgmIndustry.threshold 0.3 --select title,industryTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmDescription`):*
```bash
agentic-db company list --where.trgmDescription.value "approximate query" --where.trgmDescription.threshold 0.3 --select title,descriptionTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmbeddingText`):*
```bash
agentic-db company list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

*Composite search (unifiedSearch dispatches to all text adapters):*
```bash
agentic-db company list --where.unifiedSearch "search query" --select title,tsvRank,embeddingTextBm25Score,nameTrgmSimilarity,domainTrgmSimilarity,industryTrgmSimilarity,descriptionTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

*Search with pagination and field projection:*
```bash
agentic-db company list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db company search "query" --limit 10 --select id,title,searchScore
```


### `deal`

CRUD operations for Deal records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all deal records |
| `find-first` | Find first matching deal record |
| `search <query>` | Search deal records |
| `get` | Get a deal by id |
| `create` | Create a new deal |
| `update` | Update an existing deal |
| `delete` | Delete a deal |

**Fields:**

| Field | Type |
|-------|------|
| `name` | String |
| `stage` | String |
| `value` | BigFloat |
| `currency` | String |
| `expectedCloseDate` | Datetime |
| `notesText` | String |
| `tags` | String |
| `id` | UUID |
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

**Required create fields:** `name`
**Optional create fields (backend defaults):** `stage`, `value`, `currency`, `expectedCloseDate`, `notesText`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `stageTrgmSimilarity`, `currencyTrgmSimilarity`, `notesTextTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db deal list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db deal search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db deal list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db deal create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db deal update --embedding "new text to embed" --auto-embed
```

*BM25 keyword search via `bm25EmbeddingText`:*
```bash
agentic-db deal list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

*Fuzzy search via trigram similarity (`trgmName`):*
```bash
agentic-db deal list --where.trgmName.value "approximate query" --where.trgmName.threshold 0.3 --select title,nameTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmStage`):*
```bash
agentic-db deal list --where.trgmStage.value "approximate query" --where.trgmStage.threshold 0.3 --select title,stageTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmCurrency`):*
```bash
agentic-db deal list --where.trgmCurrency.value "approximate query" --where.trgmCurrency.threshold 0.3 --select title,currencyTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmNotesText`):*
```bash
agentic-db deal list --where.trgmNotesText.value "approximate query" --where.trgmNotesText.threshold 0.3 --select title,notesTextTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmbeddingText`):*
```bash
agentic-db deal list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

*Composite search (unifiedSearch dispatches to all text adapters):*
```bash
agentic-db deal list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,nameTrgmSimilarity,stageTrgmSimilarity,currencyTrgmSimilarity,notesTextTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

*Search with pagination and field projection:*
```bash
agentic-db deal list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db deal search "query" --limit 10 --select id,title,searchScore
```


### `company-document`

CRUD operations for CompanyDocument records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all companyDocument records |
| `find-first` | Find first matching companyDocument record |
| `get` | Get a companyDocument by id |
| `create` | Create a new companyDocument |
| `update` | Update an existing companyDocument |
| `delete` | Delete a companyDocument |

**Fields:**

| Field | Type |
|-------|------|
| `companyId` | UUID |
| `documentId` | UUID |

**Required create fields:** `companyId`, `documentId`

### `document`

CRUD operations for Document records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all document records |
| `find-first` | Find first matching document record |
| `search <query>` | Search document records |
| `get` | Get a document by id |
| `create` | Create a new document |
| `update` | Update an existing document |
| `delete` | Delete a document |

**Fields:**

| Field | Type |
|-------|------|
| `title` | String |
| `content` | String |
| `metadata` | JSON |
| `repoName` | String |
| `filePath` | String |
| `commitHash` | String |
| `tags` | String |
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `contentBm25Score` | Float |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `titleTrgmSimilarity` | Float |
| `contentTrgmSimilarity` | Float |
| `repoNameTrgmSimilarity` | Float |
| `filePathTrgmSimilarity` | Float |
| `commitHashTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `content`
**Optional create fields (backend defaults):** `title`, `metadata`, `repoName`, `filePath`, `commitHash`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `contentBm25Score`, `embeddingTextBm25Score`, `titleTrgmSimilarity`, `contentTrgmSimilarity`, `repoNameTrgmSimilarity`, `filePathTrgmSimilarity`, `commitHashTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db document list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db document search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db document list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db document create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db document update --embedding "new text to embed" --auto-embed
```

*BM25 keyword search via `bm25Content`:*
```bash
agentic-db document list --where.bm25Content.query "search query" --select title,contentBm25Score
```

*BM25 keyword search via `bm25EmbeddingText`:*
```bash
agentic-db document list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

*Fuzzy search via trigram similarity (`trgmTitle`):*
```bash
agentic-db document list --where.trgmTitle.value "approximate query" --where.trgmTitle.threshold 0.3 --select title,titleTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmContent`):*
```bash
agentic-db document list --where.trgmContent.value "approximate query" --where.trgmContent.threshold 0.3 --select title,contentTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmRepoName`):*
```bash
agentic-db document list --where.trgmRepoName.value "approximate query" --where.trgmRepoName.threshold 0.3 --select title,repoNameTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmFilePath`):*
```bash
agentic-db document list --where.trgmFilePath.value "approximate query" --where.trgmFilePath.threshold 0.3 --select title,filePathTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmCommitHash`):*
```bash
agentic-db document list --where.trgmCommitHash.value "approximate query" --where.trgmCommitHash.threshold 0.3 --select title,commitHashTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmbeddingText`):*
```bash
agentic-db document list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

*Composite search (unifiedSearch dispatches to all text adapters):*
```bash
agentic-db document list --where.unifiedSearch "search query" --select title,contentBm25Score,embeddingTextBm25Score,titleTrgmSimilarity,contentTrgmSimilarity,repoNameTrgmSimilarity,filePathTrgmSimilarity,commitHashTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

*Search with pagination and field projection:*
```bash
agentic-db document list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db document search "query" --limit 10 --select id,title,searchScore
```


### `company-event`

CRUD operations for CompanyEvent records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all companyEvent records |
| `find-first` | Find first matching companyEvent record |
| `get` | Get a companyEvent by id |
| `create` | Create a new companyEvent |
| `update` | Update an existing companyEvent |
| `delete` | Delete a companyEvent |

**Fields:**

| Field | Type |
|-------|------|
| `companyId` | UUID |
| `eventId` | UUID |

**Required create fields:** `companyId`, `eventId`

### `event`

CRUD operations for Event records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all event records |
| `find-first` | Find first matching event record |
| `search <query>` | Search event records |
| `get` | Get a event by id |
| `create` | Create a new event |
| `update` | Update an existing event |
| `delete` | Delete a event |

**Fields:**

| Field | Type |
|-------|------|
| `name` | String |
| `eventType` | String |
| `location` | String |
| `city` | String |
| `startedAt` | Datetime |
| `endedAt` | Datetime |
| `notesText` | String |
| `tags` | String |
| `mainImageId` | UUID |
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `searchTsv` | FullText |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `locationGeo` | GeographyInterface |
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

**Required create fields:** `name`
**Optional create fields (backend defaults):** `eventType`, `location`, `city`, `startedAt`, `endedAt`, `notesText`, `tags`, `mainImageId`, `embeddingText`, `embedding`, `embeddingStale`, `locationGeo`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `searchTsv`, `embeddingTextBm25Score`, `nameTrgmSimilarity`, `eventTypeTrgmSimilarity`, `locationTrgmSimilarity`, `cityTrgmSimilarity`, `notesTextTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db event list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db event search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db event list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db event create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db event update --embedding "new text to embed" --auto-embed
```

*Full-text search via tsvector (`searchTsv`):*
```bash
agentic-db event list --where.searchTsv "search query" --select title,tsvRank
```

*BM25 keyword search via `bm25EmbeddingText`:*
```bash
agentic-db event list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

*Fuzzy search via trigram similarity (`trgmName`):*
```bash
agentic-db event list --where.trgmName.value "approximate query" --where.trgmName.threshold 0.3 --select title,nameTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEventType`):*
```bash
agentic-db event list --where.trgmEventType.value "approximate query" --where.trgmEventType.threshold 0.3 --select title,eventTypeTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmLocation`):*
```bash
agentic-db event list --where.trgmLocation.value "approximate query" --where.trgmLocation.threshold 0.3 --select title,locationTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmCity`):*
```bash
agentic-db event list --where.trgmCity.value "approximate query" --where.trgmCity.threshold 0.3 --select title,cityTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmNotesText`):*
```bash
agentic-db event list --where.trgmNotesText.value "approximate query" --where.trgmNotesText.threshold 0.3 --select title,notesTextTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmbeddingText`):*
```bash
agentic-db event list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

*Composite search (unifiedSearch dispatches to all text adapters):*
```bash
agentic-db event list --where.unifiedSearch "search query" --select title,tsvRank,embeddingTextBm25Score,nameTrgmSimilarity,eventTypeTrgmSimilarity,locationTrgmSimilarity,cityTrgmSimilarity,notesTextTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

*Search with pagination and field projection:*
```bash
agentic-db event list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db event search "query" --limit 10 --select id,title,searchScore
```


### `company-image`

CRUD operations for CompanyImage records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all companyImage records |
| `find-first` | Find first matching companyImage record |
| `get` | Get a companyImage by id |
| `create` | Create a new companyImage |
| `update` | Update an existing companyImage |
| `delete` | Delete a companyImage |

**Fields:**

| Field | Type |
|-------|------|
| `companyId` | UUID |
| `imageId` | UUID |

**Required create fields:** `companyId`, `imageId`

### `image`

CRUD operations for Image records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all image records |
| `find-first` | Find first matching image record |
| `search <query>` | Search image records |
| `get` | Get a image by id |
| `create` | Create a new image |
| `update` | Update an existing image |
| `delete` | Delete a image |

**Fields:**

| Field | Type |
|-------|------|
| `url` | String |
| `meta` | JSON |
| `altText` | String |
| `caption` | String |
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `url`
**Optional create fields (backend defaults):** `meta`, `altText`, `caption`, `embedding`, `embeddingStale`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db image list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db image search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db image list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db image create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db image update --embedding "new text to embed" --auto-embed
```

*Search with pagination and field projection:*
```bash
agentic-db image list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db image search "query" --limit 10 --select id,title,searchScore
```


### `company-link`

CRUD operations for CompanyLink records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all companyLink records |
| `find-first` | Find first matching companyLink record |
| `search <query>` | Search companyLink records |
| `get` | Get a companyLink by id |
| `create` | Create a new companyLink |
| `update` | Update an existing companyLink |
| `delete` | Delete a companyLink |

**Fields:**

| Field | Type |
|-------|------|
| `title` | String |
| `url` | String |
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `companyId` | UUID |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `url`, `companyId`
**Optional create fields (backend defaults):** `title`, `embedding`, `embeddingStale`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db company-link list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db company-link search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db company-link list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db company-link create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db company-link update --embedding "new text to embed" --auto-embed
```

*Search with pagination and field projection:*
```bash
agentic-db company-link list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db company-link search "query" --limit 10 --select id,title,searchScore
```


### `memory`

CRUD operations for Memory records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all memory records |
| `find-first` | Find first matching memory record |
| `search <query>` | Search memory records |
| `get` | Get a memory by id |
| `create` | Create a new memory |
| `update` | Update an existing memory |
| `delete` | Delete a memory |

**Fields:**

| Field | Type |
|-------|------|
| `title` | String |
| `content` | String |
| `location` | String |
| `occurredAt` | Datetime |
| `mood` | String |
| `tags` | String |
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `locationGeo` | GeographyInterface |
| `agentId` | UUID |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `titleTrgmSimilarity` | Float |
| `contentTrgmSimilarity` | Float |
| `locationTrgmSimilarity` | Float |
| `moodTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `title`
**Optional create fields (backend defaults):** `content`, `location`, `occurredAt`, `mood`, `tags`, `embeddingText`, `embedding`, `embeddingStale`, `locationGeo`, `agentId`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `contentTrgmSimilarity`, `locationTrgmSimilarity`, `moodTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db memory list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db memory search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db memory list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db memory create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db memory update --embedding "new text to embed" --auto-embed
```

*BM25 keyword search via `bm25EmbeddingText`:*
```bash
agentic-db memory list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

*Fuzzy search via trigram similarity (`trgmTitle`):*
```bash
agentic-db memory list --where.trgmTitle.value "approximate query" --where.trgmTitle.threshold 0.3 --select title,titleTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmContent`):*
```bash
agentic-db memory list --where.trgmContent.value "approximate query" --where.trgmContent.threshold 0.3 --select title,contentTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmLocation`):*
```bash
agentic-db memory list --where.trgmLocation.value "approximate query" --where.trgmLocation.threshold 0.3 --select title,locationTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmMood`):*
```bash
agentic-db memory list --where.trgmMood.value "approximate query" --where.trgmMood.threshold 0.3 --select title,moodTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmbeddingText`):*
```bash
agentic-db memory list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

*Composite search (unifiedSearch dispatches to all text adapters):*
```bash
agentic-db memory list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,titleTrgmSimilarity,contentTrgmSimilarity,locationTrgmSimilarity,moodTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

*Search with pagination and field projection:*
```bash
agentic-db memory list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db memory search "query" --limit 10 --select id,title,searchScore
```


### `company-memory`

CRUD operations for CompanyMemory records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all companyMemory records |
| `find-first` | Find first matching companyMemory record |
| `get` | Get a companyMemory by id |
| `create` | Create a new companyMemory |
| `update` | Update an existing companyMemory |
| `delete` | Delete a companyMemory |

**Fields:**

| Field | Type |
|-------|------|
| `companyId` | UUID |
| `memoryId` | UUID |

**Required create fields:** `companyId`, `memoryId`

### `company-note`

CRUD operations for CompanyNote records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all companyNote records |
| `find-first` | Find first matching companyNote record |
| `get` | Get a companyNote by id |
| `create` | Create a new companyNote |
| `update` | Update an existing companyNote |
| `delete` | Delete a companyNote |

**Fields:**

| Field | Type |
|-------|------|
| `companyId` | UUID |
| `noteId` | UUID |

**Required create fields:** `companyId`, `noteId`

### `contact-address`

CRUD operations for ContactAddress records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all contactAddress records |
| `find-first` | Find first matching contactAddress record |
| `get` | Get a contactAddress by id |
| `create` | Create a new contactAddress |
| `update` | Update an existing contactAddress |
| `delete` | Delete a contactAddress |

**Fields:**

| Field | Type |
|-------|------|
| `street` | String |
| `city` | String |
| `state` | String |
| `postalCode` | String |
| `country` | String |
| `addressType` | String |
| `isPrimary` | Boolean |
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `contactId` | UUID |

**Required create fields:** `contactId`
**Optional create fields (backend defaults):** `street`, `city`, `state`, `postalCode`, `country`, `addressType`, `isPrimary`

### `contact-company`

CRUD operations for ContactCompany records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all contactCompany records |
| `find-first` | Find first matching contactCompany record |
| `get` | Get a contactCompany by id |
| `create` | Create a new contactCompany |
| `update` | Update an existing contactCompany |
| `delete` | Delete a contactCompany |

**Fields:**

| Field | Type |
|-------|------|
| `contactId` | UUID |
| `companyId` | UUID |

**Required create fields:** `contactId`, `companyId`

### `contact-email`

CRUD operations for ContactEmail records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all contactEmail records |
| `find-first` | Find first matching contactEmail record |
| `get` | Get a contactEmail by id |
| `create` | Create a new contactEmail |
| `update` | Update an existing contactEmail |
| `delete` | Delete a contactEmail |

**Fields:**

| Field | Type |
|-------|------|
| `email` | String |
| `emailType` | String |
| `isPrimary` | Boolean |
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `contactId` | UUID |

**Required create fields:** `email`, `contactId`
**Optional create fields (backend defaults):** `emailType`, `isPrimary`

### `email`

CRUD operations for Email records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all email records |
| `find-first` | Find first matching email record |
| `search <query>` | Search email records |
| `get` | Get a email by id |
| `create` | Create a new email |
| `update` | Update an existing email |
| `delete` | Delete a email |

**Fields:**

| Field | Type |
|-------|------|
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
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `searchTsv` | FullText |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `emailThreadId` | UUID |
| `searchTsvRank` | Float |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `providerMessageIdTrgmSimilarity` | Float |
| `subjectTrgmSimilarity` | Float |
| `bodyTextTrgmSimilarity` | Float |
| `bodyHtmlTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `emailThreadId`
**Optional create fields (backend defaults):** `providerMessageId`, `fromContactId`, `to`, `cc`, `bcc`, `subject`, `bodyText`, `bodyHtml`, `sentAt`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `searchTsv`, `embeddingTextBm25Score`, `providerMessageIdTrgmSimilarity`, `subjectTrgmSimilarity`, `bodyTextTrgmSimilarity`, `bodyHtmlTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db email list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db email search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db email list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db email create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db email update --embedding "new text to embed" --auto-embed
```

*Full-text search via tsvector (`searchTsv`):*
```bash
agentic-db email list --where.searchTsv "search query" --select title,tsvRank
```

*BM25 keyword search via `bm25EmbeddingText`:*
```bash
agentic-db email list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

*Fuzzy search via trigram similarity (`trgmProviderMessageId`):*
```bash
agentic-db email list --where.trgmProviderMessageId.value "approximate query" --where.trgmProviderMessageId.threshold 0.3 --select title,providerMessageIdTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmSubject`):*
```bash
agentic-db email list --where.trgmSubject.value "approximate query" --where.trgmSubject.threshold 0.3 --select title,subjectTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmBodyText`):*
```bash
agentic-db email list --where.trgmBodyText.value "approximate query" --where.trgmBodyText.threshold 0.3 --select title,bodyTextTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmBodyHtml`):*
```bash
agentic-db email list --where.trgmBodyHtml.value "approximate query" --where.trgmBodyHtml.threshold 0.3 --select title,bodyHtmlTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmbeddingText`):*
```bash
agentic-db email list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

*Composite search (unifiedSearch dispatches to all text adapters):*
```bash
agentic-db email list --where.unifiedSearch "search query" --select title,tsvRank,embeddingTextBm25Score,providerMessageIdTrgmSimilarity,subjectTrgmSimilarity,bodyTextTrgmSimilarity,bodyHtmlTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

*Search with pagination and field projection:*
```bash
agentic-db email list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db email search "query" --limit 10 --select id,title,searchScore
```


### `email-thread`

CRUD operations for EmailThread records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all emailThread records |
| `find-first` | Find first matching emailThread record |
| `search <query>` | Search emailThread records |
| `get` | Get a emailThread by id |
| `create` | Create a new emailThread |
| `update` | Update an existing emailThread |
| `delete` | Delete a emailThread |

**Fields:**

| Field | Type |
|-------|------|
| `providerThreadId` | String |
| `subject` | String |
| `lastMessageAt` | Datetime |
| `summary` | String |
| `status` | String |
| `tags` | String |
| `id` | UUID |
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

**Optional create fields (backend defaults):** `providerThreadId`, `subject`, `lastMessageAt`, `summary`, `status`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `searchTsv`, `embeddingTextBm25Score`, `providerThreadIdTrgmSimilarity`, `subjectTrgmSimilarity`, `summaryTrgmSimilarity`, `statusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db email-thread list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db email-thread search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db email-thread list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db email-thread create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db email-thread update --embedding "new text to embed" --auto-embed
```

*Full-text search via tsvector (`searchTsv`):*
```bash
agentic-db email-thread list --where.searchTsv "search query" --select title,tsvRank
```

*BM25 keyword search via `bm25EmbeddingText`:*
```bash
agentic-db email-thread list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

*Fuzzy search via trigram similarity (`trgmProviderThreadId`):*
```bash
agentic-db email-thread list --where.trgmProviderThreadId.value "approximate query" --where.trgmProviderThreadId.threshold 0.3 --select title,providerThreadIdTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmSubject`):*
```bash
agentic-db email-thread list --where.trgmSubject.value "approximate query" --where.trgmSubject.threshold 0.3 --select title,subjectTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmSummary`):*
```bash
agentic-db email-thread list --where.trgmSummary.value "approximate query" --where.trgmSummary.threshold 0.3 --select title,summaryTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmStatus`):*
```bash
agentic-db email-thread list --where.trgmStatus.value "approximate query" --where.trgmStatus.threshold 0.3 --select title,statusTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmbeddingText`):*
```bash
agentic-db email-thread list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

*Composite search (unifiedSearch dispatches to all text adapters):*
```bash
agentic-db email-thread list --where.unifiedSearch "search query" --select title,tsvRank,embeddingTextBm25Score,providerThreadIdTrgmSimilarity,subjectTrgmSimilarity,summaryTrgmSimilarity,statusTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

*Search with pagination and field projection:*
```bash
agentic-db email-thread list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db email-thread search "query" --limit 10 --select id,title,searchScore
```


### `contact-event`

CRUD operations for ContactEvent records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all contactEvent records |
| `find-first` | Find first matching contactEvent record |
| `get` | Get a contactEvent by id |
| `create` | Create a new contactEvent |
| `update` | Update an existing contactEvent |
| `delete` | Delete a contactEvent |

**Fields:**

| Field | Type |
|-------|------|
| `contactId` | UUID |
| `eventId` | UUID |

**Required create fields:** `contactId`, `eventId`

### `expense`

CRUD operations for Expense records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all expense records |
| `find-first` | Find first matching expense record |
| `search <query>` | Search expense records |
| `get` | Get a expense by id |
| `create` | Create a new expense |
| `update` | Update an existing expense |
| `delete` | Delete a expense |

**Fields:**

| Field | Type |
|-------|------|
| `description` | String |
| `amount` | BigFloat |
| `currency` | String |
| `category` | String |
| `occurredAt` | Datetime |
| `vendor` | String |
| `notes` | String |
| `tags` | String |
| `id` | UUID |
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

**Optional create fields (backend defaults):** `description`, `amount`, `currency`, `category`, `occurredAt`, `vendor`, `notes`, `tags`, `embeddingText`, `embedding`, `embeddingStale`, `tripId`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `embeddingTextBm25Score`, `descriptionTrgmSimilarity`, `currencyTrgmSimilarity`, `categoryTrgmSimilarity`, `vendorTrgmSimilarity`, `notesTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db expense list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db expense search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db expense list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db expense create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db expense update --embedding "new text to embed" --auto-embed
```

*BM25 keyword search via `bm25EmbeddingText`:*
```bash
agentic-db expense list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

*Fuzzy search via trigram similarity (`trgmDescription`):*
```bash
agentic-db expense list --where.trgmDescription.value "approximate query" --where.trgmDescription.threshold 0.3 --select title,descriptionTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmCurrency`):*
```bash
agentic-db expense list --where.trgmCurrency.value "approximate query" --where.trgmCurrency.threshold 0.3 --select title,currencyTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmCategory`):*
```bash
agentic-db expense list --where.trgmCategory.value "approximate query" --where.trgmCategory.threshold 0.3 --select title,categoryTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmVendor`):*
```bash
agentic-db expense list --where.trgmVendor.value "approximate query" --where.trgmVendor.threshold 0.3 --select title,vendorTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmNotes`):*
```bash
agentic-db expense list --where.trgmNotes.value "approximate query" --where.trgmNotes.threshold 0.3 --select title,notesTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmbeddingText`):*
```bash
agentic-db expense list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

*Composite search (unifiedSearch dispatches to all text adapters):*
```bash
agentic-db expense list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,descriptionTrgmSimilarity,currencyTrgmSimilarity,categoryTrgmSimilarity,vendorTrgmSimilarity,notesTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

*Search with pagination and field projection:*
```bash
agentic-db expense list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db expense search "query" --limit 10 --select id,title,searchScore
```


### `contact-image`

CRUD operations for ContactImage records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all contactImage records |
| `find-first` | Find first matching contactImage record |
| `get` | Get a contactImage by id |
| `create` | Create a new contactImage |
| `update` | Update an existing contactImage |
| `delete` | Delete a contactImage |

**Fields:**

| Field | Type |
|-------|------|
| `contactId` | UUID |
| `imageId` | UUID |

**Required create fields:** `contactId`, `imageId`

### `contact-link`

CRUD operations for ContactLink records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all contactLink records |
| `find-first` | Find first matching contactLink record |
| `search <query>` | Search contactLink records |
| `get` | Get a contactLink by id |
| `create` | Create a new contactLink |
| `update` | Update an existing contactLink |
| `delete` | Delete a contactLink |

**Fields:**

| Field | Type |
|-------|------|
| `title` | String |
| `url` | String |
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `contactId` | UUID |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `url`, `contactId`
**Optional create fields (backend defaults):** `title`, `embedding`, `embeddingStale`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db contact-link list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db contact-link search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db contact-link list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db contact-link create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db contact-link update --embedding "new text to embed" --auto-embed
```

*Search with pagination and field projection:*
```bash
agentic-db contact-link list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db contact-link search "query" --limit 10 --select id,title,searchScore
```


### `contact-memory`

CRUD operations for ContactMemory records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all contactMemory records |
| `find-first` | Find first matching contactMemory record |
| `get` | Get a contactMemory by id |
| `create` | Create a new contactMemory |
| `update` | Update an existing contactMemory |
| `delete` | Delete a contactMemory |

**Fields:**

| Field | Type |
|-------|------|
| `contactId` | UUID |
| `memoryId` | UUID |

**Required create fields:** `contactId`, `memoryId`

### `contact-note`

CRUD operations for ContactNote records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all contactNote records |
| `find-first` | Find first matching contactNote record |
| `get` | Get a contactNote by id |
| `create` | Create a new contactNote |
| `update` | Update an existing contactNote |
| `delete` | Delete a contactNote |

**Fields:**

| Field | Type |
|-------|------|
| `contactId` | UUID |
| `noteId` | UUID |

**Required create fields:** `contactId`, `noteId`

### `contact-phone`

CRUD operations for ContactPhone records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all contactPhone records |
| `find-first` | Find first matching contactPhone record |
| `get` | Get a contactPhone by id |
| `create` | Create a new contactPhone |
| `update` | Update an existing contactPhone |
| `delete` | Delete a contactPhone |

**Fields:**

| Field | Type |
|-------|------|
| `phone` | String |
| `phoneType` | String |
| `isPrimary` | Boolean |
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `contactId` | UUID |

**Required create fields:** `phone`, `contactId`
**Optional create fields (backend defaults):** `phoneType`, `isPrimary`

### `project`

CRUD operations for Project records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all project records |
| `find-first` | Find first matching project record |
| `search <query>` | Search project records |
| `get` | Get a project by id |
| `create` | Create a new project |
| `update` | Update an existing project |
| `delete` | Delete a project |

**Fields:**

| Field | Type |
|-------|------|
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
| `id` | UUID |
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

**Required create fields:** `name`
**Optional create fields (backend defaults):** `description`, `status`, `projectType`, `priority`, `startedAt`, `targetDate`, `completedAt`, `config`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `statusTrgmSimilarity`, `projectTypeTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db project list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db project search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db project list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db project create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db project update --embedding "new text to embed" --auto-embed
```

*BM25 keyword search via `bm25EmbeddingText`:*
```bash
agentic-db project list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

*Fuzzy search via trigram similarity (`trgmName`):*
```bash
agentic-db project list --where.trgmName.value "approximate query" --where.trgmName.threshold 0.3 --select title,nameTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmDescription`):*
```bash
agentic-db project list --where.trgmDescription.value "approximate query" --where.trgmDescription.threshold 0.3 --select title,descriptionTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmStatus`):*
```bash
agentic-db project list --where.trgmStatus.value "approximate query" --where.trgmStatus.threshold 0.3 --select title,statusTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmProjectType`):*
```bash
agentic-db project list --where.trgmProjectType.value "approximate query" --where.trgmProjectType.threshold 0.3 --select title,projectTypeTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmbeddingText`):*
```bash
agentic-db project list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

*Composite search (unifiedSearch dispatches to all text adapters):*
```bash
agentic-db project list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,nameTrgmSimilarity,descriptionTrgmSimilarity,statusTrgmSimilarity,projectTypeTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

*Search with pagination and field projection:*
```bash
agentic-db project list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db project search "query" --limit 10 --select id,title,searchScore
```


### `contact-relationship`

CRUD operations for ContactRelationship records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all contactRelationship records |
| `find-first` | Find first matching contactRelationship record |
| `get` | Get a contactRelationship by id |
| `create` | Create a new contactRelationship |
| `update` | Update an existing contactRelationship |
| `delete` | Delete a contactRelationship |

**Fields:**

| Field | Type |
|-------|------|
| `contactId` | UUID |
| `relatedContactId` | UUID |

**Required create fields:** `contactId`, `relatedContactId`

### `contacts-chunk`

CRUD operations for ContactsChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all contactsChunk records |
| `find-first` | Find first matching contactsChunk record |
| `search <query>` | Search contactsChunk records |
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
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db contacts-chunk list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db contacts-chunk search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db contacts-chunk list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db contacts-chunk create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db contacts-chunk update --embedding "new text to embed" --auto-embed
```

*Search with pagination and field projection:*
```bash
agentic-db contacts-chunk list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db contacts-chunk search "query" --limit 10 --select id,title,searchScore
```


### `conversation`

CRUD operations for Conversation records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all conversation records |
| `find-first` | Find first matching conversation record |
| `search <query>` | Search conversation records |
| `get` | Get a conversation by id |
| `create` | Create a new conversation |
| `update` | Update an existing conversation |
| `delete` | Delete a conversation |

**Fields:**

| Field | Type |
|-------|------|
| `title` | String |
| `agentId` | UUID |
| `status` | String |
| `meta` | JSON |
| `id` | UUID |
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

**Required create fields:** `title`
**Optional create fields (backend defaults):** `agentId`, `status`, `meta`, `embeddingText`, `embedding`, `embeddingStale`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `statusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db conversation list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db conversation search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db conversation list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db conversation create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db conversation update --embedding "new text to embed" --auto-embed
```

*BM25 keyword search via `bm25EmbeddingText`:*
```bash
agentic-db conversation list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

*Fuzzy search via trigram similarity (`trgmTitle`):*
```bash
agentic-db conversation list --where.trgmTitle.value "approximate query" --where.trgmTitle.threshold 0.3 --select title,titleTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmStatus`):*
```bash
agentic-db conversation list --where.trgmStatus.value "approximate query" --where.trgmStatus.threshold 0.3 --select title,statusTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmbeddingText`):*
```bash
agentic-db conversation list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

*Composite search (unifiedSearch dispatches to all text adapters):*
```bash
agentic-db conversation list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,titleTrgmSimilarity,statusTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

*Search with pagination and field projection:*
```bash
agentic-db conversation list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db conversation search "query" --limit 10 --select id,title,searchScore
```


### `deal-company`

CRUD operations for DealCompany records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all dealCompany records |
| `find-first` | Find first matching dealCompany record |
| `get` | Get a dealCompany by id |
| `create` | Create a new dealCompany |
| `update` | Update an existing dealCompany |
| `delete` | Delete a dealCompany |

**Fields:**

| Field | Type |
|-------|------|
| `dealId` | UUID |
| `companyId` | UUID |

**Required create fields:** `dealId`, `companyId`

### `deal-contact`

CRUD operations for DealContact records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all dealContact records |
| `find-first` | Find first matching dealContact record |
| `get` | Get a dealContact by id |
| `create` | Create a new dealContact |
| `update` | Update an existing dealContact |
| `delete` | Delete a dealContact |

**Fields:**

| Field | Type |
|-------|------|
| `dealId` | UUID |
| `contactId` | UUID |

**Required create fields:** `dealId`, `contactId`

### `deal-note`

CRUD operations for DealNote records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all dealNote records |
| `find-first` | Find first matching dealNote record |
| `get` | Get a dealNote by id |
| `create` | Create a new dealNote |
| `update` | Update an existing dealNote |
| `delete` | Delete a dealNote |

**Fields:**

| Field | Type |
|-------|------|
| `dealId` | UUID |
| `noteId` | UUID |

**Required create fields:** `dealId`, `noteId`

### `documents-chunk`

CRUD operations for DocumentsChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all documentsChunk records |
| `find-first` | Find first matching documentsChunk record |
| `search <query>` | Search documentsChunk records |
| `get` | Get a documentsChunk by id |
| `create` | Create a new documentsChunk |
| `update` | Update an existing documentsChunk |
| `delete` | Delete a documentsChunk |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `documentsId` | UUID |
| `content` | String |
| `chunkIndex` | Int |
| `embedding` | Vector |
| `metadata` | JSON |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `documentsId`, `content`
**Optional create fields (backend defaults):** `chunkIndex`, `embedding`, `metadata`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db documents-chunk list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db documents-chunk search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db documents-chunk list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db documents-chunk create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db documents-chunk update --embedding "new text to embed" --auto-embed
```

*Search with pagination and field projection:*
```bash
agentic-db documents-chunk list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db documents-chunk search "query" --limit 10 --select id,title,searchScore
```


### `email-attachment`

CRUD operations for EmailAttachment records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all emailAttachment records |
| `find-first` | Find first matching emailAttachment record |
| `get` | Get a emailAttachment by id |
| `create` | Create a new emailAttachment |
| `update` | Update an existing emailAttachment |
| `delete` | Delete a emailAttachment |

**Fields:**

| Field | Type |
|-------|------|
| `filename` | String |
| `contentType` | String |
| `sizeBytes` | Int |
| `storageUrl` | String |
| `providerAttachmentId` | String |
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `emailId` | UUID |

**Required create fields:** `filename`, `emailId`
**Optional create fields (backend defaults):** `contentType`, `sizeBytes`, `storageUrl`, `providerAttachmentId`

### `email-note`

CRUD operations for EmailNote records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all emailNote records |
| `find-first` | Find first matching emailNote record |
| `get` | Get a emailNote by id |
| `create` | Create a new emailNote |
| `update` | Update an existing emailNote |
| `delete` | Delete a emailNote |

**Fields:**

| Field | Type |
|-------|------|
| `emailId` | UUID |
| `noteId` | UUID |

**Required create fields:** `emailId`, `noteId`

### `email-recipient`

CRUD operations for EmailRecipient records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all emailRecipient records |
| `find-first` | Find first matching emailRecipient record |
| `get` | Get a emailRecipient by id |
| `create` | Create a new emailRecipient |
| `update` | Update an existing emailRecipient |
| `delete` | Delete a emailRecipient |

**Fields:**

| Field | Type |
|-------|------|
| `emailId` | UUID |
| `contactId` | UUID |

**Required create fields:** `emailId`, `contactId`

### `event-image`

CRUD operations for EventImage records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all eventImage records |
| `find-first` | Find first matching eventImage record |
| `get` | Get a eventImage by id |
| `create` | Create a new eventImage |
| `update` | Update an existing eventImage |
| `delete` | Delete a eventImage |

**Fields:**

| Field | Type |
|-------|------|
| `eventId` | UUID |
| `imageId` | UUID |

**Required create fields:** `eventId`, `imageId`

### `event-link`

CRUD operations for EventLink records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all eventLink records |
| `find-first` | Find first matching eventLink record |
| `search <query>` | Search eventLink records |
| `get` | Get a eventLink by id |
| `create` | Create a new eventLink |
| `update` | Update an existing eventLink |
| `delete` | Delete a eventLink |

**Fields:**

| Field | Type |
|-------|------|
| `title` | String |
| `url` | String |
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `eventId` | UUID |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `url`, `eventId`
**Optional create fields (backend defaults):** `title`, `embedding`, `embeddingStale`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db event-link list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db event-link search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db event-link list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db event-link create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db event-link update --embedding "new text to embed" --auto-embed
```

*Search with pagination and field projection:*
```bash
agentic-db event-link list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db event-link search "query" --limit 10 --select id,title,searchScore
```


### `event-note`

CRUD operations for EventNote records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all eventNote records |
| `find-first` | Find first matching eventNote record |
| `get` | Get a eventNote by id |
| `create` | Create a new eventNote |
| `update` | Update an existing eventNote |
| `delete` | Delete a eventNote |

**Fields:**

| Field | Type |
|-------|------|
| `eventId` | UUID |
| `noteId` | UUID |

**Required create fields:** `eventId`, `noteId`

### `event-venue`

CRUD operations for EventVenue records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all eventVenue records |
| `find-first` | Find first matching eventVenue record |
| `get` | Get a eventVenue by id |
| `create` | Create a new eventVenue |
| `update` | Update an existing eventVenue |
| `delete` | Delete a eventVenue |

**Fields:**

| Field | Type |
|-------|------|
| `eventId` | UUID |
| `venueId` | UUID |

**Required create fields:** `eventId`, `venueId`

### `venue`

CRUD operations for Venue records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all venue records |
| `find-first` | Find first matching venue record |
| `search <query>` | Search venue records |
| `get` | Get a venue by id |
| `create` | Create a new venue |
| `update` | Update an existing venue |
| `delete` | Delete a venue |

**Fields:**

| Field | Type |
|-------|------|
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
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `searchTsv` | FullText |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `location` | GeographyInterface |
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

**Required create fields:** `name`
**Optional create fields (backend defaults):** `address`, `neighborhood`, `city`, `category`, `status`, `googlePlaceId`, `rating`, `priceLevel`, `isFavorite`, `notes`, `tags`, `mainImageId`, `embeddingText`, `embedding`, `embeddingStale`, `location`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `searchTsv`, `embeddingTextBm25Score`, `nameTrgmSimilarity`, `addressTrgmSimilarity`, `neighborhoodTrgmSimilarity`, `cityTrgmSimilarity`, `categoryTrgmSimilarity`, `statusTrgmSimilarity`, `googlePlaceIdTrgmSimilarity`, `priceLevelTrgmSimilarity`, `notesTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db venue list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db venue search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db venue list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db venue create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db venue update --embedding "new text to embed" --auto-embed
```

*Full-text search via tsvector (`searchTsv`):*
```bash
agentic-db venue list --where.searchTsv "search query" --select title,tsvRank
```

*BM25 keyword search via `bm25EmbeddingText`:*
```bash
agentic-db venue list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

*Fuzzy search via trigram similarity (`trgmName`):*
```bash
agentic-db venue list --where.trgmName.value "approximate query" --where.trgmName.threshold 0.3 --select title,nameTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmAddress`):*
```bash
agentic-db venue list --where.trgmAddress.value "approximate query" --where.trgmAddress.threshold 0.3 --select title,addressTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmNeighborhood`):*
```bash
agentic-db venue list --where.trgmNeighborhood.value "approximate query" --where.trgmNeighborhood.threshold 0.3 --select title,neighborhoodTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmCity`):*
```bash
agentic-db venue list --where.trgmCity.value "approximate query" --where.trgmCity.threshold 0.3 --select title,cityTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmCategory`):*
```bash
agentic-db venue list --where.trgmCategory.value "approximate query" --where.trgmCategory.threshold 0.3 --select title,categoryTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmStatus`):*
```bash
agentic-db venue list --where.trgmStatus.value "approximate query" --where.trgmStatus.threshold 0.3 --select title,statusTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmGooglePlaceId`):*
```bash
agentic-db venue list --where.trgmGooglePlaceId.value "approximate query" --where.trgmGooglePlaceId.threshold 0.3 --select title,googlePlaceIdTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmPriceLevel`):*
```bash
agentic-db venue list --where.trgmPriceLevel.value "approximate query" --where.trgmPriceLevel.threshold 0.3 --select title,priceLevelTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmNotes`):*
```bash
agentic-db venue list --where.trgmNotes.value "approximate query" --where.trgmNotes.threshold 0.3 --select title,notesTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmbeddingText`):*
```bash
agentic-db venue list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

*Composite search (unifiedSearch dispatches to all text adapters):*
```bash
agentic-db venue list --where.unifiedSearch "search query" --select title,tsvRank,embeddingTextBm25Score,nameTrgmSimilarity,addressTrgmSimilarity,neighborhoodTrgmSimilarity,cityTrgmSimilarity,categoryTrgmSimilarity,statusTrgmSimilarity,googlePlaceIdTrgmSimilarity,priceLevelTrgmSimilarity,notesTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

*Search with pagination and field projection:*
```bash
agentic-db venue list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db venue search "query" --limit 10 --select id,title,searchScore
```


### `expense-contact`

CRUD operations for ExpenseContact records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all expenseContact records |
| `find-first` | Find first matching expenseContact record |
| `get` | Get a expenseContact by id |
| `create` | Create a new expenseContact |
| `update` | Update an existing expenseContact |
| `delete` | Delete a expenseContact |

**Fields:**

| Field | Type |
|-------|------|
| `expenseId` | UUID |
| `contactId` | UUID |

**Required create fields:** `expenseId`, `contactId`

### `goal`

CRUD operations for Goal records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all goal records |
| `find-first` | Find first matching goal record |
| `search <query>` | Search goal records |
| `get` | Get a goal by id |
| `create` | Create a new goal |
| `update` | Update an existing goal |
| `delete` | Delete a goal |

**Fields:**

| Field | Type |
|-------|------|
| `title` | String |
| `description` | String |
| `status` | String |
| `targetDate` | Datetime |
| `progress` | BigFloat |
| `tags` | String |
| `id` | UUID |
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

**Required create fields:** `title`
**Optional create fields (backend defaults):** `description`, `status`, `targetDate`, `progress`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `descriptionTrgmSimilarity`, `statusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db goal list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db goal search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db goal list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db goal create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db goal update --embedding "new text to embed" --auto-embed
```

*BM25 keyword search via `bm25EmbeddingText`:*
```bash
agentic-db goal list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

*Fuzzy search via trigram similarity (`trgmTitle`):*
```bash
agentic-db goal list --where.trgmTitle.value "approximate query" --where.trgmTitle.threshold 0.3 --select title,titleTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmDescription`):*
```bash
agentic-db goal list --where.trgmDescription.value "approximate query" --where.trgmDescription.threshold 0.3 --select title,descriptionTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmStatus`):*
```bash
agentic-db goal list --where.trgmStatus.value "approximate query" --where.trgmStatus.threshold 0.3 --select title,statusTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmbeddingText`):*
```bash
agentic-db goal list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

*Composite search (unifiedSearch dispatches to all text adapters):*
```bash
agentic-db goal list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,titleTrgmSimilarity,descriptionTrgmSimilarity,statusTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

*Search with pagination and field projection:*
```bash
agentic-db goal list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db goal search "query" --limit 10 --select id,title,searchScore
```


### `goal-habit`

CRUD operations for GoalHabit records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all goalHabit records |
| `find-first` | Find first matching goalHabit record |
| `get` | Get a goalHabit by id |
| `create` | Create a new goalHabit |
| `update` | Update an existing goalHabit |
| `delete` | Delete a goalHabit |

**Fields:**

| Field | Type |
|-------|------|
| `goalId` | UUID |
| `habitId` | UUID |

**Required create fields:** `goalId`, `habitId`

### `habit`

CRUD operations for Habit records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all habit records |
| `find-first` | Find first matching habit record |
| `get` | Get a habit by id |
| `create` | Create a new habit |
| `update` | Update an existing habit |
| `delete` | Delete a habit |

**Fields:**

| Field | Type |
|-------|------|
| `name` | String |
| `frequency` | String |
| `streak` | Int |
| `lastCompletedAt` | Datetime |
| `tags` | String |
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |

**Required create fields:** `name`
**Optional create fields (backend defaults):** `frequency`, `streak`, `lastCompletedAt`, `tags`

### `goal-project`

CRUD operations for GoalProject records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all goalProject records |
| `find-first` | Find first matching goalProject record |
| `get` | Get a goalProject by id |
| `create` | Create a new goalProject |
| `update` | Update an existing goalProject |
| `delete` | Delete a goalProject |

**Fields:**

| Field | Type |
|-------|------|
| `goalId` | UUID |
| `projectId` | UUID |

**Required create fields:** `goalId`, `projectId`

### `interaction`

CRUD operations for Interaction records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all interaction records |
| `find-first` | Find first matching interaction record |
| `search <query>` | Search interaction records |
| `get` | Get a interaction by id |
| `create` | Create a new interaction |
| `update` | Update an existing interaction |
| `delete` | Delete a interaction |

**Fields:**

| Field | Type |
|-------|------|
| `contactId` | UUID |
| `type` | String |
| `occurredAt` | Datetime |
| `summary` | String |
| `sentiment` | String |
| `tags` | String |
| `id` | UUID |
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

**Required create fields:** `contactId`, `type`, `occurredAt`
**Optional create fields (backend defaults):** `summary`, `sentiment`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `embeddingTextBm25Score`, `typeTrgmSimilarity`, `summaryTrgmSimilarity`, `sentimentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db interaction list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db interaction search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db interaction list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db interaction create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db interaction update --embedding "new text to embed" --auto-embed
```

*BM25 keyword search via `bm25EmbeddingText`:*
```bash
agentic-db interaction list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

*Fuzzy search via trigram similarity (`trgmType`):*
```bash
agentic-db interaction list --where.trgmType.value "approximate query" --where.trgmType.threshold 0.3 --select title,typeTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmSummary`):*
```bash
agentic-db interaction list --where.trgmSummary.value "approximate query" --where.trgmSummary.threshold 0.3 --select title,summaryTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmSentiment`):*
```bash
agentic-db interaction list --where.trgmSentiment.value "approximate query" --where.trgmSentiment.threshold 0.3 --select title,sentimentTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmbeddingText`):*
```bash
agentic-db interaction list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

*Composite search (unifiedSearch dispatches to all text adapters):*
```bash
agentic-db interaction list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,typeTrgmSimilarity,summaryTrgmSimilarity,sentimentTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

*Search with pagination and field projection:*
```bash
agentic-db interaction list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db interaction search "query" --limit 10 --select id,title,searchScore
```


### `message`

CRUD operations for Message records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all message records |
| `find-first` | Find first matching message record |
| `search <query>` | Search message records |
| `get` | Get a message by id |
| `create` | Create a new message |
| `update` | Update an existing message |
| `delete` | Delete a message |

**Fields:**

| Field | Type |
|-------|------|
| `conversationId` | UUID |
| `role` | String |
| `content` | String |
| `tokenCount` | Int |
| `meta` | JSON |
| `toolCalls` | JSON |
| `toolResults` | JSON |
| `id` | UUID |
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

**Required create fields:** `conversationId`, `role`, `content`
**Optional create fields (backend defaults):** `tokenCount`, `meta`, `toolCalls`, `toolResults`, `embeddingText`, `embedding`, `embeddingStale`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `embeddingTextBm25Score`, `roleTrgmSimilarity`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db message list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db message search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db message list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db message create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db message update --embedding "new text to embed" --auto-embed
```

*BM25 keyword search via `bm25EmbeddingText`:*
```bash
agentic-db message list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

*Fuzzy search via trigram similarity (`trgmRole`):*
```bash
agentic-db message list --where.trgmRole.value "approximate query" --where.trgmRole.threshold 0.3 --select title,roleTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmContent`):*
```bash
agentic-db message list --where.trgmContent.value "approximate query" --where.trgmContent.threshold 0.3 --select title,contentTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmbeddingText`):*
```bash
agentic-db message list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

*Composite search (unifiedSearch dispatches to all text adapters):*
```bash
agentic-db message list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,roleTrgmSimilarity,contentTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

*Search with pagination and field projection:*
```bash
agentic-db message list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db message search "query" --limit 10 --select id,title,searchScore
```


### `notes-chunk`

CRUD operations for NotesChunk records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all notesChunk records |
| `find-first` | Find first matching notesChunk record |
| `search <query>` | Search notesChunk records |
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
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db notes-chunk list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db notes-chunk search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db notes-chunk list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db notes-chunk create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db notes-chunk update --embedding "new text to embed" --auto-embed
```

*Search with pagination and field projection:*
```bash
agentic-db notes-chunk list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db notes-chunk search "query" --limit 10 --select id,title,searchScore
```


### `place`

CRUD operations for Place records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all place records |
| `find-first` | Find first matching place record |
| `search <query>` | Search place records |
| `get` | Get a place by id |
| `create` | Create a new place |
| `update` | Update an existing place |
| `delete` | Delete a place |

**Fields:**

| Field | Type |
|-------|------|
| `name` | String |
| `address` | String |
| `description` | String |
| `category` | String |
| `rating` | BigFloat |
| `tags` | String |
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `locationGeo` | GeographyInterface |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `nameTrgmSimilarity` | Float |
| `addressTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `categoryTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `name`
**Optional create fields (backend defaults):** `address`, `description`, `category`, `rating`, `tags`, `embeddingText`, `embedding`, `embeddingStale`, `locationGeo`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `addressTrgmSimilarity`, `descriptionTrgmSimilarity`, `categoryTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db place list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db place search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db place list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db place create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db place update --embedding "new text to embed" --auto-embed
```

*BM25 keyword search via `bm25EmbeddingText`:*
```bash
agentic-db place list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

*Fuzzy search via trigram similarity (`trgmName`):*
```bash
agentic-db place list --where.trgmName.value "approximate query" --where.trgmName.threshold 0.3 --select title,nameTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmAddress`):*
```bash
agentic-db place list --where.trgmAddress.value "approximate query" --where.trgmAddress.threshold 0.3 --select title,addressTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmDescription`):*
```bash
agentic-db place list --where.trgmDescription.value "approximate query" --where.trgmDescription.threshold 0.3 --select title,descriptionTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmCategory`):*
```bash
agentic-db place list --where.trgmCategory.value "approximate query" --where.trgmCategory.threshold 0.3 --select title,categoryTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmbeddingText`):*
```bash
agentic-db place list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

*Composite search (unifiedSearch dispatches to all text adapters):*
```bash
agentic-db place list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,nameTrgmSimilarity,addressTrgmSimilarity,descriptionTrgmSimilarity,categoryTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

*Search with pagination and field projection:*
```bash
agentic-db place list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db place search "query" --limit 10 --select id,title,searchScore
```


### `project-contact`

CRUD operations for ProjectContact records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all projectContact records |
| `find-first` | Find first matching projectContact record |
| `get` | Get a projectContact by id |
| `create` | Create a new projectContact |
| `update` | Update an existing projectContact |
| `delete` | Delete a projectContact |

**Fields:**

| Field | Type |
|-------|------|
| `projectId` | UUID |
| `contactId` | UUID |

**Required create fields:** `projectId`, `contactId`

### `project-document`

CRUD operations for ProjectDocument records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all projectDocument records |
| `find-first` | Find first matching projectDocument record |
| `get` | Get a projectDocument by id |
| `create` | Create a new projectDocument |
| `update` | Update an existing projectDocument |
| `delete` | Delete a projectDocument |

**Fields:**

| Field | Type |
|-------|------|
| `projectId` | UUID |
| `documentId` | UUID |

**Required create fields:** `projectId`, `documentId`

### `provider-sync-state`

CRUD operations for ProviderSyncState records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all providerSyncState records |
| `find-first` | Find first matching providerSyncState record |
| `get` | Get a providerSyncState by id |
| `create` | Create a new providerSyncState |
| `update` | Update an existing providerSyncState |
| `delete` | Delete a providerSyncState |

**Fields:**

| Field | Type |
|-------|------|
| `provider` | String |
| `resourceType` | String |
| `syncCursor` | String |
| `historyId` | String |
| `lastSyncAt` | Datetime |
| `status` | String |
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |

**Required create fields:** `provider`, `resourceType`
**Optional create fields (backend defaults):** `syncCursor`, `historyId`, `lastSyncAt`, `status`

### `raw-contact`

CRUD operations for RawContact records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all rawContact records |
| `find-first` | Find first matching rawContact record |
| `get` | Get a rawContact by id |
| `create` | Create a new rawContact |
| `update` | Update an existing rawContact |
| `delete` | Delete a rawContact |

**Fields:**

| Field | Type |
|-------|------|
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
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |

**Optional create fields (backend defaults):** `externalId`, `source`, `firstName`, `lastName`, `fullName`, `headline`, `bio`, `location`, `company`, `jobTitle`, `rawData`, `confidence`, `ingestedAt`

### `raw-contact-email`

CRUD operations for RawContactEmail records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all rawContactEmail records |
| `find-first` | Find first matching rawContactEmail record |
| `get` | Get a rawContactEmail by id |
| `create` | Create a new rawContactEmail |
| `update` | Update an existing rawContactEmail |
| `delete` | Delete a rawContactEmail |

**Fields:**

| Field | Type |
|-------|------|
| `email` | String |
| `emailType` | String |
| `isPrimary` | Boolean |
| `source` | String |
| `confidence` | BigFloat |
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `rawContactId` | UUID |

**Required create fields:** `email`, `rawContactId`
**Optional create fields (backend defaults):** `emailType`, `isPrimary`, `source`, `confidence`

### `raw-contact-phone`

CRUD operations for RawContactPhone records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all rawContactPhone records |
| `find-first` | Find first matching rawContactPhone record |
| `get` | Get a rawContactPhone by id |
| `create` | Create a new rawContactPhone |
| `update` | Update an existing rawContactPhone |
| `delete` | Delete a rawContactPhone |

**Fields:**

| Field | Type |
|-------|------|
| `phone` | String |
| `phoneType` | String |
| `isPrimary` | Boolean |
| `source` | String |
| `confidence` | BigFloat |
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `rawContactId` | UUID |

**Required create fields:** `phone`, `rawContactId`
**Optional create fields (backend defaults):** `phoneType`, `isPrimary`, `source`, `confidence`

### `raw-contact-url`

CRUD operations for RawContactUrl records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all rawContactUrl records |
| `find-first` | Find first matching rawContactUrl record |
| `get` | Get a rawContactUrl by id |
| `create` | Create a new rawContactUrl |
| `update` | Update an existing rawContactUrl |
| `delete` | Delete a rawContactUrl |

**Fields:**

| Field | Type |
|-------|------|
| `url` | String |
| `urlType` | String |
| `source` | String |
| `confidence` | BigFloat |
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `rawContactId` | UUID |

**Required create fields:** `url`, `rawContactId`
**Optional create fields (backend defaults):** `urlType`, `source`, `confidence`

### `rule`

CRUD operations for Rule records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all rule records |
| `find-first` | Find first matching rule record |
| `search <query>` | Search rule records |
| `get` | Get a rule by id |
| `create` | Create a new rule |
| `update` | Update an existing rule |
| `delete` | Delete a rule |

**Fields:**

| Field | Type |
|-------|------|
| `name` | String |
| `description` | String |
| `triggerType` | String |
| `triggerConfig` | JSON |
| `actionType` | String |
| `actionConfig` | JSON |
| `isActive` | Boolean |
| `priority` | Int |
| `triggerConcept` | String |
| `id` | UUID |
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

**Required create fields:** `name`, `agentId`
**Optional create fields (backend defaults):** `description`, `triggerType`, `triggerConfig`, `actionType`, `actionConfig`, `isActive`, `priority`, `triggerConcept`, `embeddingText`, `embedding`, `embeddingStale`, `triggerConceptEmbedding`
> **pgvector embedding fields:** `embedding`, `triggerConceptEmbedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `triggerTypeTrgmSimilarity`, `actionTypeTrgmSimilarity`, `triggerConceptTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db rule list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db rule search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db rule list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db rule create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db rule update --embedding "new text to embed" --auto-embed
```

*Vector similarity search via `triggerConceptEmbedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db rule list --where.triggerConceptEmbedding.vector '[0.1,0.2,0.3]' --where.triggerConceptEmbedding.distance 1.0 --select title,triggerConceptEmbeddingVectorDistance
```

*Vector semantic search via `triggerConceptEmbedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db rule search "semantic query" --auto-embed --select title,triggerConceptEmbeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db rule list --where.triggerConceptEmbedding.vector "semantic query" --auto-embed --select title,triggerConceptEmbeddingVectorDistance
```

*Create/update with auto-embedded `triggerConceptEmbedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db rule create --triggerConceptEmbedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db rule update --triggerConceptEmbedding "new text to embed" --auto-embed
```

*BM25 keyword search via `bm25EmbeddingText`:*
```bash
agentic-db rule list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

*Fuzzy search via trigram similarity (`trgmName`):*
```bash
agentic-db rule list --where.trgmName.value "approximate query" --where.trgmName.threshold 0.3 --select title,nameTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmDescription`):*
```bash
agentic-db rule list --where.trgmDescription.value "approximate query" --where.trgmDescription.threshold 0.3 --select title,descriptionTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmTriggerType`):*
```bash
agentic-db rule list --where.trgmTriggerType.value "approximate query" --where.trgmTriggerType.threshold 0.3 --select title,triggerTypeTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmActionType`):*
```bash
agentic-db rule list --where.trgmActionType.value "approximate query" --where.trgmActionType.threshold 0.3 --select title,actionTypeTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmTriggerConcept`):*
```bash
agentic-db rule list --where.trgmTriggerConcept.value "approximate query" --where.trgmTriggerConcept.threshold 0.3 --select title,triggerConceptTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmbeddingText`):*
```bash
agentic-db rule list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

*Composite search (unifiedSearch dispatches to all text adapters):*
```bash
agentic-db rule list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,nameTrgmSimilarity,descriptionTrgmSimilarity,triggerTypeTrgmSimilarity,actionTypeTrgmSimilarity,triggerConceptTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

*Search with pagination and field projection:*
```bash
agentic-db rule list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db rule search "query" --limit 10 --select id,title,searchScore
```


### `runtime-artifact`

CRUD operations for RuntimeArtifact records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all runtimeArtifact records |
| `find-first` | Find first matching runtimeArtifact record |
| `get` | Get a runtimeArtifact by id |
| `create` | Create a new runtimeArtifact |
| `update` | Update an existing runtimeArtifact |
| `delete` | Delete a runtimeArtifact |

**Fields:**

| Field | Type |
|-------|------|
| `runtimeStateId` | UUID |
| `name` | String |
| `artifactType` | String |
| `content` | String |
| `meta` | JSON |
| `sizeBytes` | Int |
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |

**Required create fields:** `runtimeStateId`, `name`
**Optional create fields (backend defaults):** `artifactType`, `content`, `meta`, `sizeBytes`

### `runtime-config`

CRUD operations for RuntimeConfig records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all runtimeConfig records |
| `find-first` | Find first matching runtimeConfig record |
| `get` | Get a runtimeConfig by id |
| `create` | Create a new runtimeConfig |
| `update` | Update an existing runtimeConfig |
| `delete` | Delete a runtimeConfig |

**Fields:**

| Field | Type |
|-------|------|
| `key` | String |
| `value` | JSON |
| `description` | String |
| `isSecret` | Boolean |
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |

**Required create fields:** `key`
**Optional create fields (backend defaults):** `value`, `description`, `isSecret`

### `runtime-event`

CRUD operations for RuntimeEvent records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all runtimeEvent records |
| `find-first` | Find first matching runtimeEvent record |
| `get` | Get a runtimeEvent by id |
| `create` | Create a new runtimeEvent |
| `update` | Update an existing runtimeEvent |
| `delete` | Delete a runtimeEvent |

**Fields:**

| Field | Type |
|-------|------|
| `eventType` | String |
| `payload` | JSON |
| `source` | String |
| `processedAt` | Datetime |
| `status` | String |
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |

**Required create fields:** `eventType`, `payload`
**Optional create fields (backend defaults):** `source`, `processedAt`, `status`

### `runtime-log`

CRUD operations for RuntimeLog records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all runtimeLog records |
| `find-first` | Find first matching runtimeLog record |
| `search <query>` | Search runtimeLog records |
| `get` | Get a runtimeLog by id |
| `create` | Create a new runtimeLog |
| `update` | Update an existing runtimeLog |
| `delete` | Delete a runtimeLog |

**Fields:**

| Field | Type |
|-------|------|
| `runtimeStateId` | UUID |
| `level` | String |
| `message` | String |
| `context` | JSON |
| `stepIndex` | Int |
| `id` | UUID |
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

**Required create fields:** `runtimeStateId`, `level`, `message`
**Optional create fields (backend defaults):** `context`, `stepIndex`, `embeddingText`, `embedding`, `embeddingStale`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `embeddingTextBm25Score`, `levelTrgmSimilarity`, `messageTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db runtime-log list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db runtime-log search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db runtime-log list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db runtime-log create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db runtime-log update --embedding "new text to embed" --auto-embed
```

*BM25 keyword search via `bm25EmbeddingText`:*
```bash
agentic-db runtime-log list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

*Fuzzy search via trigram similarity (`trgmLevel`):*
```bash
agentic-db runtime-log list --where.trgmLevel.value "approximate query" --where.trgmLevel.threshold 0.3 --select title,levelTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmMessage`):*
```bash
agentic-db runtime-log list --where.trgmMessage.value "approximate query" --where.trgmMessage.threshold 0.3 --select title,messageTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmbeddingText`):*
```bash
agentic-db runtime-log list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

*Composite search (unifiedSearch dispatches to all text adapters):*
```bash
agentic-db runtime-log list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,levelTrgmSimilarity,messageTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

*Search with pagination and field projection:*
```bash
agentic-db runtime-log list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db runtime-log search "query" --limit 10 --select id,title,searchScore
```


### `runtime-metric`

CRUD operations for RuntimeMetric records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all runtimeMetric records |
| `find-first` | Find first matching runtimeMetric record |
| `get` | Get a runtimeMetric by id |
| `create` | Create a new runtimeMetric |
| `update` | Update an existing runtimeMetric |
| `delete` | Delete a runtimeMetric |

**Fields:**

| Field | Type |
|-------|------|
| `runtimeStateId` | UUID |
| `metricName` | String |
| `metricValue` | BigFloat |
| `unit` | String |
| `meta` | JSON |
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |

**Required create fields:** `runtimeStateId`, `metricName`, `metricValue`
**Optional create fields (backend defaults):** `unit`, `meta`

### `runtime-schedule`

CRUD operations for RuntimeSchedule records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all runtimeSchedule records |
| `find-first` | Find first matching runtimeSchedule record |
| `get` | Get a runtimeSchedule by id |
| `create` | Create a new runtimeSchedule |
| `update` | Update an existing runtimeSchedule |
| `delete` | Delete a runtimeSchedule |

**Fields:**

| Field | Type |
|-------|------|
| `name` | String |
| `cronExpression` | String |
| `nextRunAt` | Datetime |
| `lastRunAt` | Datetime |
| `isActive` | Boolean |
| `config` | JSON |
| `timezone` | String |
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |

**Required create fields:** `name`
**Optional create fields (backend defaults):** `cronExpression`, `nextRunAt`, `lastRunAt`, `isActive`, `config`, `timezone`

### `runtime-state`

CRUD operations for RuntimeState records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all runtimeState records |
| `find-first` | Find first matching runtimeState record |
| `search <query>` | Search runtimeState records |
| `get` | Get a runtimeState by id |
| `create` | Create a new runtimeState |
| `update` | Update an existing runtimeState |
| `delete` | Delete a runtimeState |

**Fields:**

| Field | Type |
|-------|------|
| `name` | String |
| `stateType` | String |
| `status` | String |
| `data` | JSON |
| `parentId` | UUID |
| `startedAt` | Datetime |
| `endedAt` | Datetime |
| `id` | UUID |
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

**Required create fields:** `name`
**Optional create fields (backend defaults):** `stateType`, `status`, `data`, `parentId`, `startedAt`, `endedAt`, `embeddingText`, `embedding`, `embeddingStale`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `stateTypeTrgmSimilarity`, `statusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db runtime-state list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db runtime-state search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db runtime-state list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db runtime-state create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db runtime-state update --embedding "new text to embed" --auto-embed
```

*BM25 keyword search via `bm25EmbeddingText`:*
```bash
agentic-db runtime-state list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

*Fuzzy search via trigram similarity (`trgmName`):*
```bash
agentic-db runtime-state list --where.trgmName.value "approximate query" --where.trgmName.threshold 0.3 --select title,nameTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmStateType`):*
```bash
agentic-db runtime-state list --where.trgmStateType.value "approximate query" --where.trgmStateType.threshold 0.3 --select title,stateTypeTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmStatus`):*
```bash
agentic-db runtime-state list --where.trgmStatus.value "approximate query" --where.trgmStatus.threshold 0.3 --select title,statusTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmbeddingText`):*
```bash
agentic-db runtime-state list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

*Composite search (unifiedSearch dispatches to all text adapters):*
```bash
agentic-db runtime-state list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,nameTrgmSimilarity,stateTypeTrgmSimilarity,statusTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

*Search with pagination and field projection:*
```bash
agentic-db runtime-state list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db runtime-state search "query" --limit 10 --select id,title,searchScore
```


### `runtime-state-dependency`

CRUD operations for RuntimeStateDependency records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all runtimeStateDependency records |
| `find-first` | Find first matching runtimeStateDependency record |
| `get` | Get a runtimeStateDependency by id |
| `create` | Create a new runtimeStateDependency |
| `update` | Update an existing runtimeStateDependency |
| `delete` | Delete a runtimeStateDependency |

**Fields:**

| Field | Type |
|-------|------|
| `stateId` | UUID |
| `dependencyId` | UUID |

**Required create fields:** `stateId`, `dependencyId`

### `skill`

CRUD operations for Skill records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all skill records |
| `find-first` | Find first matching skill record |
| `search <query>` | Search skill records |
| `get` | Get a skill by id |
| `create` | Create a new skill |
| `update` | Update an existing skill |
| `delete` | Delete a skill |

**Fields:**

| Field | Type |
|-------|------|
| `name` | String |
| `description` | String |
| `category` | String |
| `implementation` | String |
| `config` | JSON |
| `isActive` | Boolean |
| `intentTrigger` | String |
| `id` | UUID |
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

**Required create fields:** `name`, `agentId`
**Optional create fields (backend defaults):** `description`, `category`, `implementation`, `config`, `isActive`, `intentTrigger`, `embeddingText`, `embedding`, `embeddingStale`, `intentTriggerEmbedding`
> **pgvector embedding fields:** `embedding`, `intentTriggerEmbedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `categoryTrgmSimilarity`, `implementationTrgmSimilarity`, `intentTriggerTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db skill list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db skill search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db skill list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db skill create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db skill update --embedding "new text to embed" --auto-embed
```

*Vector similarity search via `intentTriggerEmbedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db skill list --where.intentTriggerEmbedding.vector '[0.1,0.2,0.3]' --where.intentTriggerEmbedding.distance 1.0 --select title,intentTriggerEmbeddingVectorDistance
```

*Vector semantic search via `intentTriggerEmbedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db skill search "semantic query" --auto-embed --select title,intentTriggerEmbeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db skill list --where.intentTriggerEmbedding.vector "semantic query" --auto-embed --select title,intentTriggerEmbeddingVectorDistance
```

*Create/update with auto-embedded `intentTriggerEmbedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db skill create --intentTriggerEmbedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db skill update --intentTriggerEmbedding "new text to embed" --auto-embed
```

*BM25 keyword search via `bm25EmbeddingText`:*
```bash
agentic-db skill list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

*Fuzzy search via trigram similarity (`trgmName`):*
```bash
agentic-db skill list --where.trgmName.value "approximate query" --where.trgmName.threshold 0.3 --select title,nameTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmDescription`):*
```bash
agentic-db skill list --where.trgmDescription.value "approximate query" --where.trgmDescription.threshold 0.3 --select title,descriptionTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmCategory`):*
```bash
agentic-db skill list --where.trgmCategory.value "approximate query" --where.trgmCategory.threshold 0.3 --select title,categoryTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmImplementation`):*
```bash
agentic-db skill list --where.trgmImplementation.value "approximate query" --where.trgmImplementation.threshold 0.3 --select title,implementationTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmIntentTrigger`):*
```bash
agentic-db skill list --where.trgmIntentTrigger.value "approximate query" --where.trgmIntentTrigger.threshold 0.3 --select title,intentTriggerTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmbeddingText`):*
```bash
agentic-db skill list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

*Composite search (unifiedSearch dispatches to all text adapters):*
```bash
agentic-db skill list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,nameTrgmSimilarity,descriptionTrgmSimilarity,categoryTrgmSimilarity,implementationTrgmSimilarity,intentTriggerTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

*Search with pagination and field projection:*
```bash
agentic-db skill list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db skill search "query" --limit 10 --select id,title,searchScore
```


### `skill-tool`

CRUD operations for SkillTool records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all skillTool records |
| `find-first` | Find first matching skillTool record |
| `get` | Get a skillTool by id |
| `create` | Create a new skillTool |
| `update` | Update an existing skillTool |
| `delete` | Delete a skillTool |

**Fields:**

| Field | Type |
|-------|------|
| `skillId` | UUID |
| `toolDefinitionId` | UUID |

**Required create fields:** `skillId`, `toolDefinitionId`

### `tool-definition`

CRUD operations for ToolDefinition records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all toolDefinition records |
| `find-first` | Find first matching toolDefinition record |
| `search <query>` | Search toolDefinition records |
| `get` | Get a toolDefinition by id |
| `create` | Create a new toolDefinition |
| `update` | Update an existing toolDefinition |
| `delete` | Delete a toolDefinition |

**Fields:**

| Field | Type |
|-------|------|
| `name` | String |
| `description` | String |
| `toolType` | String |
| `schema` | JSON |
| `config` | JSON |
| `isActive` | Boolean |
| `id` | UUID |
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

**Required create fields:** `name`
**Optional create fields (backend defaults):** `description`, `toolType`, `schema`, `config`, `isActive`, `embeddingText`, `embedding`, `embeddingStale`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `toolTypeTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db tool-definition list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db tool-definition search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db tool-definition list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db tool-definition create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db tool-definition update --embedding "new text to embed" --auto-embed
```

*BM25 keyword search via `bm25EmbeddingText`:*
```bash
agentic-db tool-definition list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

*Fuzzy search via trigram similarity (`trgmName`):*
```bash
agentic-db tool-definition list --where.trgmName.value "approximate query" --where.trgmName.threshold 0.3 --select title,nameTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmDescription`):*
```bash
agentic-db tool-definition list --where.trgmDescription.value "approximate query" --where.trgmDescription.threshold 0.3 --select title,descriptionTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmToolType`):*
```bash
agentic-db tool-definition list --where.trgmToolType.value "approximate query" --where.trgmToolType.threshold 0.3 --select title,toolTypeTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmbeddingText`):*
```bash
agentic-db tool-definition list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

*Composite search (unifiedSearch dispatches to all text adapters):*
```bash
agentic-db tool-definition list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,nameTrgmSimilarity,descriptionTrgmSimilarity,toolTypeTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

*Search with pagination and field projection:*
```bash
agentic-db tool-definition list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db tool-definition search "query" --limit 10 --select id,title,searchScore
```


### `tag`

CRUD operations for Tag records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all tag records |
| `find-first` | Find first matching tag record |
| `get` | Get a tag by id |
| `create` | Create a new tag |
| `update` | Update an existing tag |
| `delete` | Delete a tag |

**Fields:**

| Field | Type |
|-------|------|
| `name` | String |
| `color` | String |
| `category` | String |
| `usageCount` | Int |
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |

**Required create fields:** `name`
**Optional create fields (backend defaults):** `color`, `category`, `usageCount`

### `task-contact`

CRUD operations for TaskContact records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all taskContact records |
| `find-first` | Find first matching taskContact record |
| `get` | Get a taskContact by id |
| `create` | Create a new taskContact |
| `update` | Update an existing taskContact |
| `delete` | Delete a taskContact |

**Fields:**

| Field | Type |
|-------|------|
| `taskId` | UUID |
| `contactId` | UUID |

**Required create fields:** `taskId`, `contactId`

### `task-note`

CRUD operations for TaskNote records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all taskNote records |
| `find-first` | Find first matching taskNote record |
| `get` | Get a taskNote by id |
| `create` | Create a new taskNote |
| `update` | Update an existing taskNote |
| `delete` | Delete a taskNote |

**Fields:**

| Field | Type |
|-------|------|
| `taskId` | UUID |
| `noteId` | UUID |

**Required create fields:** `taskId`, `noteId`

### `task-project`

CRUD operations for TaskProject records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all taskProject records |
| `find-first` | Find first matching taskProject record |
| `get` | Get a taskProject by id |
| `create` | Create a new taskProject |
| `update` | Update an existing taskProject |
| `delete` | Delete a taskProject |

**Fields:**

| Field | Type |
|-------|------|
| `taskId` | UUID |
| `projectId` | UUID |

**Required create fields:** `taskId`, `projectId`

### `thread-participant`

CRUD operations for ThreadParticipant records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all threadParticipant records |
| `find-first` | Find first matching threadParticipant record |
| `get` | Get a threadParticipant by id |
| `create` | Create a new threadParticipant |
| `update` | Update an existing threadParticipant |
| `delete` | Delete a threadParticipant |

**Fields:**

| Field | Type |
|-------|------|
| `emailThreadId` | UUID |
| `contactId` | UUID |

**Required create fields:** `emailThreadId`, `contactId`

### `tool-execution`

CRUD operations for ToolExecution records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all toolExecution records |
| `find-first` | Find first matching toolExecution record |
| `get` | Get a toolExecution by id |
| `create` | Create a new toolExecution |
| `update` | Update an existing toolExecution |
| `delete` | Delete a toolExecution |

**Fields:**

| Field | Type |
|-------|------|
| `toolDefinitionId` | UUID |
| `messageId` | UUID |
| `input` | JSON |
| `output` | JSON |
| `status` | String |
| `startedAt` | Datetime |
| `completedAt` | Datetime |
| `error` | String |
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |

**Required create fields:** `toolDefinitionId`
**Optional create fields (backend defaults):** `messageId`, `input`, `output`, `status`, `startedAt`, `completedAt`, `error`

### `touchpoint`

CRUD operations for Touchpoint records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all touchpoint records |
| `find-first` | Find first matching touchpoint record |
| `search <query>` | Search touchpoint records |
| `get` | Get a touchpoint by id |
| `create` | Create a new touchpoint |
| `update` | Update an existing touchpoint |
| `delete` | Delete a touchpoint |

**Fields:**

| Field | Type |
|-------|------|
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
| `id` | UUID |
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

**Required create fields:** `contactId`, `touchpointType`, `occurredAt`
**Optional create fields (backend defaults):** `subject`, `summary`, `sentiment`, `direction`, `channel`, `dealId`, `companyId`, `eventId`, `meta`, `tags`, `embeddingText`, `embedding`, `embeddingStale`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `embeddingTextBm25Score`, `touchpointTypeTrgmSimilarity`, `subjectTrgmSimilarity`, `summaryTrgmSimilarity`, `sentimentTrgmSimilarity`, `directionTrgmSimilarity`, `channelTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db touchpoint list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db touchpoint search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db touchpoint list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db touchpoint create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db touchpoint update --embedding "new text to embed" --auto-embed
```

*BM25 keyword search via `bm25EmbeddingText`:*
```bash
agentic-db touchpoint list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

*Fuzzy search via trigram similarity (`trgmTouchpointType`):*
```bash
agentic-db touchpoint list --where.trgmTouchpointType.value "approximate query" --where.trgmTouchpointType.threshold 0.3 --select title,touchpointTypeTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmSubject`):*
```bash
agentic-db touchpoint list --where.trgmSubject.value "approximate query" --where.trgmSubject.threshold 0.3 --select title,subjectTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmSummary`):*
```bash
agentic-db touchpoint list --where.trgmSummary.value "approximate query" --where.trgmSummary.threshold 0.3 --select title,summaryTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmSentiment`):*
```bash
agentic-db touchpoint list --where.trgmSentiment.value "approximate query" --where.trgmSentiment.threshold 0.3 --select title,sentimentTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmDirection`):*
```bash
agentic-db touchpoint list --where.trgmDirection.value "approximate query" --where.trgmDirection.threshold 0.3 --select title,directionTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmChannel`):*
```bash
agentic-db touchpoint list --where.trgmChannel.value "approximate query" --where.trgmChannel.threshold 0.3 --select title,channelTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmbeddingText`):*
```bash
agentic-db touchpoint list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

*Composite search (unifiedSearch dispatches to all text adapters):*
```bash
agentic-db touchpoint list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,touchpointTypeTrgmSimilarity,subjectTrgmSimilarity,summaryTrgmSimilarity,sentimentTrgmSimilarity,directionTrgmSimilarity,channelTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

*Search with pagination and field projection:*
```bash
agentic-db touchpoint list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db touchpoint search "query" --limit 10 --select id,title,searchScore
```


### `trip`

CRUD operations for Trip records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all trip records |
| `find-first` | Find first matching trip record |
| `search <query>` | Search trip records |
| `get` | Get a trip by id |
| `create` | Create a new trip |
| `update` | Update an existing trip |
| `delete` | Delete a trip |

**Fields:**

| Field | Type |
|-------|------|
| `name` | String |
| `destination` | String |
| `description` | String |
| `startDate` | Datetime |
| `endDate` | Datetime |
| `tags` | String |
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embeddingText` | String |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `destinationGeo` | GeographyInterface |
| `embeddingTextBm25Score` | Float |
| `embeddingVectorDistance` | Float |
| `nameTrgmSimilarity` | Float |
| `destinationTrgmSimilarity` | Float |
| `descriptionTrgmSimilarity` | Float |
| `embeddingTextTrgmSimilarity` | Float |
| `searchScore` | Float |

**Required create fields:** `name`
**Optional create fields (backend defaults):** `destination`, `description`, `startDate`, `endDate`, `tags`, `embeddingText`, `embedding`, `embeddingStale`, `destinationGeo`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `destinationTrgmSimilarity`, `descriptionTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db trip list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db trip search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db trip list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db trip create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db trip update --embedding "new text to embed" --auto-embed
```

*BM25 keyword search via `bm25EmbeddingText`:*
```bash
agentic-db trip list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

*Fuzzy search via trigram similarity (`trgmName`):*
```bash
agentic-db trip list --where.trgmName.value "approximate query" --where.trgmName.threshold 0.3 --select title,nameTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmDestination`):*
```bash
agentic-db trip list --where.trgmDestination.value "approximate query" --where.trgmDestination.threshold 0.3 --select title,destinationTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmDescription`):*
```bash
agentic-db trip list --where.trgmDescription.value "approximate query" --where.trgmDescription.threshold 0.3 --select title,descriptionTrgmSimilarity
```

*Fuzzy search via trigram similarity (`trgmEmbeddingText`):*
```bash
agentic-db trip list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

*Composite search (unifiedSearch dispatches to all text adapters):*
```bash
agentic-db trip list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,nameTrgmSimilarity,destinationTrgmSimilarity,descriptionTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

*Search with pagination and field projection:*
```bash
agentic-db trip list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db trip search "query" --limit 10 --select id,title,searchScore
```


### `venue-image`

CRUD operations for VenueImage records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all venueImage records |
| `find-first` | Find first matching venueImage record |
| `get` | Get a venueImage by id |
| `create` | Create a new venueImage |
| `update` | Update an existing venueImage |
| `delete` | Delete a venueImage |

**Fields:**

| Field | Type |
|-------|------|
| `venueId` | UUID |
| `imageId` | UUID |

**Required create fields:** `venueId`, `imageId`

### `venue-link`

CRUD operations for VenueLink records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all venueLink records |
| `find-first` | Find first matching venueLink record |
| `search <query>` | Search venueLink records |
| `get` | Get a venueLink by id |
| `create` | Create a new venueLink |
| `update` | Update an existing venueLink |
| `delete` | Delete a venueLink |

**Fields:**

| Field | Type |
|-------|------|
| `title` | String |
| `url` | String |
| `id` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `embedding` | Vector |
| `embeddingStale` | Boolean |
| `venueId` | UUID |
| `embeddingVectorDistance` | Float |
| `searchScore` | Float |

**Required create fields:** `url`, `venueId`
**Optional create fields (backend defaults):** `title`, `embedding`, `embeddingStale`
> **pgvector embedding fields:** `embedding`
> High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

> **Unified Search API fields:** `searchScore`
> Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

**Search Examples:**

*Vector similarity search via `embedding` (manual vector):*
```bash
# Pass a pre-computed vector array via dot-notation
agentic-db venue-link list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

*Vector semantic search via `embedding` with --auto-embed:*
```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db venue-link search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db venue-link list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

*Create/update with auto-embedded `embedding` via --auto-embed:*
```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db venue-link create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db venue-link update --embedding "new text to embed" --auto-embed
```

*Search with pagination and field projection:*
```bash
agentic-db venue-link list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db venue-link search "query" --limit 10 --select id,title,searchScore
```


## Custom Operations

### `request-upload-url`

Request a presigned URL for uploading a file directly to S3.
Client computes SHA-256 of the file content and provides it here.
If a file with the same hash already exists (dedup), returns the
existing file ID and deduplicated=true with no uploadUrl.

- **Type:** mutation
- **Arguments:**

  | Argument | Type |
  |----------|------|
  | `--input.bucketKey` | String (required) |
  | `--input.ownerId` | UUID |
  | `--input.contentHash` | String (required) |
  | `--input.contentType` | String (required) |
  | `--input.size` | Int (required) |
  | `--input.filename` | String |

### `confirm-upload`

Confirm that a file has been uploaded to S3.
Verifies the object exists in S3, checks content-type,
and transitions the file status from 'pending' to 'ready'.

- **Type:** mutation
- **Arguments:**

  | Argument | Type |
  |----------|------|
  | `--input.fileId` | UUID (required) |

### `provision-bucket`

Provision an S3 bucket for a logical bucket in the database.
Reads the bucket config via RLS, then creates and configures
the S3 bucket with the appropriate privacy policies, CORS rules,
and lifecycle settings.

- **Type:** mutation
- **Arguments:**

  | Argument | Type |
  |----------|------|
  | `--input.bucketKey` | String (required) |
  | `--input.ownerId` | UUID |

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
