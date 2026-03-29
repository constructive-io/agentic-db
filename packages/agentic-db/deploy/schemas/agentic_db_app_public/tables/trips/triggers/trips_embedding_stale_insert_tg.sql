-- Deploy: schemas/agentic_db_app_public/tables/trips/triggers/trips_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_private/trigger_fns/trips_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


CREATE TRIGGER trips_embedding_stale_insert_tg
BEFORE INSERT ON agentic_db_app_public.trips
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_private.trips_embedding_stale ( );

