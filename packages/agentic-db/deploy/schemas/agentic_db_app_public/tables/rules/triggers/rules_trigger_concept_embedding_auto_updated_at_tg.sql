-- Deploy: schemas/agentic_db_app_public/tables/rules/triggers/rules_trigger_concept_embedding_auto_updated_at_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_private/trigger_fns/rules_trigger_concept_embedding_auto_updated_at


CREATE TRIGGER rules_trigger_concept_embedding_auto_updated_at_tg
BEFORE UPDATE ON agentic_db_app_public.rules
FOR EACH ROW
WHEN (OLD.trigger_concept_embedding IS DISTINCT FROM NEW.trigger_concept_embedding)
EXECUTE PROCEDURE agentic_db_app_private.rules_trigger_concept_embedding_auto_updated_at ( );

