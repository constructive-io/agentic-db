-- Revert: schemas/agent_db_app_public/tables/agent_rules/columns/agent_id/column


ALTER TABLE agent_db_app_public.agent_rules 
  DROP COLUMN agent_id RESTRICT;


