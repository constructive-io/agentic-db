-- Deploy: schemas/agentic_db_app_public/tables/projects/columns/start_date/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_public/tables/projects/columns/status/alterations/alt0000001284


ALTER TABLE "agentic_db_app_public".projects 
  ADD COLUMN start_date timestamptz;

