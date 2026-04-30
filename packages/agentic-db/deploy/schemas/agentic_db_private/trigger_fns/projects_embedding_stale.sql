-- Deploy: schemas/agentic_db_private/trigger_fns/projects_embedding_stale
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/tables/tool_executions/indexes/tool_executions_status_idx


CREATE FUNCTION "agentic_db_private".projects_embedding_stale() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  new.embedding_stale := true;
  new.embedding := NULL;
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

