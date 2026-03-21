-- Deploy: schemas/agentic_db_app_public/tables/templates/columns/variables/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/templates/table
-- requires: schemas/agentic_db_app_public/tables/templates/columns/content/alterations/alt0000002664


ALTER TABLE "agentic_db_app_public".templates 
  ADD COLUMN variables jsonb;

