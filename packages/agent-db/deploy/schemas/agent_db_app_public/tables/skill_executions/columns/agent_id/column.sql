-- Deploy: schemas/agent_db_app_public/tables/skill_executions/columns/agent_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skill_executions/table
-- requires: schemas/agent_db_app_public/tables/skill_executions/columns/skill_id/alterations/alt0000001116


ALTER TABLE agent_db_app_public.skill_executions 
  ADD COLUMN agent_id uuid;

