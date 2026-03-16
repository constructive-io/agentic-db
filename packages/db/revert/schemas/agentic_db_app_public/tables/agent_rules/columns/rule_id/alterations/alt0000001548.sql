-- Revert: schemas/agentic_db_app_public/tables/agent_rules/columns/rule_id/alterations/alt0000001548


ALTER TABLE "agentic_db_app_public".agent_rules 
  ALTER COLUMN rule_id DROP NOT NULL;


