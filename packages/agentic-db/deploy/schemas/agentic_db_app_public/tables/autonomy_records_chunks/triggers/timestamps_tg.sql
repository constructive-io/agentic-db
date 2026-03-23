-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records_chunks/triggers/timestamps_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON agentic_db_app_public.autonomy_records_chunks
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

