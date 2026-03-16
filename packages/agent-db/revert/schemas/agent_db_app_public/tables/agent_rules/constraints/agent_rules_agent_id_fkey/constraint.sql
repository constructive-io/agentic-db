-- Revert: schemas/agent_db_app_public/tables/agent_rules/constraints/agent_rules_agent_id_fkey/constraint


ALTER TABLE "agent_db_app_public".agent_rules 
  DROP CONSTRAINT agent_rules_agent_id_fkey;


