-- Deploy: schemas/agent_db_app_public/tables/skill_executions/columns/skill_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skill_executions/table
-- requires: schemas/agent_db_app_public/tables/skill_executions/columns/updated_at/alterations/alt0000001115


ALTER TABLE agent_db_app_public.skill_executions 
  ADD COLUMN skill_id uuid;

