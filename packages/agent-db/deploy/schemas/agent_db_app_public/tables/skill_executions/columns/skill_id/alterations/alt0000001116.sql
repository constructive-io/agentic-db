-- Deploy: schemas/agent_db_app_public/tables/skill_executions/columns/skill_id/alterations/alt0000001116
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skill_executions/table
-- requires: schemas/agent_db_app_public/tables/skill_executions/columns/skill_id/column
-- requires: schemas/agent_db_app_public/tables/skill_executions/columns/updated_at/alterations/alt0000001115


ALTER TABLE agent_db_app_public.skill_executions 
  ALTER COLUMN skill_id SET NOT NULL;

