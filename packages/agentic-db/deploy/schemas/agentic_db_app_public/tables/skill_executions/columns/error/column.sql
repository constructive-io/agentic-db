-- Deploy: schemas/agentic_db_app_public/tables/skill_executions/columns/error/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_executions/table
-- requires: schemas/agentic_db_app_public/tables/skill_executions/columns/output/column


ALTER TABLE agentic_db_app_public.skill_executions 
  ADD COLUMN error text;

