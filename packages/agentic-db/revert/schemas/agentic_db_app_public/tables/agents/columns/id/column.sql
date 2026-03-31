-- Revert: schemas/agentic_db_app_public/tables/agents/columns/id/column


ALTER TABLE "agentic_db_app_public".agents 
  DROP COLUMN id RESTRICT;


