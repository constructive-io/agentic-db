-- Deploy: schemas/agentic_db_app_public/tables/trips/triggers/trips_enqueue_chunking_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_private/trigger_fns/trips_enqueue_chunking
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE TRIGGER trips_enqueue_chunking_insert_tg
AFTER INSERT ON "agentic_db_app_public".trips
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".trips_enqueue_chunking ( );

