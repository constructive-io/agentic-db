-- Deploy: schemas/agentic_db_app_public/tables/notes/columns/last_accessed_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_public/tables/notes/columns/active_count/alterations/alt0000000916


ALTER TABLE "agentic_db_app_public".notes 
  ADD COLUMN last_accessed_at timestamptz;

