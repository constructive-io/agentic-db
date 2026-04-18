-- Deploy: schemas/agentic_db_private/trigger_fns/interactions_embedding_stale
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


CREATE FUNCTION agentic_db_private.interactions_embedding_stale() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  new.embedding_stale := true;
  new.embedding := NULL;
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

