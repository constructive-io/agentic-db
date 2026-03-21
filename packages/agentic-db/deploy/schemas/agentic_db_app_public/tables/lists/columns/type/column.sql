-- Deploy: schemas/agentic_db_app_public/tables/lists/columns/type/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/lists/table
-- requires: schemas/agentic_db_app_public/tables/lists/columns/description/column


ALTER TABLE "agentic_db_app_public".lists 
  ADD COLUMN type text;

