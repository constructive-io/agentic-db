-- Deploy: schemas/agentic_db_app_public/tables/email_threads_chunks/triggers/timestamps_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_threads_chunks/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agentic_db_app_public".email_threads_chunks
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

