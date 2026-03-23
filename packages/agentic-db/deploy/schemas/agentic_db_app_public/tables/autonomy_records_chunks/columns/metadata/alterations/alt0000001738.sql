-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records_chunks/columns/metadata/alterations/alt0000001738
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/autonomy_records_chunks/columns/metadata/column



ALTER TABLE "agentic_db_app_public".autonomy_records_chunks 
    ALTER COLUMN metadata SET DEFAULT '{}'::jsonb;

