-- Deploy: schemas/agentic_db_app_public/tables/code_chunks/triggers/code_chunks_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/code_chunks/table
-- requires: schemas/agentic_db_private/trigger_fns/code_chunks_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


CREATE TRIGGER code_chunks_embedding_stale_insert_tg
BEFORE INSERT ON agentic_db_app_public.code_chunks
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_private.code_chunks_embedding_stale ( );

