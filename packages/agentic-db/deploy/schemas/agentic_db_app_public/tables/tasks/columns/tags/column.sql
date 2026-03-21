-- Deploy: schemas/agentic_db_app_public/tables/tasks/columns/tags/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/tasks/columns/dependencies/column


ALTER TABLE "agentic_db_app_public".tasks 
  ADD COLUMN tags citext[];

