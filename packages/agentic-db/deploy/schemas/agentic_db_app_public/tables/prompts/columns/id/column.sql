-- Deploy: schemas/agentic_db_app_public/tables/prompts/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table
-- requires: schemas/agentic_db_app_public/tables/goals/columns/embedding/column


ALTER TABLE agentic_db_app_public.prompts 
  ADD COLUMN id uuid;

