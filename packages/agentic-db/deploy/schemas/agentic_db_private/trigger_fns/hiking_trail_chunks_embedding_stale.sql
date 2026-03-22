-- Deploy: schemas/agentic_db_private/trigger_fns/hiking_trail_chunks_embedding_stale
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE FUNCTION "agentic_db_private".hiking_trail_chunks_embedding_stale() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  SELECT true INTO NEW.embedding_stale;
  SELECT NULL INTO NEW.embedding;
  RETURN NEW;
END
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

