-- Deploy: schemas/agentic_db_app_public/tables/projects/triggers/projects_enqueue_embedding_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_private/trigger_fns/projects_enqueue_embedding
-- requires: schemas/agentic_db_app_public/tables/tool_executions/indexes/tool_executions_status_idx


CREATE TRIGGER projects_enqueue_embedding_insert_tg
AFTER INSERT ON agentic_db_app_public.projects
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE agentic_db_private.projects_enqueue_embedding ( );

