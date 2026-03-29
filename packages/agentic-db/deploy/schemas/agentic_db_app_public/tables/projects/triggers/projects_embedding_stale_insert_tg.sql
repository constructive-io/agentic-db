-- Deploy: schemas/agentic_db_app_public/tables/projects/triggers/projects_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_private/trigger_fns/projects_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/runtime_states_chunks/indexes/runtime_states_chunks_chunk_index_idx


CREATE TRIGGER projects_embedding_stale_insert_tg
BEFORE INSERT ON agentic_db_app_public.projects
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_private.projects_embedding_stale ( );

