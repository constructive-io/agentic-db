-- Deploy: schemas/agentic_db_app_public/tables/project_chunks/triggers/project_chunks_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/project_chunks/table
-- requires: schemas/agentic_db_private/trigger_fns/project_chunks_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/tool_executions/indexes/tool_executions_status_idx


CREATE TRIGGER project_chunks_embedding_stale_update_tg
BEFORE UPDATE ON "agentic_db_app_public".project_chunks
FOR EACH ROW
WHEN (OLD.embedding_text IS DISTINCT FROM NEW.embedding_text)
EXECUTE PROCEDURE "agentic_db_private".project_chunks_embedding_stale ( );

