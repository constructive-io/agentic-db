-- Deploy: schemas/agentic_db_app_public/tables/activity_logs/triggers/activity_logs_embedding_auto_updated_at_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs/table
-- requires: schemas/agentic_db_app_private/trigger_fns/activity_logs_embedding_auto_updated_at


CREATE TRIGGER activity_logs_embedding_auto_updated_at_tg
BEFORE UPDATE ON agentic_db_app_public.activity_logs
FOR EACH ROW
WHEN (OLD.embedding IS DISTINCT FROM NEW.embedding)
EXECUTE PROCEDURE agentic_db_app_private.activity_logs_embedding_auto_updated_at ( );

