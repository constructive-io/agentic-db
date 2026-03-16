-- Revert: schemas/agent_db_app_public/tables/rules/columns/trigger_concept/column


ALTER TABLE "agent_db_app_public".rules 
  DROP COLUMN trigger_concept RESTRICT;


