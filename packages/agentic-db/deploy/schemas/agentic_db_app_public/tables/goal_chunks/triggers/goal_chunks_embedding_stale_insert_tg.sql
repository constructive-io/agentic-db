-- Deploy: schemas/agentic_db_app_public/tables/goal_chunks/triggers/goal_chunks_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/table
-- requires: schemas/agentic_db_private/trigger_fns/goal_chunks_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE TRIGGER goal_chunks_embedding_stale_insert_tg
BEFORE INSERT ON "agentic_db_app_public".goal_chunks
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".goal_chunks_embedding_stale ( );

