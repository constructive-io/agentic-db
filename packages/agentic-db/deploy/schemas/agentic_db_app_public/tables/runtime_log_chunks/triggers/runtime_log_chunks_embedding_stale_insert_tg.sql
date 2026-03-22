-- Deploy: schemas/agentic_db_app_public/tables/runtime_log_chunks/triggers/runtime_log_chunks_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_log_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_private/trigger_fns/runtime_log_chunks_embedding_stale


CREATE TRIGGER runtime_log_chunks_embedding_stale_insert_tg
BEFORE INSERT ON "agentic_db_app_public".runtime_log_chunks
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".runtime_log_chunks_embedding_stale ( );

