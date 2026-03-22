-- Deploy: schemas/agentic_db_app_public/tables/habits/columns/embedding_stale/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_app_public/tables/habits/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.habits 
  ADD COLUMN embedding_stale boolean;

