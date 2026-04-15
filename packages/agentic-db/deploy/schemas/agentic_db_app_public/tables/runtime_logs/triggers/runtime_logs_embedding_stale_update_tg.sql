-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs/triggers/runtime_logs_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


CREATE TRIGGER runtime_logs_embedding_stale_update_tg
BEFORE UPDATE ON "agentic_db_app_public".runtime_logs
FOR EACH ROW
WHEN (OLD.message IS DISTINCT FROM NEW.message)
EXECUTE PROCEDURE "agentic_db_private".runtime_logs_embedding_stale ( );

