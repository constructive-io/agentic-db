-- Deploy: schemas/agentic_db_app_public/tables/prompts/triggers/prompts_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table
-- requires: schemas/agentic_db_private/trigger_fns/prompts_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


CREATE TRIGGER prompts_embedding_stale_insert_tg
BEFORE INSERT ON agentic_db_app_public.prompts
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_private.prompts_embedding_stale ( );

