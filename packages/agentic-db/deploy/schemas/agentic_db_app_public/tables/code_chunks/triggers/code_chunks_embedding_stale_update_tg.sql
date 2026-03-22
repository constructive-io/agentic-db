-- Deploy: schemas/agentic_db_app_public/tables/code_chunks/triggers/code_chunks_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/code_chunks/table
-- requires: schemas/agentic_db_private/trigger_fns/code_chunks_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/code_chunks/columns/embedding_text/column


CREATE TRIGGER code_chunks_embedding_stale_update_tg
BEFORE UPDATE ON "agentic_db_app_public".code_chunks
FOR EACH ROW
WHEN (OLD.content IS DISTINCT FROM NEW.content OR OLD.file_path IS DISTINCT FROM NEW.file_path OR OLD.symbol_name IS DISTINCT FROM NEW.symbol_name)
EXECUTE PROCEDURE "agentic_db_private".code_chunks_embedding_stale ( );

