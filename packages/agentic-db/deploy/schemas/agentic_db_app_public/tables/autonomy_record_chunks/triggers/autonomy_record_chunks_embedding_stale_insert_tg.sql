-- Deploy: schemas/agentic_db_app_public/tables/autonomy_record_chunks/triggers/autonomy_record_chunks_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx
-- requires: schemas/agentic_db_private/trigger_fns/autonomy_record_chunks_embedding_stale


CREATE TRIGGER autonomy_record_chunks_embedding_stale_insert_tg
BEFORE INSERT ON "agentic_db_app_public".autonomy_record_chunks
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".autonomy_record_chunks_embedding_stale ( );

