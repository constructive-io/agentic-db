-- Revert: schemas/agentic_db_app_public/tables/agents/columns/last_active_at/column


ALTER TABLE "agentic_db_app_public".agents 
  DROP COLUMN last_active_at RESTRICT;


