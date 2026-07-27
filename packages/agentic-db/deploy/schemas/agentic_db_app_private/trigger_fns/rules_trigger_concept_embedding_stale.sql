-- Deploy: schemas/agentic_db_app_private/trigger_fns/rules_trigger_concept_embedding_stale
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_private/schema


CREATE FUNCTION agentic_db_app_private.rules_trigger_concept_embedding_stale() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  new.trigger_concept_embedding_updated_at := NULL;
  new.trigger_concept_embedding := NULL;
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

