-- Deploy: schemas/agentic_db_app_public/tables/skill_executions/alterations/alt0000001099
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_executions/table
-- requires: schemas/agentic_db_app_public/tables/prompts/columns/embedding/column


ALTER TABLE "agentic_db_app_public".skill_executions 
  DISABLE ROW LEVEL SECURITY;

