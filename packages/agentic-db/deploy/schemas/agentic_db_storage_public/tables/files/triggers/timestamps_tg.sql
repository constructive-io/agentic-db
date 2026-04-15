-- Deploy: schemas/agentic_db_storage_public/tables/files/triggers/timestamps_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON agentic_db_storage_public.files
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

