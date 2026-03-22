-- Deploy: schemas/agentic_db_app_public/tables/place_chunks/triggers/place_chunks_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/place_chunks/table
-- requires: schemas/agentic_db_private/trigger_fns/place_chunks_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE TRIGGER place_chunks_embedding_stale_insert_tg
BEFORE INSERT ON "agentic_db_app_public".place_chunks
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".place_chunks_embedding_stale ( );

