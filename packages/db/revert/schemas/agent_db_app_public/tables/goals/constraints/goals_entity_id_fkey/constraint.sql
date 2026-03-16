-- Revert: schemas/agent_db_app_public/tables/goals/constraints/goals_entity_id_fkey/constraint


ALTER TABLE "agent_db_app_public".goals 
  DROP CONSTRAINT goals_entity_id_fkey;


