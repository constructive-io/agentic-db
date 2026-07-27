-- Deploy: schemas/agentic_db_app_private/trigger_fns/skills_intent_trigger_embedding_stale
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_private/schema


CREATE FUNCTION agentic_db_app_private.skills_intent_trigger_embedding_stale() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  new.intent_trigger_embedding_updated_at := NULL;
  new.intent_trigger_embedding := NULL;
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

