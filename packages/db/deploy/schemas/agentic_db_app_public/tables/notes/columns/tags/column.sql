-- Deploy: schemas/agentic_db_app_public/tables/notes/columns/tags/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_public/tables/notes/columns/last_accessed_at/column


ALTER TABLE "agentic_db_app_public".notes 
  ADD COLUMN tags citext[];

