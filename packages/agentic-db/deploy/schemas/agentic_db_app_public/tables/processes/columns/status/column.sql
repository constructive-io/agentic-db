-- Deploy: schemas/agentic_db_app_public/tables/processes/columns/status/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/processes/table
-- requires: schemas/agentic_db_app_public/tables/processes/columns/ended_at/column


ALTER TABLE "agentic_db_app_public".processes 
  ADD COLUMN status text;

