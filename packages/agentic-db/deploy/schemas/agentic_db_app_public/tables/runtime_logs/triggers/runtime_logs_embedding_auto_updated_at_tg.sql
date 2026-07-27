-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs/triggers/runtime_logs_embedding_auto_updated_at_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/table
-- requires: schemas/agentic_db_app_private/trigger_fns/runtime_logs_embedding_auto_updated_at


CREATE TRIGGER runtime_logs_embedding_auto_updated_at_tg
BEFORE UPDATE ON agentic_db_app_public.runtime_logs
FOR EACH ROW
WHEN (OLD.embedding IS DISTINCT FROM NEW.embedding)
EXECUTE PROCEDURE agentic_db_app_private.runtime_logs_embedding_auto_updated_at ( );

