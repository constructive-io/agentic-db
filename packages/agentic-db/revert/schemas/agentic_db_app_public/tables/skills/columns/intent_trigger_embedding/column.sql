-- Revert: schemas/agentic_db_app_public/tables/skills/columns/intent_trigger_embedding/column


ALTER TABLE "agentic_db_app_public".skills 
  DROP COLUMN intent_trigger_embedding RESTRICT;


