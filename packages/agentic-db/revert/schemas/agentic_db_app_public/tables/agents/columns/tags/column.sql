-- Revert: schemas/agentic_db_app_public/tables/agents/columns/tags/column


ALTER TABLE "agentic_db_app_public".agents 
  DROP COLUMN tags RESTRICT;


