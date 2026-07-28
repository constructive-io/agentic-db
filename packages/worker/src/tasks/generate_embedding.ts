import type { Task } from '../app-jobs-worker';
import { generateEmbedding, toVectorLiteral } from '../lib/embedding';
import { assertIdent, composeSourceText, hasColumn } from '../lib/source-fields';

/**
 * Payload enqueued by the `<table>_enqueue_embedding` trigger functions:
 *
 *   app_jobs.add_job('generate_embedding', json_build_object(
 *     'table', 'agents', 'schema', 'agentic_db_app_public',
 *     'id', NEW.id::text, 'field', 'embedding'))
 */
export interface GenerateEmbeddingPayload {
  schema: string;
  table: string;
  id: string;
  field?: string;
}

/**
 * Embed a single row: compose text from the table's embedding source fields
 * (derived from its stale trigger), call Ollama, and write the vector back.
 * Writing the embedding fires the `<table>_embedding_auto_updated_at`
 * trigger, which stamps `embedding_updated_at` and marks the row fresh.
 */
const task: Task = async (payload, { pg, logger }) => {
  const { schema, table, id, field } = payload as GenerateEmbeddingPayload;
  const embeddingField = assertIdent(field || 'embedding');

  const text = await composeSourceText(pg, schema, table, id);
  if (!text) {
    logger.info(`No text to embed for ${schema}.${table} ${id} — skipping`);
    return;
  }

  const vector = toVectorLiteral(await generateEmbedding(text));

  const qualified = `"${assertIdent(schema)}"."${assertIdent(table)}"`;
  if (await hasColumn(pg, schema, table, 'embedding_text')) {
    await pg.query(
      `UPDATE ${qualified}
          SET "${embeddingField}" = $1::vector, embedding_text = $2
        WHERE id = $3`,
      [vector, text, id]
    );
  } else {
    await pg.query(
      `UPDATE ${qualified} SET "${embeddingField}" = $1::vector WHERE id = $2`,
      [vector, id]
    );
  }

  logger.info(`Embedded ${schema}.${table} ${id} (${text.length} chars)`);
};

export default task;
