-- Deploy: schemas/agentic_db_app_public/tables/documents_chunks/triggers/timestamps_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents_chunks/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON agentic_db_app_public.documents_chunks
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

