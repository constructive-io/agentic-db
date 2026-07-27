-- Deploy: schemas/agentic_db_app_public/tables/tasks/triggers/tasks_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_private/trigger_fns/tasks_embedding_stale


CREATE TRIGGER tasks_embedding_stale_update_tg
BEFORE UPDATE ON agentic_db_app_public.tasks
FOR EACH ROW
WHEN (OLD.title IS DISTINCT FROM NEW.title OR OLD.description IS DISTINCT FROM NEW.description OR OLD.result IS DISTINCT FROM NEW.result)
EXECUTE PROCEDURE agentic_db_app_private.tasks_embedding_stale ( );

