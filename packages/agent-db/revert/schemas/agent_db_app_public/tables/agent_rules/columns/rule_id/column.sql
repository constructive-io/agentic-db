-- Revert: schemas/agent_db_app_public/tables/agent_rules/columns/rule_id/column


ALTER TABLE agent_db_app_public.agent_rules 
  DROP COLUMN rule_id RESTRICT;


