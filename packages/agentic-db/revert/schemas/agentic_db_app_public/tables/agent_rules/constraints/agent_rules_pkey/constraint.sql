-- Revert: schemas/agentic_db_app_public/tables/agent_rules/constraints/agent_rules_pkey/constraint


ALTER TABLE agentic_db_app_public.agent_rules 
  DROP CONSTRAINT agent_rules_pkey;


