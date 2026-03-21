-- Deploy: schemas/agentic_db_app_public/tables/skill_executions/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_executions/table
-- requires: schemas/agentic_db_app_public/tables/prompt_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.skill_executions 
  ENABLE ROW LEVEL SECURITY;

