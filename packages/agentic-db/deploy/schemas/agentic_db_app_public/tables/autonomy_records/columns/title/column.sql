-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records/columns/title/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/columns/updated_at/alterations/alt0000006426


ALTER TABLE agentic_db_app_public.autonomy_records 
  ADD COLUMN title text;

