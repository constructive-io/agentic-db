-- Revert: schemas/agentic_db_app_public/tables/agent_rules/columns/rule_id/column


ALTER TABLE "agentic_db_app_public".agent_rules 
  DROP COLUMN rule_id RESTRICT;


