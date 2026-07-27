-- Deploy: schemas/agentic_db_app_public/tables/activity_logs/triggers/activity_logs_enqueue_embedding_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs/table
-- requires: schemas/agentic_db_app_private/trigger_fns/activity_logs_enqueue_embedding


CREATE TRIGGER activity_logs_enqueue_embedding_insert_tg
AFTER INSERT ON agentic_db_app_public.activity_logs
FOR EACH ROW
WHEN (NEW.embedding_updated_at IS NULL)
EXECUTE PROCEDURE agentic_db_app_private.activity_logs_enqueue_embedding ( );

