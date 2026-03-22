-- Deploy: schemas/agentic_db_app_public/tables/agent_tasks/triggers/agent_tasks_enqueue_embedding_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/table
-- requires: schemas/agentic_db_private/trigger_fns/agent_tasks_enqueue_embedding
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/columns/embedding_text/column


CREATE TRIGGER agent_tasks_enqueue_embedding_update_tg
AFTER UPDATE ON agentic_db_app_public.agent_tasks
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE agentic_db_private.agent_tasks_enqueue_embedding ( );

