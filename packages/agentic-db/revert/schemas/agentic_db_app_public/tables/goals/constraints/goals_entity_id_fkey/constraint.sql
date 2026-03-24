-- Revert: schemas/agentic_db_app_public/tables/goals/constraints/goals_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".goals 
  DROP CONSTRAINT goals_entity_id_fkey;


