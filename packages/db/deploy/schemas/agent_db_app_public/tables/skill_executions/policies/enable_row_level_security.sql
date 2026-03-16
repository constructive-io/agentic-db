-- Deploy: schemas/agent_db_app_public/tables/skill_executions/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skill_executions/table
-- requires: schemas/agent_db_app_public/tables/prompts/columns/embedding/column


ALTER TABLE "agent_db_app_public".skill_executions 
  ENABLE ROW LEVEL SECURITY;

