-- Deploy: schemas/agentic_db_private/trigger_fns/memories_embedding_stale
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


CREATE FUNCTION agentic_db_private.memories_embedding_stale() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  SELECT true INTO NEW.embedding_stale;
  SELECT NULL INTO NEW.embedding;
  RETURN NEW;
END
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

