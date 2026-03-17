-- Deploy: schemas/agentic_db_app_public/tables/templates/columns/is_active/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/templates/table
-- requires: schemas/agentic_db_app_public/tables/templates/columns/variables/column


ALTER TABLE "agentic_db_app_public".templates 
  ADD COLUMN is_active bool;

