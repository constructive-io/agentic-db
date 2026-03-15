-- Deploy: schemas/agent_db_app_public/tables/skill_executions/alterations/alt0000001108
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skill_executions/table
-- requires: schemas/agent_db_app_public/tables/prompts/columns/embedding/column


ALTER TABLE agent_db_app_public.skill_executions 
  DISABLE ROW LEVEL SECURITY;

