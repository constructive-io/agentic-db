-- Deploy: schemas/agentic_db_app_public/tables/venues_chunks/triggers/timestamps_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agentic_db_app_public".venues_chunks
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

