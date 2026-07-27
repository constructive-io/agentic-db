-- Deploy: schemas/agentic_db_app_private/trigger_fns/memories_embedding_stale
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_private/schema


CREATE FUNCTION agentic_db_app_private.memories_embedding_stale() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  new.embedding_updated_at := NULL;
  new.embedding := NULL;
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

