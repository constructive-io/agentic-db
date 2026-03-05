# agent-os CLI

<p align="center" width="100%">
  <img height="120" src="https://raw.githubusercontent.com/constructive-io/constructive/refs/heads/main/assets/outline-logo.svg" />
</p>

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

## Setup

```bash
# Create a context pointing at your GraphQL endpoint
agent-os context create production --endpoint https://api.example.com/graphql

# Set the active context
agent-os context use production

# Authenticate
agent-os auth set-token <your-token>
```

## Commands

| Command | Description |
|---------|-------------|
| `context` | Manage API contexts (endpoints) |
| `auth` | Manage authentication tokens |
| `company-image` | companyImage CRUD operations |
| `contact-company` | contactCompany CRUD operations |
| `contact-event` | contactEvent CRUD operations |
| `contact-image` | contactImage CRUD operations |
| `deal-contact` | dealContact CRUD operations |
| `event-image` | eventImage CRUD operations |
| `event-venue` | eventVenue CRUD operations |
| `venue-image` | venueImage CRUD operations |
| `calendar-sync` | calendarSync CRUD operations |
| `file` | file CRUD operations |
| `email-account` | emailAccount CRUD operations |
| `message` | message CRUD operations |
| `execution-log` | executionLog CRUD operations |
| `chat` | chat CRUD operations |
| `project` | project CRUD operations |
| `repository` | repository CRUD operations |
| `session` | session CRUD operations |
| `blueprint` | blueprint CRUD operations |
| `image` | image CRUD operations |
| `milestone` | milestone CRUD operations |
| `chat-message` | chatMessage CRUD operations |
| `chunk` | chunk CRUD operations |
| `memory` | memory CRUD operations |
| `deal` | deal CRUD operations |
| `document` | document CRUD operations |
| `task` | task CRUD operations |
| `rule` | rule CRUD operations |
| `skill` | skill CRUD operations |
| `expense` | expense CRUD operations |
| `note` | note CRUD operations |
| `company` | company CRUD operations |
| `venue` | venue CRUD operations |
| `event` | event CRUD operations |
| `contact` | contact CRUD operations |

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

Configuration is stored at `~/.agent-os/config/`.

### `auth`

Manage authentication tokens per context.

| Subcommand | Description |
|------------|-------------|
| `set-token <token>` | Store bearer token for current context |
| `status` | Show auth status across all contexts |
| `logout` | Remove credentials for current context |

## Table Commands

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

**Create fields:** `companyId`, `imageId`, `entityId`

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

**Create fields:** `contactId`, `companyId`, `entityId`

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

**Create fields:** `contactId`, `eventId`, `entityId`

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

**Create fields:** `contactId`, `imageId`, `entityId`

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

**Create fields:** `dealId`, `contactId`, `entityId`

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

**Create fields:** `eventId`, `imageId`, `entityId`

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

**Create fields:** `eventId`, `venueId`, `entityId`

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

**Create fields:** `venueId`, `imageId`, `entityId`

### `calendar-sync`

CRUD operations for CalendarSync records.

| Subcommand | Description |
|------------|-------------|
| `list` | List all calendarSync records |
| `get` | Get a calendarSync by id |
| `create` | Create a new calendarSync |
| `update` | Update an existing calendarSync |
| `delete` | Delete a calendarSync |

**Fields:**

| Field | Type |
|-------|------|
| `id` | UUID |
| `entityId` | UUID |
| `createdAt` | Datetime |
| `updatedAt` | Datetime |
| `provider` | String |
| `syncToken` | String |
| `lastSyncedAt` | Datetime |

**Create fields:** `entityId`, `provider`, `syncToken`, `lastSyncedAt`

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
| `path` | String |
| `language` | String |
| `hash` | String |
| `repositoryId` | UUID |

**Create fields:** `entityId`, `path`, `language`, `hash`, `repositoryId`

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

**Create fields:** `entityId`, `email`, `provider`, `syncState`

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
| `threadId` | String |
| `remoteId` | String |
| `from` | String |
| `to` | String |
| `subject` | String |
| `bodyText` | String |
| `receivedAt` | Datetime |
| `tags` | String |
| `embedding` | Vector |
| `emailAccountId` | UUID |
| `embeddingDistance` | Float |

**Create fields:** `entityId`, `threadId`, `remoteId`, `from`, `to`, `subject`, `bodyText`, `receivedAt`, `tags`, `embedding`, `emailAccountId`, `embeddingDistance`

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
| `stepName` | String |
| `input` | String |
| `output` | String |
| `toolCalls` | JSON |
| `durationMs` | Int |
| `sessionId` | UUID |

**Create fields:** `entityId`, `stepName`, `input`, `output`, `toolCalls`, `durationMs`, `sessionId`

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
| `embedding` | Vector |
| `embeddingDistance` | Float |

**Create fields:** `entityId`, `title`, `startedAt`, `embedding`, `embeddingDistance`

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
| `embedding` | Vector |
| `embeddingDistance` | Float |

**Create fields:** `entityId`, `name`, `description`, `status`, `startDate`, `dueDate`, `embedding`, `embeddingDistance`

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
| `embedding` | Vector |
| `embeddingDistance` | Float |

**Create fields:** `entityId`, `name`, `url`, `description`, `defaultBranch`, `lastSyncedAt`, `embedding`, `embeddingDistance`

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
| `startedAt` | Datetime |
| `endedAt` | Datetime |
| `status` | String |
| `contextSummary` | String |
| `embedding` | Vector |
| `embeddingDistance` | Float |

**Create fields:** `entityId`, `title`, `startedAt`, `endedAt`, `status`, `contextSummary`, `embedding`, `embeddingDistance`

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
| `embedding` | Vector |
| `embeddingDistance` | Float |

**Create fields:** `entityId`, `title`, `steps`, `triggerConditions`, `embedding`, `embeddingDistance`

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
| `embeddingDistance` | Float |

**Create fields:** `entityId`, `url`, `meta`, `altText`, `caption`, `embedding`, `embeddingDistance`

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
| `name` | String |
| `dueDate` | Datetime |
| `embedding` | Vector |
| `projectId` | UUID |
| `embeddingDistance` | Float |

**Create fields:** `entityId`, `name`, `dueDate`, `embedding`, `projectId`, `embeddingDistance`

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
| `role` | String |
| `content` | String |
| `toolCalls` | JSON |
| `embedding` | Vector |
| `chatId` | UUID |
| `embeddingDistance` | Float |

**Create fields:** `entityId`, `role`, `content`, `toolCalls`, `embedding`, `chatId`, `embeddingDistance`

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
| `content` | String |
| `startLine` | Int |
| `endLine` | Int |
| `embedding` | Vector |
| `fileId` | UUID |
| `repositoryId` | UUID |
| `embeddingDistance` | Float |

**Create fields:** `entityId`, `content`, `startLine`, `endLine`, `embedding`, `fileId`, `repositoryId`, `embeddingDistance`

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
| `tags` | String |
| `embedding` | Vector |
| `embeddingDistance` | Float |

**Create fields:** `entityId`, `content`, `tags`, `embedding`, `embeddingDistance`

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
| `notes` | String |
| `tags` | String |
| `embedding` | Vector |
| `embeddingDistance` | Float |

**Create fields:** `entityId`, `name`, `stage`, `value`, `notes`, `tags`, `embedding`, `embeddingDistance`

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
| `tags` | String |
| `embedding` | Vector |
| `embeddingDistance` | Float |

**Create fields:** `entityId`, `title`, `url`, `content`, `sourceType`, `tags`, `embedding`, `embeddingDistance`

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
| `tags` | String |
| `embedding` | Vector |
| `embeddingDistance` | Float |

**Create fields:** `entityId`, `title`, `description`, `status`, `priority`, `tags`, `embedding`, `embeddingDistance`

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
| `isActive` | Boolean |
| `tags` | String |
| `embedding` | Vector |
| `embeddingDistance` | Float |

**Create fields:** `entityId`, `title`, `content`, `kind`, `isActive`, `tags`, `embedding`, `embeddingDistance`

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
| `description` | String |
| `content` | String |
| `isActive` | Boolean |
| `tags` | String |
| `embedding` | Vector |
| `embeddingDistance` | Float |

**Create fields:** `entityId`, `name`, `description`, `content`, `isActive`, `tags`, `embedding`, `embeddingDistance`

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
| `tags` | String |
| `embedding` | Vector |
| `embeddingDistance` | Float |

**Create fields:** `entityId`, `amount`, `currency`, `date`, `category`, `description`, `merchant`, `receiptUrl`, `tags`, `embedding`, `embeddingDistance`

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
| `tags` | String |
| `embedding` | Vector |
| `contactId` | UUID |
| `embeddingDistance` | Float |

**Create fields:** `entityId`, `content`, `tags`, `embedding`, `contactId`, `embeddingDistance`

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
| `embedding` | Vector |
| `mainImageId` | UUID |
| `imageId` | UUID |
| `embeddingDistance` | Float |

**Create fields:** `entityId`, `name`, `domain`, `industry`, `description`, `tags`, `embedding`, `mainImageId`, `imageId`, `embeddingDistance`

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
| `neighborhood` | String |
| `city` | String |
| `status` | String |
| `notes` | String |
| `tags` | String |
| `embedding` | Vector |
| `mainImageId` | UUID |
| `imageId` | UUID |
| `embeddingDistance` | Float |

**Create fields:** `entityId`, `name`, `neighborhood`, `city`, `status`, `notes`, `tags`, `embedding`, `mainImageId`, `imageId`, `embeddingDistance`

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
| `embedding` | Vector |
| `mainImageId` | UUID |
| `imageId` | UUID |
| `embeddingDistance` | Float |

**Create fields:** `entityId`, `name`, `eventType`, `location`, `city`, `startedAt`, `endedAt`, `notes`, `tags`, `embedding`, `mainImageId`, `imageId`, `embeddingDistance`

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
| `tags` | String |
| `embedding` | Vector |
| `mainImageId` | UUID |
| `imageId` | UUID |
| `searchTsv` | FullText |
| `searchTsvRank` | Float |
| `embeddingDistance` | Float |

**Create fields:** `entityId`, `firstName`, `lastName`, `email`, `phone`, `headline`, `bio`, `location`, `tags`, `embedding`, `mainImageId`, `imageId`, `searchTsv`, `searchTsvRank`, `embeddingDistance`

## Output

All commands output JSON to stdout. Pipe to `jq` for formatting:

```bash
agent-os car list | jq '.[]'
agent-os car get --id <uuid> | jq '.'
```

---

Built by the [Constructive](https://constructive.io) team.

## Disclaimer

AS DESCRIBED IN THE LICENSES, THE SOFTWARE IS PROVIDED "AS IS", AT YOUR OWN RISK, AND WITHOUT WARRANTIES OF ANY KIND.

No developer or entity involved in creating this software will be liable for any claims or damages whatsoever associated with your use, inability to use, or your interaction with other users of the code, including any direct, indirect, incidental, special, exemplary, punitive or consequential damages, or loss of profits, cryptocurrencies, tokens, or anything else of value.
