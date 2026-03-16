-- Revert: schemas/agent_db_app_public/tables/rules/constraints/rules_pkey/constraint


ALTER TABLE "agent_db_app_public".rules 
  DROP CONSTRAINT rules_pkey;


