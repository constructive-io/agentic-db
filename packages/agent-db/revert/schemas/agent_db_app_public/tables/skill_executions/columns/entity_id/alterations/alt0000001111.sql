-- Revert: schemas/agent_db_app_public/tables/skill_executions/columns/entity_id/alterations/alt0000001111


ALTER TABLE agent_db_app_public.skill_executions 
  ALTER COLUMN entity_id DROP NOT NULL;


