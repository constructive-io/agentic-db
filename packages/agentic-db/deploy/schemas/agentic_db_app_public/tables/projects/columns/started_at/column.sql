-- Deploy: schemas/agentic_db_app_public/tables/projects/columns/started_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_public/tables/projects/columns/priority/alterations/alt0000001526


ALTER TABLE "agentic_db_app_public".projects 
  ADD COLUMN started_at timestamptz;

