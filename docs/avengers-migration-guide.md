# Avengers-to-Agentic-DB Migration Guide

This document responds to the migration analysis and tells you exactly what changed in the schema, where to insert each batch of records, and what to skip.

---

## What Changed Since Your Analysis

Two schema changes were merged in PR #58 and exported in PR #59. These directly address issues you flagged:

### 1. `expenses.amount` and `expenses.description` are now **nullable**

**Before:** `amount numeric NOT NULL`, `description text NOT NULL`
**After:** `amount numeric`, `description text`

You noted: *"The new schema requires amount to be non-null, so any TBD amounts will need to be inserted as 0."*

**This is no longer necessary.** You can now insert expenses with `NULL` amounts directly. No need to coerce TBD amounts to `0`.

### 2. `contacts.relationship_type` renamed to `contacts.relationship_types citext[]`

**Before:** `relationship_type text` (single value, btree index)
**After:** `relationship_types citext[]` (array, GIN index)

You noted: *"To migrate those 27 rows, we simply join the type name and update the relationship_type string directly on the contact."*

**Updated approach:** Instead of setting a single string, set an **array** of types per contact. A contact that was both `investor` and `advisor` in the old `contact_type_assignments` junction becomes:

```sql
UPDATE agentic_db_app_public.contacts
SET relationship_types = ARRAY['investor', 'advisor']::citext[]
WHERE id = '<contact_id>';
```

The column is `citext[]` so searches are case-insensitive. The GIN index supports `@>` (contains) queries:

```sql
-- Find all investors
SELECT * FROM agentic_db_app_public.contacts
WHERE relationship_types @> ARRAY['investor']::citext[];
```

---

## Migration Map: Where to Insert Each Record Set

All target tables live in schema `agentic_db_app_public`.

### Group 1: Direct Inserts (tables exist, 0 rows, columns match)

| # | Source (avengers / recover) | Target Table | Rows | Column Notes |
|---|---------------------------|-------------|------|-------------|
| 1 | `accounting.expenses` | `expenses` | 8 | `amount` and `description` are now nullable -- insert as-is. Map `occurred_at`, `category`, `vendor`, `notes`, `currency` (defaults to `'USD'`), `tags`. |
| 2 | `crm.touchpoints` | `touchpoints` | 35 | Required: `contact_id` (uuid FK), `touchpoint_type` (text), `occurred_at` (timestamptz). Optional: `subject`, `summary`, `sentiment`, `direction`, `channel`, `deal_id`, `company_id`, `event_id`, `meta` (jsonb), `tags` (citext[]). |
| 3 | `crm.contact_relationships` | `contact_relationships` | 14 | This is a self-referencing M:N junction on `contacts`. Columns: `contact_id` (uuid), `related_contact_id` (uuid). Both must reference existing contact IDs. |
| 4 | `agent.memories` (from recover DB) | `memories` | ~57 | Required: `title` (text). Optional: `content`, `location`, `occurred_at`, `mood`, `tags`. Has PostGIS (`location_geo`) and embedding support. |
| 5 | `agent.tasks` (from recover DB + avengers) | `tasks` | ~151 | Required: `title` (text). Optional: `agent_id` (uuid FK), `description`, `status` (default `'pending'`), `priority` (default `0`), `result`, `started_at`, `completed_at`, `meta` (jsonb). |
| 6 | Junction: `contact_memories` (from recover DB) | `contact_memories` | 6 | M:N junction. Columns: `contact_id` (uuid), `memory_id` (uuid). Both must reference existing records. |

### Group 2: Direct Inserts (junction tables exist but were missed)

| # | Source (avengers) | Target Table | Rows | Column Notes |
|---|------------------|-------------|------|-------------|
| 7 | `crm.company_events` | `company_events` | 4 | M:N junction. Columns: `company_id` (uuid), `event_id` (uuid). |
| 8 | `crm.event_venues` | `event_venues` | 28 | M:N junction. Columns: `event_id` (uuid), `venue_id` (uuid). Base venues (16) already migrated. |

### Group 3: Contact Type Assignments (UPDATE, not INSERT)

| # | Source (avengers) | Target | Rows | How |
|---|------------------|--------|------|-----|
| 9 | `crm.contact_type_assignments` | `contacts.relationship_types` | 27 | **Do not insert into a junction.** Instead, aggregate all type names per contact and UPDATE the `relationship_types` array. See SQL pattern above. |

The 11 old categories from `crm.contact_types` were: `investor`, `customer`, `collaborator`, `advisor`, `partner`, `vendor`, `speaker`, `press`, `competitor`, `adjacent_tech`, and one more. Map them as lowercase strings in the array.

### Group 4: Content Migration (requires transformation)

| # | Source (avengers) | Target | Rows | How |
|---|------------------|--------|------|-----|
| 10 | `crm.content` | `notes` | 2 | Insert content body into `notes.content`. Use `abstract` or `overview` fields if you can derive a summary. |
| 11 | `crm.event_content` | `event_notes` | 91 | **Two-step:** First ensure a `notes` record exists for each content row (from step 10 or create new ones). Then insert into `event_notes` junction: `event_id` (uuid), `note_id` (uuid). |

### Group 5: Skip

| Source | Rows | Why Skip |
|--------|------|----------|
| `crm.venue_visits` | 3 | No equivalent junction table in agentic-db. Too low value (3 rows) to justify adding a new table. If needed later, the data could go into `notes` linked via a venue tag. |

---

## Execution Order

Insert order matters because of foreign key constraints. Follow this sequence:

```
1. expenses                      (no FK deps beyond org)
2. memories                      (no FK deps beyond org)
3. tasks                         (optional agent_id FK -- ok if agents already exist)
4. UPDATE contacts.relationship_types  (contacts already exist)
5. touchpoints                   (requires contact_id -- contacts already exist)
6. contact_relationships         (requires contact_id x2)
7. contact_memories              (requires contact_id + memory_id from step 2)
8. company_events                (requires company_id + event_id)
9. event_venues                  (requires event_id + venue_id)
10. notes (from crm.content)     (no FK deps beyond org)
11. event_notes (from event_content)  (requires event_id + note_id from step 10)
```

---

## Target Table Column Reference

For convenience, here are the exact columns available on the key target tables (beyond the standard `id`, `created_at`, `updated_at`, `owner_id` that all tables have):

### `expenses`
| Column | Type | Required | Default |
|--------|------|----------|---------|
| description | text | no | |
| amount | numeric | no | |
| currency | text | no | `'USD'` |
| category | text | no | |
| occurred_at | timestamptz | no | |
| vendor | text | no | |
| notes | text | no | |
| tags | citext[] | no | |

FK: `trip_id` (uuid, optional) references `trips`.

### `touchpoints`
| Column | Type | Required | Default |
|--------|------|----------|---------|
| contact_id | uuid | **yes** | |
| touchpoint_type | text | **yes** | |
| occurred_at | timestamptz | **yes** | |
| subject | text | no | |
| summary | text | no | |
| sentiment | text | no | |
| direction | text | no | |
| channel | text | no | |
| deal_id | uuid | no | |
| company_id | uuid | no | |
| event_id | uuid | no | |
| meta | jsonb | no | |
| tags | citext[] | no | |

### `tasks`
| Column | Type | Required | Default |
|--------|------|----------|---------|
| agent_id | uuid | no | |
| title | text | **yes** | |
| description | text | no | |
| status | text | no | `'pending'` |
| priority | int | no | `0` |
| result | text | no | |
| started_at | timestamptz | no | |
| completed_at | timestamptz | no | |
| meta | jsonb | no | |

### `memories`
| Column | Type | Required | Default |
|--------|------|----------|---------|
| title | text | **yes** | |
| content | text | no | |
| location | text | no | |
| occurred_at | timestamptz | no | |
| mood | text | no | |
| tags | citext[] | no | |

FK: `agent_id` (uuid, optional) references `agents`.

### `contacts` (UPDATE only)
| Column | Type | Notes |
|--------|------|-------|
| relationship_types | citext[] | **Changed from `relationship_type text`.** Set as array. GIN-indexed for `@>` queries. |

### `notes`
| Column | Type | Required | Default |
|--------|------|----------|---------|
| content | text | **yes** | |
| abstract | text | no | |
| overview | text | no | |
| active_count | int | no | `0` |
| last_accessed_at | timestamptz | no | |
| tags | citext[] | no | |

---

## Total Record Count

| Category | Rows |
|----------|------|
| Direct inserts | ~305 |
| Updates (contact types) | ~27 |
| Content -> Notes transform | ~93 |
| Skipped (venue_visits) | 3 |
| **Total** | **~428** |

One ETL script can handle all of this. Execute in the order above, wrap in a transaction, and you're done.

