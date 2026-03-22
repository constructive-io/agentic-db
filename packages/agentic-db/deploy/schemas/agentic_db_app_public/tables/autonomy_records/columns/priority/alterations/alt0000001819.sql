-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records/columns/priority/alterations/alt0000001819
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/columns/priority/column
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/columns/status/alterations/alt0000001818



ALTER TABLE "agentic_db_app_public".autonomy_records 
    ALTER COLUMN priority SET DEFAULT 0;

