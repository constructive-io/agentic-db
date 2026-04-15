-- Deploy: schemas/agentic_db_app_public/tables/trips/triggers/trips_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE TRIGGER trips_embedding_stale_insert_tg
BEFORE INSERT ON "agentic_db_app_public".trips
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".trips_embedding_stale ( );

