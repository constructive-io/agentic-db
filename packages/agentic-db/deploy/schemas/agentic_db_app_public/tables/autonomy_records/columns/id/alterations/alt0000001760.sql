-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records/columns/id/alterations/alt0000001760
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx



ALTER TABLE "agentic_db_app_public".autonomy_records 
    ALTER COLUMN id SET DEFAULT uuidv7();

