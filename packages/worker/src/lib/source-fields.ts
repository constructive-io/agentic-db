import type { Queryable } from '../app-jobs-worker';

const IDENT_RE = /^[a-z_][a-z0-9_]*$/;

/** Throw unless `name` is a safe SQL identifier (schema/table/column). */
export function assertIdent(name: string): string {
  if (!IDENT_RE.test(name)) {
    throw new Error(`Unsafe SQL identifier: ${JSON.stringify(name)}`);
  }
  return name;
}

const sourceFieldCache = new Map<string, string[]>();

/**
 * Resolve the embedding source fields for a table by parsing the WHEN clause
 * of its `<table>_embedding_stale_update_tg` trigger, which the schema
 * generator emits as:
 *
 *   WHEN (OLD.first_name IS DISTINCT FROM NEW.first_name OR ...)
 *
 * This keeps the worker generic: whatever fields the blueprint declared as
 * embedding sources are exactly the fields we compose text from.
 */
export async function getSourceFields(
  pg: Queryable,
  schema: string,
  table: string
): Promise<string[]> {
  const cacheKey = `${schema}.${table}`;
  const cached = sourceFieldCache.get(cacheKey);
  if (cached) return cached;

  const { rows } = await pg.query(
    `SELECT pg_get_triggerdef(t.oid) AS def
       FROM pg_trigger t
       JOIN pg_class c ON c.oid = t.tgrelid
       JOIN pg_namespace n ON n.oid = c.relnamespace
      WHERE n.nspname = $1
        AND c.relname = $2
        AND t.tgname = $3`,
    [schema, table, `${table}_embedding_stale_update_tg`]
  );

  const def: string | undefined = rows[0]?.def;
  if (!def) {
    throw new Error(
      `No embedding stale trigger found for ${schema}.${table} — cannot derive source fields`
    );
  }

  const fields = [...def.matchAll(/OLD\.([a-z0-9_]+) IS DISTINCT FROM/gi)].map(
    (m) => m[1]
  );
  if (fields.length === 0) {
    throw new Error(
      `Could not parse source fields from trigger WHEN clause for ${schema}.${table}`
    );
  }

  sourceFieldCache.set(cacheKey, fields);
  return fields;
}

const columnCache = new Map<string, boolean>();

/** Check (and cache) whether a column exists on schema.table. */
export async function hasColumn(
  pg: Queryable,
  schema: string,
  table: string,
  column: string
): Promise<boolean> {
  const cacheKey = `${schema}.${table}.${column}`;
  const cached = columnCache.get(cacheKey);
  if (cached !== undefined) return cached;

  const { rows } = await pg.query(
    `SELECT 1
       FROM information_schema.columns
      WHERE table_schema = $1 AND table_name = $2 AND column_name = $3`,
    [schema, table, column]
  );
  const exists = rows.length > 0;
  columnCache.set(cacheKey, exists);
  return exists;
}

/**
 * Fetch the row and compose the embedding text from its source fields:
 * array values are joined with ', ', scalar values used as-is, and the
 * non-empty parts joined with '. '.
 */
export async function composeSourceText(
  pg: Queryable,
  schema: string,
  table: string,
  id: string
): Promise<string | null> {
  const fields = await getSourceFields(pg, schema, table);
  const cols = fields.map((f) => `"${assertIdent(f)}"`).join(', ');
  const { rows } = await pg.query(
    `SELECT ${cols} FROM "${assertIdent(schema)}"."${assertIdent(table)}" WHERE id = $1`,
    [id]
  );
  const record = rows[0];
  if (!record) return null;

  const parts = fields
    .map((f) => {
      const val = record[f];
      if (Array.isArray(val)) return val.join(', ');
      if (typeof val === 'string') return val;
      if (val === null || val === undefined) return null;
      return String(val);
    })
    .filter(Boolean);

  return parts.join('. ').trim() || null;
}
