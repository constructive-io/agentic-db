-- Revert: schemas/agentic_db_app_public/tables/agents/columns/focus/column


ALTER TABLE "agentic_db_app_public".agents 
  DROP COLUMN focus RESTRICT;


