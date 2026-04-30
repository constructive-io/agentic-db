-- Deploy: schemas/agentic_db_app_public/tables/touchpoints/triggers/touchpoints_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/touchpoints/table
-- requires: schemas/agentic_db_private/trigger_fns/touchpoints_embedding_stale
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


CREATE TRIGGER touchpoints_embedding_stale_update_tg
BEFORE UPDATE ON agentic_db_app_public.touchpoints
FOR EACH ROW
WHEN (OLD.subject IS DISTINCT FROM NEW.subject OR OLD.summary IS DISTINCT FROM NEW.summary)
EXECUTE PROCEDURE "agentic_db_private".touchpoints_embedding_stale ( );

