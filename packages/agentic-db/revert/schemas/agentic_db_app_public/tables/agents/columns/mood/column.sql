-- Revert: schemas/agentic_db_app_public/tables/agents/columns/mood/column


ALTER TABLE "agentic_db_app_public".agents 
  DROP COLUMN mood RESTRICT;


