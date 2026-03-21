-- Deploy: schemas/agentic_db_app_public/tables/prompt_chunks/alterations/alt0000004065
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompt_chunks/table
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.prompt_chunks 
  DISABLE ROW LEVEL SECURITY;

