-- Deploy: schemas/agentic_db_app_public/tables/codebas_chunks/triggers/codebas_chunks_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/table
-- requires: schemas/agentic_db_private/trigger_fns/codebas_chunks_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


CREATE TRIGGER codebas_chunks_embedding_stale_update_tg
BEFORE UPDATE ON "agentic_db_app_public".codebas_chunks
FOR EACH ROW
WHEN (OLD.embedding_text IS DISTINCT FROM NEW.embedding_text)
EXECUTE PROCEDURE "agentic_db_private".codebas_chunks_embedding_stale ( );

