import type { Task } from '../app-jobs-worker';
import { generateEmbedding, toVectorLiteral } from '../lib/embedding';
import { assertIdent, composeSourceText } from '../lib/source-fields';

/**
 * Payload enqueued by the `<table>_enqueue_chunking` trigger functions:
 *
 *   app_jobs.add_job('generate_chunks', json_build_object(
 *     'table', 'contacts', 'schema', 'agentic_db_app_public',
 *     'id', NEW.id::text, 'chunks_table', 'contacts_chunks',
 *     'chunk_size', '1000', 'chunk_overlap', '200', 'chunk_strategy', 'fixed'))
 */
export interface GenerateChunksPayload {
  schema: string;
  table: string;
  id: string;
  chunks_table: string;
  chunk_size?: string | number;
  chunk_overlap?: string | number;
  chunk_strategy?: string;
}

/** Split text into fixed-size chunks with overlap. */
export function splitIntoChunks(
  text: string,
  chunkSize: number,
  chunkOverlap: number
): string[] {
  const chunks: string[] = [];
  const step = Math.max(chunkSize - chunkOverlap, 1);
  let start = 0;
  while (start < text.length) {
    const end = Math.min(start + chunkSize, text.length);
    chunks.push(text.slice(start, end));
    if (end >= text.length) break;
    start += step;
  }
  return chunks;
}

/**
 * Chunk a row's source text and store one embedded row per chunk in the
 * companion `<table>_chunks` table (fk `<table>_id`, `chunk_index`,
 * `content`, `embedding`). Existing chunks for the row are replaced.
 */
const task: Task = async (payload, { pg, logger }) => {
  const { schema, table, id, chunks_table } = payload as GenerateChunksPayload;
  const raw = payload as GenerateChunksPayload;
  const chunkSize = Number(raw.chunk_size ?? 1000);
  const chunkOverlap = Number(raw.chunk_overlap ?? 200);

  const qualifiedChunks = `"${assertIdent(schema)}"."${assertIdent(chunks_table)}"`;
  const fkColumn = `"${assertIdent(`${table}_id`)}"`;

  const text = await composeSourceText(pg, schema, table, id);

  // Replace any existing chunks for this row
  await pg.query(`DELETE FROM ${qualifiedChunks} WHERE ${fkColumn} = $1`, [id]);

  if (!text) {
    logger.info(`No text to chunk for ${schema}.${table} ${id} — skipping`);
    return;
  }

  const chunks = splitIntoChunks(text, chunkSize, chunkOverlap);
  for (let i = 0; i < chunks.length; i++) {
    const vector = toVectorLiteral(await generateEmbedding(chunks[i]));
    await pg.query(
      `INSERT INTO ${qualifiedChunks} (${fkColumn}, chunk_index, content, embedding)
       VALUES ($1, $2, $3, $4::vector)`,
      [id, i, chunks[i], vector]
    );
  }

  logger.info(
    `Chunked ${schema}.${table} ${id} into ${chunks.length} chunks (${text.length} chars)`
  );
};

export default task;
