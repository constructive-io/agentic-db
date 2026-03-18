/**
 * create-indexes.ts — Comprehensive indexing strategy
 *
 * Index types:
 *   HNSW   — pgvector semantic similarity (m=16, ef_construction=128)
 *   BM25   — ParadeDB keyword search on embedding_text + content fields
 *   GIN    — tags (citext[]) and tsvector columns
 *   Trigram — fuzzy name/title matching (pg_trgm)
 *   B-Tree — FKs, status, dates, lookups
 *   GIST   — PostGIS geography(Point,4326) spatial proximity
 *
 * TSVector configuration for 6 entities:
 *   contacts, companies, events, venues, projects, documents
 */

import {
  createPlatformClient,
  requireDatabaseId,
  withRetry,
} from './helpers';

const databaseId = requireDatabaseId();
const client = createPlatformClient();

// ---------------------------------------------------------------------------
// Index definitions (declarative — resolved to IDs at runtime)
// ---------------------------------------------------------------------------

interface IndexDef {
  table: string;
  column: string;
  method: string;
  opclass?: string;
  options?: Record<string, unknown>;
}

// HNSW indexes on embedding columns (vector cosine similarity)
const HNSW_INDEXES: IndexDef[] = [
  'contacts', 'companies', 'deals', 'events', 'venues', 'notes',
  'interactions',
  'tasks', 'rules', 'memories', 'skills', 'goals',
  'prompts',
  'agents', 'sessions', 'chats', 'chat_messages', 'threads', 'blueprints',
  'tools',
  'projects',
  'repositories', 'chunks',
  'messages', 'calendar_events', 'documents',
  'trips',
  'ideas', 'reminders', 'lists',
  'recipes', 'templates',
  'session_archives',
  'activity_log',
  // Chunk tables
  'contact_chunks', 'company_chunks', 'deal_chunks', 'event_chunks',
  'venue_chunks', 'note_chunks', 'interaction_chunks',
  'task_chunks', 'rule_chunks', 'memory_chunks', 'skill_chunks',
  'goal_chunks', 'prompt_chunks',
  'agent_chunks', 'session_chunks', 'chat_chunks', 'chat_message_chunks',
  'thread_chunks', 'blueprint_chunks', 'tool_chunks',
  'session_archive_chunks', 'activity_log_chunks',
  'project_chunks',
  'repository_chunks',
  'message_chunks', 'calendar_event_chunks', 'document_chunks',
  'trip_chunks',
  'idea_chunks', 'reminder_chunks', 'list_chunks',
  'recipe_chunks', 'template_chunks',
].map((table) => ({
  table,
  column: 'embedding',
  method: 'hnsw',
  opclass: 'vector_cosine_ops',
  options: { m: 16, ef_construction: 128 },
}));

// Extra HNSW indexes on secondary vector columns
const HNSW_EXTRA: IndexDef[] = [
  { table: 'rules', column: 'trigger_concept', method: 'hnsw', opclass: 'vector_cosine_ops', options: { m: 16, ef_construction: 128 } },
  { table: 'skills', column: 'intent_trigger', method: 'hnsw', opclass: 'vector_cosine_ops', options: { m: 16, ef_construction: 128 } },
];

// BM25 indexes on embedding_text (keyword search for hybrid RAG)
const BM25_INDEXES: IndexDef[] = [
  'contacts', 'companies', 'deals', 'events', 'venues', 'notes',
  'interactions',
  'tasks', 'rules', 'memories', 'skills', 'goals',
  'prompts',
  'agents', 'sessions', 'chats', 'chat_messages', 'threads', 'blueprints',
  'tools',
  'projects',
  'repositories', 'chunks',
  'messages', 'calendar_events', 'documents',
  'trips',
  'ideas', 'reminders', 'lists',
  'recipes', 'templates',
  'session_archives',
  'activity_log',
  // Chunk tables
  'contact_chunks', 'company_chunks', 'deal_chunks', 'event_chunks',
  'venue_chunks', 'note_chunks', 'interaction_chunks',
  'task_chunks', 'rule_chunks', 'memory_chunks', 'skill_chunks',
  'goal_chunks', 'prompt_chunks',
  'agent_chunks', 'session_chunks', 'chat_chunks', 'chat_message_chunks',
  'thread_chunks', 'blueprint_chunks', 'tool_chunks',
  'session_archive_chunks', 'activity_log_chunks',
  'project_chunks',
  'repository_chunks',
  'message_chunks', 'calendar_event_chunks', 'document_chunks',
  'trip_chunks',
  'idea_chunks', 'reminder_chunks', 'list_chunks',
  'recipe_chunks', 'template_chunks',
].map((table) => ({
  table,
  column: 'embedding_text',
  method: 'bm25',
  options: { text_config: 'english' },
}));

// Extra BM25 on long-form content fields
const BM25_EXTRA: IndexDef[] = [
  { table: 'notes', column: 'content', method: 'bm25', options: { text_config: 'english' } },
  { table: 'messages', column: 'body_text', method: 'bm25', options: { text_config: 'english' } },
  { table: 'documents', column: 'content', method: 'bm25', options: { text_config: 'english' } },
  { table: 'chat_messages', column: 'content', method: 'bm25', options: { text_config: 'english' } },
  { table: 'prompts', column: 'content', method: 'bm25', options: { text_config: 'english' } },
  { table: 'activity_log', column: 'description', method: 'bm25', options: { text_config: 'english' } },
];

// GIN indexes on tags (citext[]) columns
const GIN_TAG_INDEXES: IndexDef[] = [
  'contacts', 'companies', 'deals', 'events', 'venues', 'notes',
  'interactions',
  'tasks', 'rules', 'memories', 'skills', 'goals',
  'prompts',
  'blueprints',
  'tools',
  'projects',
  'repositories',
  'messages', 'calendar_events', 'expenses', 'documents',
  'billing_subscriptions', 'trips',
  'ideas', 'habits', 'habit_logs', 'lists',
  'recipes', 'templates',
  'activity_log',
].map((table) => ({
  table,
  column: 'tags',
  method: 'gin',
}));

// GIN indexes on JSONB columns (containment queries)
const GIN_JSONB_INDEXES: IndexDef[] = [
  { table: 'habit_logs', column: 'data', method: 'gin' },
  { table: 'tools', column: 'input_schema', method: 'gin' },
  { table: 'workflow_steps', column: 'action_config', method: 'gin' },
  { table: 'recipes', column: 'ingredients', method: 'gin' },
  { table: 'user_settings', column: 'value', method: 'gin' },
  { table: 'integrations', column: 'config', method: 'gin' },
  { table: 'skill_executions', column: 'input', method: 'gin' },
  { table: 'skill_executions', column: 'output', method: 'gin' },
  { table: 'activity_log', column: 'data', method: 'gin' },
];

// GIN indexes on tsvector columns
const GIN_TSV_INDEXES: IndexDef[] = [
  'contacts', 'companies', 'events', 'venues', 'projects', 'documents',
].map((table) => ({
  table,
  column: 'search_tsv',
  method: 'gin',
}));

// Trigram indexes on name/title fields (fuzzy matching)
const TRGM_INDEXES: IndexDef[] = [
  { table: 'contacts', column: 'first_name', method: 'gin', opclass: 'gin_trgm_ops' },
  { table: 'contacts', column: 'last_name', method: 'gin', opclass: 'gin_trgm_ops' },
  { table: 'companies', column: 'name', method: 'gin', opclass: 'gin_trgm_ops' },
  { table: 'events', column: 'name', method: 'gin', opclass: 'gin_trgm_ops' },
  { table: 'venues', column: 'name', method: 'gin', opclass: 'gin_trgm_ops' },
  { table: 'projects', column: 'name', method: 'gin', opclass: 'gin_trgm_ops' },
  { table: 'tasks', column: 'title', method: 'gin', opclass: 'gin_trgm_ops' },
  { table: 'skills', column: 'name', method: 'gin', opclass: 'gin_trgm_ops' },
  { table: 'goals', column: 'title', method: 'gin', opclass: 'gin_trgm_ops' },
  { table: 'blueprints', column: 'title', method: 'gin', opclass: 'gin_trgm_ops' },
  { table: 'calendar_events', column: 'title', method: 'gin', opclass: 'gin_trgm_ops' },
  { table: 'documents', column: 'title', method: 'gin', opclass: 'gin_trgm_ops' },
  { table: 'lists', column: 'name', method: 'gin', opclass: 'gin_trgm_ops' },
  { table: 'agents', column: 'name', method: 'gin', opclass: 'gin_trgm_ops' },
  { table: 'repositories', column: 'name', method: 'gin', opclass: 'gin_trgm_ops' },
  { table: 'tools', column: 'name', method: 'gin', opclass: 'gin_trgm_ops' },
  { table: 'recipes', column: 'name', method: 'gin', opclass: 'gin_trgm_ops' },
  { table: 'templates', column: 'name', method: 'gin', opclass: 'gin_trgm_ops' },
  { table: 'trips', column: 'name', method: 'gin', opclass: 'gin_trgm_ops' },
  { table: 'billing_subscriptions', column: 'name', method: 'gin', opclass: 'gin_trgm_ops' },
  { table: 'integrations', column: 'name', method: 'gin', opclass: 'gin_trgm_ops' },
  { table: 'workflows', column: 'name', method: 'gin', opclass: 'gin_trgm_ops' },
  { table: 'ideas', column: 'content', method: 'gin', opclass: 'gin_trgm_ops' },
  { table: 'reminders', column: 'title', method: 'gin', opclass: 'gin_trgm_ops' },
  { table: 'habits', column: 'name', method: 'gin', opclass: 'gin_trgm_ops' },
  { table: 'prompts', column: 'name', method: 'gin', opclass: 'gin_trgm_ops' },
];

// B-Tree indexes on FKs, status, dates, lookups
const BTREE_INDEXES: IndexDef[] = [
  // CRM
  { table: 'contacts', column: 'email', method: 'btree' },
  { table: 'contacts', column: 'relationship_type', method: 'btree' },
  { table: 'companies', column: 'domain', method: 'btree' },
  { table: 'deals', column: 'stage', method: 'btree' },
  { table: 'deals', column: 'expected_close_date', method: 'btree' },
  { table: 'events', column: 'started_at', method: 'btree' },
  { table: 'events', column: 'event_type', method: 'btree' },
  { table: 'venues', column: 'city', method: 'btree' },
  { table: 'venues', column: 'category', method: 'btree' },
  { table: 'interactions', column: 'contact_id', method: 'btree' },
  { table: 'interactions', column: 'type', method: 'btree' },
  { table: 'interactions', column: 'occurred_at', method: 'btree' },
  // Agent
  { table: 'tasks', column: 'status', method: 'btree' },
  { table: 'tasks', column: 'priority', method: 'btree' },
  { table: 'tasks', column: 'project_id', method: 'btree' },
  { table: 'tasks', column: 'assigned_agent_id', method: 'btree' },
  { table: 'tasks', column: 'due_date', method: 'btree' },
  { table: 'rules', column: 'kind', method: 'btree' },
  { table: 'rules', column: 'is_active', method: 'btree' },
  { table: 'memories', column: 'importance', method: 'btree' },
  { table: 'memories', column: 'verified', method: 'btree' },
  { table: 'skills', column: 'is_active', method: 'btree' },
  { table: 'goals', column: 'status', method: 'btree' },
  { table: 'goals', column: 'category', method: 'btree' },
  { table: 'goals', column: 'target_date', method: 'btree' },
  // Runtime
  { table: 'agents', column: 'status', method: 'btree' },
  { table: 'sessions', column: 'status', method: 'btree' },
  { table: 'sessions', column: 'started_at', method: 'btree' },
  { table: 'sessions', column: 'agent_id', method: 'btree' },
  { table: 'execution_log', column: 'session_id', method: 'btree' },
  { table: 'chats', column: 'started_at', method: 'btree' },
  { table: 'chat_messages', column: 'chat_id', method: 'btree' },
  { table: 'chat_messages', column: 'thread_id', method: 'btree' },
  { table: 'chat_messages', column: 'role', method: 'btree' },
  { table: 'threads', column: 'status', method: 'btree' },
  { table: 'threads', column: 'parent_thread_id', method: 'btree' },
  { table: 'processes', column: 'agent_id', method: 'btree' },
  { table: 'processes', column: 'status', method: 'btree' },
  { table: 'scheduled_jobs', column: 'is_active', method: 'btree' },
  { table: 'scheduled_jobs', column: 'next_run_at', method: 'btree' },
  { table: 'scheduled_jobs', column: 'schedule_type', method: 'btree' },
  { table: 'scheduled_jobs', column: 'agent_id', method: 'btree' },
  // New OpenViking-inspired tables
  { table: 'memories', column: 'memory_category', method: 'btree' },
  { table: 'memories', column: 'active_count', method: 'btree' },
  { table: 'memories', column: 'last_accessed_at', method: 'btree' },
  { table: 'skills', column: 'active_count', method: 'btree' },
  { table: 'skills', column: 'last_accessed_at', method: 'btree' },
  { table: 'notes', column: 'active_count', method: 'btree' },
  { table: 'notes', column: 'last_accessed_at', method: 'btree' },
  { table: 'documents', column: 'active_count', method: 'btree' },
  { table: 'documents', column: 'last_accessed_at', method: 'btree' },
  { table: 'agent_spawns', column: 'parent_agent_id', method: 'btree' },
  { table: 'agent_spawns', column: 'status', method: 'btree' },
  { table: 'session_archives', column: 'session_id', method: 'btree' },
  { table: 'sessions', column: 'archived_at', method: 'btree' },
  { table: 'sessions', column: 'compression_count', method: 'btree' },
  // Projects
  { table: 'projects', column: 'status', method: 'btree' },
  { table: 'projects', column: 'start_date', method: 'btree' },
  { table: 'projects', column: 'due_date', method: 'btree' },
  { table: 'milestones', column: 'project_id', method: 'btree' },
  { table: 'milestones', column: 'due_date', method: 'btree' },
  { table: 'milestones', column: 'status', method: 'btree' },
  // Codebase
  { table: 'files', column: 'repository_id', method: 'btree' },
  { table: 'files', column: 'path', method: 'btree' },
  { table: 'files', column: 'language', method: 'btree' },
  { table: 'chunks', column: 'file_id', method: 'btree' },
  { table: 'chunks', column: 'repository_id', method: 'btree' },
  // Life OS
  { table: 'email_accounts', column: 'email', method: 'btree' },
  { table: 'messages', column: 'received_at', method: 'btree' },
  { table: 'messages', column: 'thread_id', method: 'btree' },
  { table: 'messages', column: 'email_account_id', method: 'btree' },
  { table: 'calendar_accounts', column: 'email', method: 'btree' },
  { table: 'calendar_events', column: 'start_at', method: 'btree' },
  { table: 'calendar_events', column: 'end_at', method: 'btree' },
  { table: 'calendar_events', column: 'calendar_account_id', method: 'btree' },
  { table: 'calendar_events', column: 'status', method: 'btree' },
  { table: 'expenses', column: 'date', method: 'btree' },
  { table: 'expenses', column: 'category', method: 'btree' },
  { table: 'expenses', column: 'merchant', method: 'btree' },
  { table: 'documents', column: 'source_type', method: 'btree' },
  { table: 'documents', column: 'is_read', method: 'btree' },
  { table: 'repositories', column: 'last_synced_at', method: 'btree' },
  // Autonomy
  { table: 'ideas', column: 'status', method: 'btree' },
  { table: 'ideas', column: 'source', method: 'btree' },
  { table: 'reminders', column: 'due_at', method: 'btree' },
  { table: 'reminders', column: 'status', method: 'btree' },
  { table: 'habits', column: 'frequency', method: 'btree' },
  { table: 'habits', column: 'category', method: 'btree' },
  { table: 'habit_logs', column: 'habit_id', method: 'btree' },
  { table: 'habit_logs', column: 'completed_at', method: 'btree' },
  { table: 'habit_logs', column: 'activity_type', method: 'btree' },
  { table: 'habit_logs', column: 'duration_minutes', method: 'btree' },
  { table: 'habit_logs', column: 'distance', method: 'btree' },
  { table: 'habit_logs', column: 'calories', method: 'btree' },
  { table: 'recipes', column: 'cuisine', method: 'btree' },
  { table: 'recipes', column: 'difficulty', method: 'btree' },
  { table: 'templates', column: 'type', method: 'btree' },
  { table: 'templates', column: 'is_active', method: 'btree' },
  // Runtime — tools, MCP, workflows, activity_log
  { table: 'tools', column: 'type', method: 'btree' },
  { table: 'tools', column: 'is_active', method: 'btree' },
  { table: 'workflows', column: 'is_active', method: 'btree' },
  { table: 'workflow_steps', column: 'workflow_id', method: 'btree' },
  { table: 'workflow_steps', column: 'step_order', method: 'btree' },
  { table: 'workflow_runs', column: 'workflow_id', method: 'btree' },
  { table: 'workflow_runs', column: 'status', method: 'btree' },
  { table: 'workflow_runs', column: 'started_at', method: 'btree' },
  { table: 'activity_log', column: 'activity_type', method: 'btree' },
  { table: 'activity_log', column: 'occurred_at', method: 'btree' },
  { table: 'agent_tools', column: 'agent_id', method: 'btree' },
  { table: 'agent_tools', column: 'tool_id', method: 'btree' },
  { table: 'agent_skills', column: 'agent_id', method: 'btree' },
  { table: 'agent_skills', column: 'skill_id', method: 'btree' },
  { table: 'agent_rules', column: 'agent_id', method: 'btree' },
  { table: 'agent_rules', column: 'rule_id', method: 'btree' },
  { table: 'agent_prompts', column: 'agent_id', method: 'btree' },
  { table: 'agent_prompts', column: 'prompt_id', method: 'btree' },
  // Skill executions
  { table: 'skill_executions', column: 'skill_id', method: 'btree' },
  { table: 'skill_executions', column: 'agent_id', method: 'btree' },
  { table: 'skill_executions', column: 'session_id', method: 'btree' },
  { table: 'skill_executions', column: 'status', method: 'btree' },
  { table: 'skill_executions', column: 'started_at', method: 'btree' },
  // Agent soul/state
  { table: 'agents', column: 'preferred_model', method: 'btree' },
  { table: 'agents', column: 'last_active_at', method: 'btree' },
  // Memory enhancements
  { table: 'memories', column: 'memory_type', method: 'btree' },
  { table: 'memories', column: 'agent_id', method: 'btree' },
  // Skills
  { table: 'skills', column: 'category', method: 'btree' },
  // Agent — prompts
  { table: 'prompts', column: 'type', method: 'btree' },
  { table: 'prompts', column: 'is_active', method: 'btree' },
  // CRM — social
  { table: 'contacts', column: 'twitter_handle', method: 'btree' },
  { table: 'contacts', column: 'github_username', method: 'btree' },
  { table: 'tags', column: 'name', method: 'btree' },
  { table: 'tags', column: 'category', method: 'btree' },
  // Life OS — integrations, webhooks, subscriptions, trips
  { table: 'integrations', column: 'provider', method: 'btree' },
  { table: 'integrations', column: 'status', method: 'btree' },
  { table: 'webhooks', column: 'integration_id', method: 'btree' },
  { table: 'webhooks', column: 'event_type', method: 'btree' },
  { table: 'user_settings', column: 'key', method: 'btree' },
  { table: 'user_settings', column: 'category', method: 'btree' },
  { table: 'billing_subscriptions', column: 'status', method: 'btree' },
  { table: 'billing_subscriptions', column: 'next_billing_date', method: 'btree' },
  { table: 'trips', column: 'start_date', method: 'btree' },
  { table: 'trips', column: 'end_date', method: 'btree' },
  { table: 'trips', column: 'status', method: 'btree' },
  // Codebase — repos->chunks direct
  { table: 'venues', column: 'is_favorite', method: 'btree' },
  { table: 'venues', column: 'google_place_id', method: 'btree' },
  // Tasks
  { table: 'tasks', column: 'task_type', method: 'btree' },
  // Chunk tables — B-tree on chunk_index for ordering
  // CRM chunks
  { table: 'contact_chunks', column: 'chunk_index', method: 'btree' },
  { table: 'company_chunks', column: 'chunk_index', method: 'btree' },
  { table: 'deal_chunks', column: 'chunk_index', method: 'btree' },
  { table: 'event_chunks', column: 'chunk_index', method: 'btree' },
  { table: 'venue_chunks', column: 'chunk_index', method: 'btree' },
  { table: 'note_chunks', column: 'chunk_index', method: 'btree' },
  { table: 'interaction_chunks', column: 'chunk_index', method: 'btree' },
  // Agent chunks
  { table: 'task_chunks', column: 'chunk_index', method: 'btree' },
  { table: 'rule_chunks', column: 'chunk_index', method: 'btree' },
  { table: 'memory_chunks', column: 'chunk_index', method: 'btree' },
  { table: 'skill_chunks', column: 'chunk_index', method: 'btree' },
  { table: 'goal_chunks', column: 'chunk_index', method: 'btree' },
  { table: 'prompt_chunks', column: 'chunk_index', method: 'btree' },
  // Runtime chunks
  { table: 'agent_chunks', column: 'chunk_index', method: 'btree' },
  { table: 'session_chunks', column: 'chunk_index', method: 'btree' },
  { table: 'chat_chunks', column: 'chunk_index', method: 'btree' },
  { table: 'chat_message_chunks', column: 'chunk_index', method: 'btree' },
  { table: 'thread_chunks', column: 'chunk_index', method: 'btree' },
  { table: 'blueprint_chunks', column: 'chunk_index', method: 'btree' },
  { table: 'tool_chunks', column: 'chunk_index', method: 'btree' },
  { table: 'session_archive_chunks', column: 'chunk_index', method: 'btree' },
  { table: 'activity_log_chunks', column: 'chunk_index', method: 'btree' },
  // Projects chunks
  { table: 'project_chunks', column: 'chunk_index', method: 'btree' },
  // Codebase chunks
  { table: 'repository_chunks', column: 'chunk_index', method: 'btree' },
  // Life OS chunks
  { table: 'message_chunks', column: 'chunk_index', method: 'btree' },
  { table: 'calendar_event_chunks', column: 'chunk_index', method: 'btree' },
  { table: 'document_chunks', column: 'chunk_index', method: 'btree' },
  { table: 'trip_chunks', column: 'chunk_index', method: 'btree' },
  // Autonomy chunks
  { table: 'idea_chunks', column: 'chunk_index', method: 'btree' },
  { table: 'reminder_chunks', column: 'chunk_index', method: 'btree' },
  { table: 'list_chunks', column: 'chunk_index', method: 'btree' },
  { table: 'recipe_chunks', column: 'chunk_index', method: 'btree' },
  { table: 'template_chunks', column: 'chunk_index', method: 'btree' },
];

// GIST indexes on geography columns (spatial proximity queries)
const GIST_GEO_INDEXES: IndexDef[] = [
  { table: 'venues', column: 'location', method: 'gist' },
  { table: 'contacts', column: 'location_geo', method: 'gist' },
  { table: 'calendar_events', column: 'location_geo', method: 'gist' },
  { table: 'trips', column: 'destination_geo', method: 'gist' },
];

// Combine all indexes
const ALL_INDEXES: IndexDef[] = [
  ...HNSW_INDEXES,
  ...HNSW_EXTRA,
  ...BM25_INDEXES,
  ...BM25_EXTRA,
  ...GIN_TAG_INDEXES,
  ...GIN_JSONB_INDEXES,
  ...GIN_TSV_INDEXES,
  ...TRGM_INDEXES,
  ...BTREE_INDEXES,
  ...GIST_GEO_INDEXES,
];

// ---------------------------------------------------------------------------
// TSVector configuration (weighted multi-field search)
// ---------------------------------------------------------------------------

interface TsvConfig {
  table: string;
  tsvColumn: string;
  sources: { field: string; weight: 'A' | 'B' | 'C' | 'D' }[];
}

const TSV_CONFIGS: TsvConfig[] = [
  {
    table: 'contacts',
    tsvColumn: 'search_tsv',
    sources: [
      { field: 'first_name', weight: 'A' },
      { field: 'last_name', weight: 'A' },
      { field: 'headline', weight: 'B' },
      { field: 'bio', weight: 'C' },
    ],
  },
  {
    table: 'companies',
    tsvColumn: 'search_tsv',
    sources: [
      { field: 'name', weight: 'A' },
      { field: 'description', weight: 'B' },
      { field: 'industry', weight: 'C' },
    ],
  },
  {
    table: 'events',
    tsvColumn: 'search_tsv',
    sources: [
      { field: 'name', weight: 'A' },
      { field: 'notes', weight: 'B' },
      { field: 'location', weight: 'C' },
    ],
  },
  {
    table: 'venues',
    tsvColumn: 'search_tsv',
    sources: [
      { field: 'name', weight: 'A' },
      { field: 'notes', weight: 'B' },
      { field: 'neighborhood', weight: 'C' },
    ],
  },
  {
    table: 'projects',
    tsvColumn: 'search_tsv',
    sources: [
      { field: 'name', weight: 'A' },
      { field: 'description', weight: 'B' },
    ],
  },
  {
    table: 'documents',
    tsvColumn: 'search_tsv',
    sources: [
      { field: 'title', weight: 'A' },
      { field: 'content', weight: 'B' },
    ],
  },
];

// ---------------------------------------------------------------------------
// Helpers — resolve table/field names to UUIDs
// ---------------------------------------------------------------------------

type TableMap = Map<string, string>; // tableName -> tableId
type FieldMap = Map<string, Map<string, string>>; // tableName -> (fieldName -> fieldId)

async function fetchAllTables(): Promise<TableMap> {
  const map: TableMap = new Map();
  // Track which schema each table came from so we can prefer app_public
  const tableSchemaIds: Map<string, string> = new Map(); // tableName -> schemaId

  // First, resolve the app_public schema ID for this database
  const schemasResult = await withRetry(() =>
    client.schema
      .findMany({
        first: 100,
        select: { id: true, name: true, databaseId: true },
      })
      .unwrap()
  );
  const schemaNodes = (schemasResult as any)?.schemas?.nodes ?? [];
  let appPublicSchemaId: string | undefined;
  for (const s of schemaNodes) {
    if (s.name === 'app_public' && s.databaseId === databaseId) {
      appPublicSchemaId = s.id;
      break;
    }
  }

  // Fetch all tables (no filter param — filter client-side by databaseId)
  const result = await withRetry(() =>
    client.table
      .findMany({
        first: 500,
        select: { id: true, name: true, databaseId: true, schemaId: true },
      })
      .unwrap()
  );
  const nodes = (result as any)?.tables?.nodes ?? [];
  for (const n of nodes) {
    if (n.name && n.id && n.databaseId === databaseId) {
      const existingSchemaId = tableSchemaIds.get(n.name);
      // If we already have this table name, prefer the app_public version
      if (existingSchemaId) {
        if (n.schemaId === appPublicSchemaId) {
          map.set(n.name, n.id);
          tableSchemaIds.set(n.name, n.schemaId);
        }
        // else keep the existing one
      } else {
        map.set(n.name, n.id);
        tableSchemaIds.set(n.name, n.schemaId ?? '');
      }
    }
  }
  return map;
}

async function buildFieldMap(tables: TableMap): Promise<FieldMap> {
  const fieldMap: FieldMap = new Map();
  // Build reverse lookup: tableId -> tableName
  const idToName = new Map<string, string>();
  for (const [name, id] of tables) {
    idToName.set(id, name);
    fieldMap.set(name, new Map());
  }
  // Fetch ALL fields in one call, then group client-side
  let offset = 0;
  const pageSize = 500;
  let hasMore = true;
  while (hasMore) {
    const result = await withRetry(() =>
      client.field
        .findMany({
          first: pageSize,
          offset,
          select: { id: true, name: true, tableId: true },
        })
        .unwrap()
    );
    const nodes = (result as any)?.fields?.nodes ?? [];
    for (const n of nodes) {
      if (!n.name || !n.id || !n.tableId) continue;
      const tableName = idToName.get(n.tableId);
      if (tableName) {
        fieldMap.get(tableName)!.set(n.name, n.id);
      }
    }
    hasMore = nodes.length === pageSize;
    offset += pageSize;
  }
  return fieldMap;
}

// ---------------------------------------------------------------------------
// Main
// ---------------------------------------------------------------------------

async function main() {
  console.log('\n\ud83d\uddc2\ufe0f  Creating Indexes\n');
  console.log(`   Total indexes to create: ${ALL_INDEXES.length}`);

  // Step 1: Resolve all table/field names to IDs
  console.log('\n   Resolving table and field IDs...');
  const tables = await fetchAllTables();
  const fields = await buildFieldMap(tables);
  console.log(`   Found ${tables.size} tables\n`);

  let created = 0;
  let skipped = 0;
  let errors = 0;

  // Step 2: Create all indexes
  for (const idx of ALL_INDEXES) {
    const indexName = `idx_${idx.table}_${idx.column}_${idx.method}`;
    const tableId = tables.get(idx.table);
    if (!tableId) {
      console.log(`   \u26a0 ${indexName}: table '${idx.table}' not found, skipping`);
      skipped++;
      continue;
    }
    const tableFields = fields.get(idx.table);
    const fieldId = tableFields?.get(idx.column);
    if (!fieldId) {
      console.log(`   \u26a0 ${indexName}: field '${idx.column}' not found on '${idx.table}', skipping`);
      skipped++;
      continue;
    }

    try {
      await withRetry(() =>
        client.index
          .create({
            data: {
              databaseId,
              tableId,
              name: indexName,
              fieldIds: [fieldId],
              accessMethod: idx.method,
              ...(idx.opclass ? { opClasses: [idx.opclass] } : {}),
              ...(idx.options ? { options: idx.options } : {}),
            },
            select: { id: true },
          })
          .unwrap()
      );
      created++;
      console.log(`   \u2713 ${indexName}`);
    } catch (err: unknown) {
      const msg = err instanceof Error ? err.message : String(err);
      if (msg.includes('already exists') || msg.includes('exists')) {
        skipped++;
        console.log(`   \u2022 ${indexName} (exists)`);
      } else {
        errors++;
        console.error(`   \u2717 ${indexName}: ${msg.slice(0, 120)}`);
      }
    }
  }

  // Step 3: TSVector configuration (weighted multi-field search)
  console.log('\n\ud83d\udcc4 Configuring TSVector (weighted multi-field search)\n');

  for (const tsv of TSV_CONFIGS) {
    const tableId = tables.get(tsv.table);
    if (!tableId) {
      console.log(`   \u26a0 ${tsv.table}.${tsv.tsvColumn}: table not found, skipping`);
      continue;
    }
    const tableFields = fields.get(tsv.table);
    if (!tableFields) continue;

    const tsvFieldId = tableFields.get(tsv.tsvColumn);
    if (!tsvFieldId) {
      console.log(`   \u26a0 ${tsv.table}.${tsv.tsvColumn}: tsvector field not found, skipping`);
      continue;
    }

    const sourceFieldIds: string[] = [];
    const weights: string[] = [];
    const langs: string[] = [];
    let missingSource = false;

    for (const src of tsv.sources) {
      const fid = tableFields.get(src.field);
      if (!fid) {
        console.log(`   \u26a0 ${tsv.table}: source field '${src.field}' not found, skipping TSV config`);
        missingSource = true;
        break;
      }
      sourceFieldIds.push(fid);
      weights.push(src.weight);
      langs.push('english');
    }

    if (missingSource) continue;

    try {
      await withRetry(() =>
        client.fullTextSearch
          .create({
            data: {
              tableId,
              fieldId: tsvFieldId,
              fieldIds: sourceFieldIds,
              weights,
              langs,
            },
            select: { id: true },
          })
          .unwrap()
      );
      console.log(`   \u2713 ${tsv.table}.${tsv.tsvColumn}`);
    } catch (err: unknown) {
      const msg = err instanceof Error ? err.message : String(err);
      if (msg.includes('already exists') || msg.includes('exists')) {
        console.log(`   \u2022 ${tsv.table}.${tsv.tsvColumn} (exists)`);
      } else {
        console.error(`   \u2717 ${tsv.table}.${tsv.tsvColumn}: ${msg.slice(0, 120)}`);
      }
    }
  }

  console.log(`\n\u2705 Indexes complete! Created: ${created}, Skipped: ${skipped}, Errors: ${errors}\n`);
}

export { main as default };
