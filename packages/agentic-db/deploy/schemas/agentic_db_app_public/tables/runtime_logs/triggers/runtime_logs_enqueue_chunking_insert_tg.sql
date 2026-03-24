-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs/triggers/runtime_logs_enqueue_chunking_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/table
-- requires: schemas/agentic_db_private/trigger_fns/runtime_logs_enqueue_chunking
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


CREATE TRIGGER runtime_logs_enqueue_chunking_insert_tg
AFTER INSERT ON "agentic_db_app_public".runtime_logs
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".runtime_logs_enqueue_chunking ( );

