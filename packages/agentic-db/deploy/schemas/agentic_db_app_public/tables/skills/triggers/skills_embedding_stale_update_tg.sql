-- Deploy: schemas/agentic_db_app_public/tables/skills/triggers/skills_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_private/trigger_fns/skills_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/skills/columns/intent_trigger/column


CREATE TRIGGER skills_embedding_stale_update_tg
BEFORE UPDATE ON agentic_db_app_public.skills
FOR EACH ROW
WHEN (OLD.intent_trigger IS DISTINCT FROM NEW.intent_trigger)
EXECUTE PROCEDURE agentic_db_private.skills_embedding_stale ( );

