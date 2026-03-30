-- Deploy: schemas/agentic_db_app_public/tables/activity_logs/triggers/activity_logs_enqueue_embedding_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs/table
-- requires: schemas/agentic_db_private/trigger_fns/activity_logs_enqueue_embedding
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE TRIGGER activity_logs_enqueue_embedding_update_tg
AFTER UPDATE ON "agentic_db_app_public".activity_logs
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE "agentic_db_private".activity_logs_enqueue_embedding ( );

