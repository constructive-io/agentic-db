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
  interactions: ['type', 'summary', 'sentiment', 'tags']
};

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
  let record: any = null;
  await withPgClient(async (pgClient) => {
    const res = await pgClient.query(`SELECT * FROM ${schema}.${table} WHERE id = $1`, [id]);
    record = res.rows[0];
  });

  if (!record) {
    logger.warn(`Record ${id} not found in ${schema}.${table}`);
    return;
  }

  // Concatenate fields into text
  const textParts = fields
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

  logger.info(`Embedding text for ${table} ${id}: "${text.substring(0, 50)}..."`);

  const ollamaUrl = process.env.OLLAMA_URL || 'http://localhost:11434';
  const embeddingModel = process.env.EMBEDDING_MODEL || 'nomic-embed-text';
  
  const client = new OllamaClient(ollamaUrl);
  let embedding: number[];
  
  try {
    embedding = await client.generateEmbedding(text, embeddingModel);
  } catch (err: any) {
    logger.error(`Failed to generate embedding: ${err.message}`);
    throw err;
  }

  const vectorStr = `[${embedding.join(',')}]`;

  // Update record
  await withPgClient(async (pgClient) => {
    const columnsRes = await pgClient.query(
      `SELECT column_name FROM information_schema.columns WHERE table_schema = $1 AND table_name = $2 AND column_name = 'embedding_text'`,
      [schema, table]
    );
    
    if (columnsRes.rowCount && columnsRes.rowCount > 0) {
      await pgClient.query(`UPDATE ${schema}.${table} SET embedding = $1, embedding_text = $2 WHERE id = $3`, [vectorStr, text, id]);
    } else {
      await pgClient.query(`UPDATE ${schema}.${table} SET embedding = $1 WHERE id = $2`, [vectorStr, id]);
    }
  });

  logger.info(`Successfully updated embedding for ${table} ${id}`);
};

export default task;
