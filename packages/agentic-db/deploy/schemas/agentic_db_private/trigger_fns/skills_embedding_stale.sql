-- Deploy: schemas/agentic_db_private/trigger_fns/skills_embedding_stale
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/tables/skills/columns/intent_trigger/column


CREATE FUNCTION agentic_db_private.skills_embedding_stale() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  SELECT true INTO NEW.embedding_stale;
  SELECT NULL INTO NEW.intent_trigger_embedding;
  RETURN NEW;
END
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

