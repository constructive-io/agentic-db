-- Deploy: schemas/agentic_db_app_public/tables/habits_chunks/triggers/timestamps_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agentic_db_app_public".habits_chunks
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

