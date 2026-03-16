-- Revert: schemas/agent_db_app_public/tables/agent_rules/columns/rule_id/alterations/alt0000002400


ALTER TABLE "agent_db_app_public".agent_rules 
  ALTER COLUMN rule_id DROP NOT NULL;


