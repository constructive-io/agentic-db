import { Task } from 'graphile-worker';
import OllamaClient from '@agentic-kit/ollama';
import { NodeHttpAdapter } from '@constructive-io/node';
import { createClient } from '@agentic-db/sdk';
import * as dotenv from 'dotenv';
import { resolve } from 'path';

dotenv.config({ path: resolve(__dirname, '../../../../.env') });

export interface EmbedRecordPayload {
  schema: string;
  table: string;
  id: string;
}

/**
 * ORM table configuration: maps SQL table names to ORM model names
 * and the camelCase fields used for embedding text generation.
 */
interface TableConfig {
  modelName: string;
  textFields: string[];
  summaryFields: string[];
  chunkModelName?: string;
  chunkFkField?: string;
}

const TABLE_CONFIGS: Record<string, TableConfig> = {
  contacts: {
    modelName: 'contact',
    textFields: ['firstName', 'lastName', 'headline', 'bio', 'tags'],
    summaryFields: ['firstName', 'lastName', 'headline'],
    chunkModelName: 'contactChunk',
    chunkFkField: 'contactId',
  },
  companies: {
    modelName: 'company',
    textFields: ['name', 'description', 'industry', 'tags'],
    summaryFields: ['name', 'description'],
    chunkModelName: 'companyChunk',
    chunkFkField: 'companyId',
  },
  deals: {
    modelName: 'deal',
    textFields: ['name', 'notes', 'tags'],
    summaryFields: ['name'],
    chunkModelName: 'dealChunk',
    chunkFkField: 'dealId',
  },
  events: {
    modelName: 'event',
    textFields: ['name', 'eventType', 'notesText', 'tags'],
    summaryFields: ['name', 'eventType'],
    chunkModelName: 'eventChunk',
    chunkFkField: 'eventId',
  },
  venues: {
    modelName: 'venue',
    textFields: ['name', 'neighborhood', 'city', 'notesText', 'tags'],
    summaryFields: ['name', 'neighborhood', 'city'],
    chunkModelName: 'venueChunk',
    chunkFkField: 'venueId',
  },
  notes: {
    modelName: 'note',
    textFields: ['content', 'tags'],
    summaryFields: ['content'],
    chunkModelName: 'noteChunk',
    chunkFkField: 'noteId',
  },
  memories: {
    modelName: 'memory',
    textFields: ['content', 'tags'],
    summaryFields: ['content'],
    chunkModelName: 'memoryChunk',
    chunkFkField: 'memoryId',
  },
  skills: {
    modelName: 'skill',
    textFields: ['name', 'description', 'content', 'tags'],
    summaryFields: ['name', 'description'],
    chunkModelName: 'skillChunk',
    chunkFkField: 'skillId',
  },
  rules: {
    modelName: 'rule',
    textFields: ['title', 'content', 'kind', 'tags'],
    summaryFields: ['title', 'kind'],
    chunkModelName: 'ruleChunk',
    chunkFkField: 'ruleId',
  },
  interactions: {
    modelName: 'interaction',
    textFields: ['interactionType', 'summary', 'sentiment', 'tags'],
    summaryFields: ['interactionType', 'summary'],
    chunkModelName: 'interactionChunk',
    chunkFkField: 'interactionId',
  },
  agents: {
    modelName: 'agent',
    textFields: ['name', 'description', 'systemPrompt'],
    summaryFields: ['name', 'description'],
    chunkModelName: 'agentChunk',
    chunkFkField: 'agentId',
  },
  projects: {
    modelName: 'project',
    textFields: ['name', 'description', 'tags'],
    summaryFields: ['name', 'description'],
    chunkModelName: 'projectChunk',
    chunkFkField: 'projectId',
  },
  messages: {
    modelName: 'message',
    textFields: ['content'],
    summaryFields: ['content'],
    chunkModelName: 'messageChunk',
    chunkFkField: 'messageId',
  },
  goals: {
    modelName: 'goal',
    textFields: ['title', 'description', 'tags'],
    summaryFields: ['title', 'description'],
    chunkModelName: 'goalChunk',
    chunkFkField: 'goalId',
  },
  trips: {
    modelName: 'trip',
    textFields: ['name', 'destination', 'notesText', 'tags'],
    summaryFields: ['name', 'destination'],
    chunkModelName: 'tripChunk',
    chunkFkField: 'tripId',
  },
  habits: {
    modelName: 'habit',
    textFields: ['name', 'description', 'tags'],
    summaryFields: ['name', 'description'],
    chunkModelName: 'habitChunk',
    chunkFkField: 'habitId',
  },
  conversations: {
    modelName: 'conversation',
    textFields: ['title', 'summary'],
    summaryFields: ['title'],
    chunkModelName: 'conversationChunk',
    chunkFkField: 'conversationId',
  },
  hiking_trails: {
    modelName: 'hikingTrail',
    textFields: ['name', 'description', 'tags'],
    summaryFields: ['name', 'description'],
    chunkModelName: 'hikingTrailChunk',
    chunkFkField: 'hikingTrailId',
  },
  places: {
    modelName: 'place',
    textFields: ['name', 'description', 'tags'],
    summaryFields: ['name', 'description'],
    chunkModelName: 'placeChunk',
    chunkFkField: 'placeId',
  },
  itinerary_items: {
    modelName: 'itineraryItem',
    textFields: ['title', 'description', 'tags'],
    summaryFields: ['title', 'description'],
    chunkModelName: 'itineraryItemChunk',
    chunkFkField: 'itineraryItemId',
  },
};

// ~6000 chars ~ ~1500 tokens; nomic-embed-text has 8192 token limit
const CHUNK_THRESHOLD = 6000;
// ~3200 chars ~ ~800 tokens per chunk with ~400 char overlap (~100 tokens)
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
function buildSummaryText(
  record: Record<string, unknown>,
  summaryFields: string[],
  fullText: string
): string {
  const parts = summaryFields
    .map((field) => {
      const val = record[field];
      if (Array.isArray(val)) return val.join(', ');
      if (typeof val === 'string') return val;
      return null;
    })
    .filter(Boolean);

  const summaryPrefix = parts.join('. ').trim();
  const textPrefix = fullText.slice(0, SUMMARY_PREFIX_LENGTH);
  const combined = summaryPrefix ? `${summaryPrefix}. ${textPrefix}` : textPrefix;
  return combined.trim();
}

/**
 * Create an authenticated ORM client.
 */
function createOrmClient() {
  const DATABASE_NAME = process.env.DATABASE_NAME || 'agentic-db';
  const GRAPHQL_URL = process.env.GRAPHQL_URL || 'http://[::1]:3000/graphql';
  const APP_HOST = process.env.APP_HOST || `app-public-${DATABASE_NAME}.localhost`;
  const ACCESS_TOKEN = process.env.ACCESS_TOKEN;

  if (!ACCESS_TOKEN) {
    throw new Error('Missing ACCESS_TOKEN env var -- required for ORM client');
  }

  const adapter = new NodeHttpAdapter(GRAPHQL_URL, {
    Host: APP_HOST,
    Authorization: `Bearer ${ACCESS_TOKEN}`,
  });

  return createClient({ adapter });
}

/**
 * Delete all existing chunks for a parent record via ORM.
 */
async function deleteExistingChunks(
  chunkModel: any,
  fkField: string,
  parentId: string,
  logger: { info: (msg: string) => void; error: (msg: string) => void }
): Promise<void> {
  const findResult = await chunkModel.findMany({
    where: { [fkField]: { equalTo: parentId } },
    select: { id: true },
  }).execute();

  if (!findResult.ok) {
    logger.error(`Failed to find existing chunks: ${JSON.stringify(findResult.errors)}`);
    return;
  }

  const dataKey = Object.keys(findResult.data || {})[0];
  const chunks = (findResult.data as any)?.[dataKey]?.nodes || [];

  for (const chunk of chunks) {
    const deleteResult = await chunkModel.delete({
      where: { id: chunk.id },
      select: { id: true },
    }).execute();

    if (!deleteResult.ok) {
      logger.error(`Failed to delete chunk ${chunk.id}: ${JSON.stringify(deleteResult.errors)}`);
    }
  }
}

const task: Task = async (payload, { logger }) => {
  const { schema, table, id } = payload as EmbedRecordPayload;

  if (schema !== 'agent_db_app_public') {
    logger.info(`Ignoring schema ${schema}`);
    return;
  }

  const cfg = TABLE_CONFIGS[table];
  if (!cfg) {
    logger.error(`No ORM config for table ${table} -- skipping`);
    return;
  }

  // Create ORM client
  const client = createOrmClient();
  const model = (client as any)[cfg.modelName];
  if (!model) {
    logger.error(`ORM model '${cfg.modelName}' not found on client`);
    return;
  }

  // Build select fields
  const selectFields: Record<string, boolean> = { id: true };
  for (const f of cfg.textFields) {
    selectFields[f] = true;
  }
  selectFields['embedding'] = true;

  // Fetch the record via ORM
  const findResult = await model.findOne({
    id,
    select: selectFields,
  }).execute();

  if (!findResult.ok) {
    logger.error(`Failed to fetch ${cfg.modelName} ${id}: ${JSON.stringify(findResult.errors)}`);
    return;
  }

  const dataKey = Object.keys(findResult.data || {})[0];
  const record = (findResult.data as any)?.[dataKey];

  if (!record) {
    logger.warn(`Record ${id} not found via ORM model ${cfg.modelName}`);
    return;
  }

  // Concatenate text fields
  const textParts = cfg.textFields
    .map((field) => {
      const val = record[field];
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

  // Initialize Ollama client
  const ollamaUrl = process.env.OLLAMA_URL || 'http://localhost:11434';
  const embeddingModel = process.env.EMBEDDING_MODEL || 'nomic-embed-text';
  const ollamaClient = new OllamaClient(ollamaUrl);

  const generateEmbedding = async (inputText: string): Promise<number[]> => {
    try {
      return await ollamaClient.generateEmbedding(inputText, embeddingModel);
    } catch (err: unknown) {
      const message = err instanceof Error ? err.message : String(err);
      logger.error(`Failed to generate embedding: ${message}`);
      throw err;
    }
  };

  const chunkModel = cfg.chunkModelName ? (client as any)[cfg.chunkModelName] : null;

  if (text.length < CHUNK_THRESHOLD || !chunkModel) {
    // Short text or no chunk model: embed as-is
    const embedding = await generateEmbedding(text);

    const updateResult = await model.update({
      where: { id },
      data: { embedding, embeddingText: text },
      select: { id: true },
    }).execute();

    if (!updateResult.ok) {
      logger.error(`Failed to update embedding for ${table} ${id}: ${JSON.stringify(updateResult.errors)}`);
      return;
    }

    // Clean up any existing chunks if text shrunk below threshold
    if (chunkModel && cfg.chunkFkField) {
      await deleteExistingChunks(chunkModel, cfg.chunkFkField, id, logger);
    }

    logger.info(`Embedded ${table} ${id} directly (${text.length} chars, no chunking)`);
  } else {
    // Long text: embed summary into parent, split + embed chunks
    const summaryText = buildSummaryText(record, cfg.summaryFields, text);
    const summaryEmbedding = await generateEmbedding(summaryText);

    // Update parent record with summary embedding
    const updateResult = await model.update({
      where: { id },
      data: { embedding: summaryEmbedding, embeddingText: summaryText },
      select: { id: true },
    }).execute();

    if (!updateResult.ok) {
      logger.error(`Failed to update summary embedding for ${table} ${id}: ${JSON.stringify(updateResult.errors)}`);
      return;
    }

    // Delete existing chunks, then create fresh ones
    if (cfg.chunkFkField) {
      await deleteExistingChunks(chunkModel, cfg.chunkFkField, id, logger);
    }

    const chunks = splitIntoChunks(text);
    logger.info(`Splitting ${table} ${id} into ${chunks.length} chunks`);

    for (let i = 0; i < chunks.length; i++) {
      const chunkText = chunks[i];
      const chunkEmbedding = await generateEmbedding(chunkText);

      const chunkData: Record<string, unknown> = {
        chunkIndex: i,
        content: chunkText,
        embeddingText: chunkText,
        embedding: chunkEmbedding,
      };

      if (cfg.chunkFkField) {
        chunkData[cfg.chunkFkField] = id;
      }

      const createResult = await chunkModel.create({
        data: chunkData,
        select: { id: true },
      }).execute();

      if (!createResult.ok) {
        logger.error(`Failed to create chunk ${i} for ${table} ${id}: ${JSON.stringify(createResult.errors)}`);
      }
    }

    logger.info(`Embedded ${table} ${id} with ${chunks.length} chunks (${text.length} chars total)`);
  }
};

export default task;
