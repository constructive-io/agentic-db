-- Deploy: schemas/agentic_db_app_public/tables/tasks/columns/priority/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/tasks/columns/status/alterations/alt0000001971


ALTER TABLE "agentic_db_app_public".tasks 
  ADD COLUMN priority int;

