-- Deploy: schemas/agentic_db_app_public/tables/goals/triggers/goals_enqueue_chunking_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_private/trigger_fns/goals_enqueue_chunking
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE TRIGGER goals_enqueue_chunking_update_tg
AFTER UPDATE ON "agentic_db_app_public".goals
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".goals_enqueue_chunking ( );

