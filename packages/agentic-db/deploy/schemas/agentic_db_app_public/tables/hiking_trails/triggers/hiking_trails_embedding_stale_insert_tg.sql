-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails/triggers/hiking_trails_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/table
-- requires: schemas/agentic_db_private/trigger_fns/hiking_trails_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


CREATE TRIGGER hiking_trails_embedding_stale_insert_tg
BEFORE INSERT ON agentic_db_app_public.hiking_trails
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_private.hiking_trails_embedding_stale ( );

