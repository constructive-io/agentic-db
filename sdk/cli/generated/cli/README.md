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
| `contact-company` | contactCompany CRUD operations |
| `contact-event` | contactEvent CRUD operations |
| `deal-contact` | dealContact CRUD operations |
| `event-venue` | eventVenue CRUD operations |
| `tag` | tag CRUD operations |
| `note` | note CRUD operations |
| `venue` | venue CRUD operations |
| `contact` | contact CRUD operations |
| `event` | event CRUD operations |
| `deal` | deal CRUD operations |
| `company` | company CRUD operations |

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
| `name` | String |

**Create fields:** `name`

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
| `contactId` | UUID |

**Create fields:** `entityId`, `content`, `contactId`

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

**Create fields:** `entityId`, `name`, `neighborhood`, `city`, `status`, `notes`

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

**Create fields:** `entityId`, `firstName`, `lastName`, `email`, `phone`, `headline`, `bio`, `location`

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

**Create fields:** `entityId`, `name`, `eventType`, `location`, `city`, `startedAt`, `endedAt`, `notes`

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

**Create fields:** `entityId`, `name`, `stage`, `value`, `notes`

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
| `test1772427893521` | Float |
| `test1772427893568` | Float |
| `test1772427893598` | Float |
| `embedding` | Float |
| `embeddingText` | String |

**Create fields:** `entityId`, `name`, `domain`, `industry`, `description`, `test1772427893521`, `test1772427893568`, `test1772427893598`, `embedding`, `embeddingText`

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
