-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records/columns/tags/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/columns/context/column


ALTER TABLE "agentic_db_app_public".autonomy_records 
  ADD COLUMN tags citext[];

