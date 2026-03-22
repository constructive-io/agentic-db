-- Deploy: schemas/agentic_db_app_public/tables/goal_chunks/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE "agentic_db_app_public".goal_chunks 
  ADD COLUMN id uuid;

