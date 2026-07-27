-- Deploy: schemas/agentic_db_app_public/tables/skills/triggers/skills_intent_trigger_embedding_auto_updated_at_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_private/trigger_fns/skills_intent_trigger_embedding_auto_updated_at


CREATE TRIGGER skills_intent_trigger_embedding_auto_updated_at_tg
BEFORE UPDATE ON agentic_db_app_public.skills
FOR EACH ROW
WHEN (OLD.intent_trigger_embedding IS DISTINCT FROM NEW.intent_trigger_embedding)
EXECUTE PROCEDURE agentic_db_app_private.skills_intent_trigger_embedding_auto_updated_at ( );

