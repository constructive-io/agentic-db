-- Deploy: schemas/agentic_db_app_public/tables/notes/columns/active_count/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_public/tables/notes/columns/overview/column


ALTER TABLE "agentic_db_app_public".notes 
  ADD COLUMN active_count int;

