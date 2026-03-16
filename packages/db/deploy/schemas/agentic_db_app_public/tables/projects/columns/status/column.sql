-- Deploy: schemas/agentic_db_app_public/tables/projects/columns/status/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_public/tables/projects/columns/description/column


ALTER TABLE "agentic_db_app_public".projects 
  ADD COLUMN status text;

