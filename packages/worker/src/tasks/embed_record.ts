import { Task } from 'graphile-worker';
import OllamaClient from '@agentic-kit/ollama';

export interface EmbedRecordPayload {
  schema: string;
  table: string;
  id: string;
}

const TABLE_FIELDS: Record<string, string[]> = {
  contacts: ['first_name', 'last_name', 'headline', 'bio', 'tags'],
  companies: ['name', 'description', 'industry', 'tags'],
  deals: ['name', 'notes', 'tags'],
  events: ['name', 'event_type', 'notes', 'tags'],
  venues: ['name', 'neighborhood', 'city', 'notes', 'tags'],
  notes: ['content', 'tags'],
  expenses: ['description', 'category', 'merchant', 'tags'],
  tasks: ['title', 'description', 'status', 'tags'],
  memories: ['content', 'tags'],
  skills: ['name', 'description', 'content', 'tags'],
  rules: ['title', 'content', 'kind', 'tags'],
  interactions: ['type', 'summary', 'sentiment', 'tags'],
  agents: ['name', 'role', 'persona', 'backstory'],
  sessions: ['title', 'context_summary', 'session_summary'],
  chats: ['title'],
  chat_messages: ['content'],
  threads: ['title', 'summary'],
  blueprints: ['title', 'trigger_conditions', 'tags'],
  tools: ['name', 'description', 'tags'],
  projects: ['name', 'description', 'tags'],
  repositories: ['name', 'description', 'tags'],
  messages: ['subject', 'body_text', 'tags'],
  calendar_events: ['title', 'description', 'location', 'tags'],
  documents: ['title', 'content', 'tags'],
  trips: ['name', 'destination', 'notes', 'tags'],
  ideas: ['content', 'tags'],
  reminders: ['title'],
  lists: ['name', 'description', 'tags'],
  recipes: ['name', 'description', 'cuisine', 'tags'],
  templates: ['name', 'description', 'tags'],
  session_archives: ['summary'],
  activity_log: ['activity_type', 'title', 'description', 'tags'],
  goals: ['title', 'description', 'tags'],
  prompts: ['name', 'content', 'tags'],
};

// Summary fields: used to build a short summary for the parent record
// when the full text exceeds the chunking threshold
const TABLE_SUMMARY_FIELDS: Record<string, string[]> = {
  contacts: ['first_name', 'last_name', 'headline'],
  companies: ['name', 'description'],
  deals: ['name'],
  events: ['name', 'event_type'],
  venues: ['name', 'neighborhood', 'city'],
  notes: ['content'],
  tasks: ['title', 'description'],
  memories: ['content'],
  skills: ['name', 'description'],
  rules: ['title', 'kind'],
  interactions: ['type', 'summary'],
  agents: ['name', 'role'],
  sessions: ['title'],
  chats: ['title'],
  chat_messages: ['content'],
  threads: ['title'],
  blueprints: ['title'],
  tools: ['name', 'description'],
  projects: ['name', 'description'],
  repositories: ['name', 'description'],
  messages: ['subject'],
  calendar_events: ['title', 'description'],
  documents: ['title'],
  trips: ['name', 'destination'],
  ideas: ['content'],
  reminders: ['title'],
  lists: ['name', 'description'],
  recipes: ['name', 'description'],
  templates: ['name', 'description'],
  session_archives: ['summary'],
  activity_log: ['activity_type', 'title'],
  goals: ['title', 'description'],
  prompts: ['name'],
};

// Maps parent table -> chunk table name + FK column name
const CHUNK_TABLE_MAP: Record<string, { chunkTable: string; fkColumn: string }> = {
  contacts: { chunkTable: 'contact_chunks', fkColumn: 'contact_id' },
  companies: { chunkTable: 'company_chunks', fkColumn: 'company_id' },
  deals: { chunkTable: 'deal_chunks', fkColumn: 'deal_id' },
  events: { chunkTable: 'event_chunks', fkColumn: 'event_id' },
  venues: { chunkTable: 'venue_chunks', fkColumn: 'venue_id' },
  notes: { chunkTable: 'note_chunks', fkColumn: 'note_id' },
  interactions: { chunkTable: 'interaction_chunks', fkColumn: 'interaction_id' },
  tasks: { chunkTable: 'task_chunks', fkColumn: 'task_id' },
  rules: { chunkTable: 'rule_chunks', fkColumn: 'rule_id' },
  memories: { chunkTable: 'memory_chunks', fkColumn: 'memory_id' },
  skills: { chunkTable: 'skill_chunks', fkColumn: 'skill_id' },
  goals: { chunkTable: 'goal_chunks', fkColumn: 'goal_id' },
  prompts: { chunkTable: 'prompt_chunks', fkColumn: 'prompt_id' },
  agents: { chunkTable: 'agent_chunks', fkColumn: 'agent_id' },
  sessions: { chunkTable: 'session_chunks', fkColumn: 'session_id' },
  chats: { chunkTable: 'chat_chunks', fkColumn: 'chat_id' },
  chat_messages: { chunkTable: 'chat_message_chunks', fkColumn: 'chat_message_id' },
  threads: { chunkTable: 'thread_chunks', fkColumn: 'thread_id' },
  blueprints: { chunkTable: 'blueprint_chunks', fkColumn: 'blueprint_id' },
  tools: { chunkTable: 'tool_chunks', fkColumn: 'tool_id' },
  session_archives: { chunkTable: 'session_archive_chunks', fkColumn: 'session_archive_id' },
  activity_log: { chunkTable: 'activity_log_chunks', fkColumn: 'activity_log_id' },
  projects: { chunkTable: 'project_chunks', fkColumn: 'project_id' },
  repositories: { chunkTable: 'repository_chunks', fkColumn: 'repository_id' },
  messages: { chunkTable: 'message_chunks', fkColumn: 'message_id' },
  calendar_events: { chunkTable: 'calendar_event_chunks', fkColumn: 'calendar_event_id' },
  documents: { chunkTable: 'document_chunks', fkColumn: 'document_id' },
  trips: { chunkTable: 'trip_chunks', fkColumn: 'trip_id' },
  ideas: { chunkTable: 'idea_chunks', fkColumn: 'idea_id' },
  reminders: { chunkTable: 'reminder_chunks', fkColumn: 'reminder_id' },
  lists: { chunkTable: 'list_chunks', fkColumn: 'list_id' },
  recipes: { chunkTable: 'recipe_chunks', fkColumn: 'recipe_id' },
  templates: { chunkTable: 'template_chunks', fkColumn: 'template_id' },
};

// ~6000 chars ≈ ~1500 tokens; nomic-embed-text has 8192 token limit
const CHUNK_THRESHOLD = 6000;
// ~3200 chars ≈ ~800 tokens per chunk with ~400 char overlap (~100 tokens)
const CHUNK_SIZE = 3200;
const CHUNK_OVERLAP = 400;
// Summary prefix: first ~4000 chars (~1000 tokens) for parent embedding
const SUMMARY_PREFIX_LENGTH = 4000;

/**
 * Split text into overlapping chunks of approximately CHUNK_SIZE characters.
 */
function splitIntoChunks(text: string): string[] {
  const chunks: string[] = [];
  let start = 0;
  while (start < text.length) {
    const end = Math.min(start + CHUNK_SIZE, text.length);
    chunks.push(text.slice(start, end));
    if (end >= text.length) break;
    start += CHUNK_SIZE - CHUNK_OVERLAP;
  }
  return chunks;
}

/**
 * Build a summary string from the record's summary fields + first N chars of full text.
 */
function buildSummaryText(record: Record<string, unknown>, table: string, fullText: string): string {
  const summaryFields = TABLE_SUMMARY_FIELDS[table] || [];
  const parts = summaryFields
    .map((field) => {
      const val = record[field];
      if (Array.isArray(val)) return val.join(', ');
      if (typeof val === 'string') return val;
      return null;
    })
    .filter(Boolean);

  const summaryPrefix = parts.join('. ').trim();
  // Append the first chunk of the full text for richer context
  const textPrefix = fullText.slice(0, SUMMARY_PREFIX_LENGTH);
  const combined = summaryPrefix ? `${summaryPrefix}. ${textPrefix}` : textPrefix;
  return combined.trim();
}

const task: Task = async (payload, { withPgClient, logger }) => {
  const { schema, table, id } = payload as EmbedRecordPayload;

  if (schema !== 'agent_db_app_public') {
    logger.info(`Ignoring schema ${schema}`);
    return;
  }

  const fields = TABLE_FIELDS[table];
  if (!fields) {
    logger.error(`No fields mapped for table ${table}`);
    return;
  }

  // Fetch the record
  let record: Record<string, unknown> | null = null;
  await withPgClient(async (pgClient) => {
    const res = await pgClient.query(`SELECT * FROM ${schema}.${table} WHERE id = $1`, [id]);
    record = res.rows[0] ?? null;
  });

  if (!record) {
    logger.warn(`Record ${id} not found in ${schema}.${table}`);
    return;
  }

  // Concatenate fields into text
  const textParts = fields
    .map((field) => {
      const val = record![field];
      if (Array.isArray(val)) return val.join(', ');
      return val;
    })
    .filter(Boolean);

  const text = textParts.join('. ').trim();

  if (!text) {
    logger.info(`No meaningful text to embed for ${table} ${id}`);
    return;
  }

  logger.info(`Embedding text for ${table} ${id}: "${text.substring(0, 50)}..." (${text.length} chars)`);

  const ollamaUrl = process.env.OLLAMA_URL || 'http://localhost:11434';
  const embeddingModel = process.env.EMBEDDING_MODEL || 'nomic-embed-text';
  const client = new OllamaClient(ollamaUrl);

  const generateEmbedding = async (inputText: string): Promise<number[]> => {
    try {
      return await client.generateEmbedding(inputText, embeddingModel);
    } catch (err: unknown) {
      const message = err instanceof Error ? err.message : String(err);
      logger.error(`Failed to generate embedding: ${message}`);
      throw err;
    }
  };

  const chunkMapping = CHUNK_TABLE_MAP[table];

  if (text.length < CHUNK_THRESHOLD || !chunkMapping) {
    // Short text or no chunk table: embed as-is (original behavior)
    const embedding = await generateEmbedding(text);
    const vectorStr = `[${embedding.join(',')}]`;

    await withPgClient(async (pgClient) => {
      await pgClient.query(
        `UPDATE ${schema}.${table} SET embedding = $1, embedding_text = $2 WHERE id = $3`,
        [vectorStr, text, id]
      );
    });

    // Clean up any existing chunks if the record shrunk below threshold
    if (chunkMapping) {
      await withPgClient(async (pgClient) => {
        await pgClient.query(
          `DELETE FROM ${schema}.${chunkMapping.chunkTable} WHERE ${chunkMapping.fkColumn} = $1`,
          [id]
        );
      });
    }

    logger.info(`Embedded ${table} ${id} directly (${text.length} chars, no chunking)`);
  } else {
    // Long text: embed summary into parent, split + embed chunks
    const summaryText = buildSummaryText(record, table, text);
    const summaryEmbedding = await generateEmbedding(summaryText);
    const summaryVectorStr = `[${summaryEmbedding.join(',')}]`;

    // Update parent record with summary embedding
    await withPgClient(async (pgClient) => {
      await pgClient.query(
        `UPDATE ${schema}.${table} SET embedding = $1, embedding_text = $2 WHERE id = $3`,
        [summaryVectorStr, summaryText, id]
      );
    });

    // Split into chunks and embed each
    const chunks = splitIntoChunks(text);
    logger.info(`Splitting ${table} ${id} into ${chunks.length} chunks`);

    await withPgClient(async (pgClient) => {
      // Delete existing chunks for this record, then insert fresh
      await pgClient.query(
        `DELETE FROM ${schema}.${chunkMapping.chunkTable} WHERE ${chunkMapping.fkColumn} = $1`,
        [id]
      );

      for (let i = 0; i < chunks.length; i++) {
        const chunkText = chunks[i];
        const chunkEmbedding = await generateEmbedding(chunkText);
        const chunkVectorStr = `[${chunkEmbedding.join(',')}]`;

        // Copy entity_id from parent record for RLS
        const entityId = record!.entity_id ?? null;

        await pgClient.query(
          `INSERT INTO ${schema}.${chunkMapping.chunkTable}
           (${chunkMapping.fkColumn}, chunk_index, content, embedding_text, embedding, entity_id)
           VALUES ($1, $2, $3, $4, $5, $6)`,
          [id, i, chunkText, chunkText, chunkVectorStr, entityId]
        );
      }
    });

    logger.info(`Embedded ${table} ${id} with ${chunks.length} chunks (${text.length} chars total)`);
  }
};

export default task;
