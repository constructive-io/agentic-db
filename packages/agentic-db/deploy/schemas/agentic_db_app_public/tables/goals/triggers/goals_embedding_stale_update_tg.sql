-- Deploy: schemas/agentic_db_app_public/tables/goals/triggers/goals_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_private/trigger_fns/goals_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/goals/columns/embedding_text/column


CREATE TRIGGER goals_embedding_stale_update_tg
BEFORE UPDATE ON "agentic_db_app_public".goals
FOR EACH ROW
WHEN (OLD.title IS DISTINCT FROM NEW.title OR OLD.description IS DISTINCT FROM NEW.description)
EXECUTE PROCEDURE "agentic_db_private".goals_embedding_stale ( );

