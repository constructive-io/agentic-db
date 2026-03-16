-- Revert: schemas/agentic_db_app_public/tables/agents/columns/created_at/column


ALTER TABLE "agentic_db_app_public".agents 
  DROP COLUMN created_at RESTRICT;


