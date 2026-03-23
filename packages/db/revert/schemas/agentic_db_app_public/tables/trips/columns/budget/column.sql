-- Revert: schemas/agentic_db_app_public/tables/trips/columns/budget/column


ALTER TABLE "agentic_db_app_public".trips 
  DROP COLUMN budget RESTRICT;


