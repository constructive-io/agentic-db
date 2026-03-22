-- Revert: schemas/agentic_db_app_public/tables/trips/columns/ended_at/column


ALTER TABLE "agentic_db_app_public".trips 
  DROP COLUMN ended_at RESTRICT;


