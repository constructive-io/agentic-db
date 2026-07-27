-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs/triggers/runtime_logs_enqueue_embedding_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/table
-- requires: schemas/agentic_db_app_private/trigger_fns/runtime_logs_enqueue_embedding


CREATE TRIGGER runtime_logs_enqueue_embedding_insert_tg
AFTER INSERT ON agentic_db_app_public.runtime_logs
FOR EACH ROW
WHEN (NEW.embedding_updated_at IS NULL)
EXECUTE PROCEDURE agentic_db_app_private.runtime_logs_enqueue_embedding ( );

