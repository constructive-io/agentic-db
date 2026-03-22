-- Deploy: schemas/agentic_db_app_public/tables/agent_chunks/triggers/agent_chunks_enqueue_embedding_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/table
-- requires: schemas/agentic_db_private/trigger_fns/agent_chunks_enqueue_embedding
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/columns/embedding_text/column


CREATE TRIGGER agent_chunks_enqueue_embedding_update_tg
AFTER UPDATE ON "agentic_db_app_public".agent_chunks
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE "agentic_db_private".agent_chunks_enqueue_embedding ( );

