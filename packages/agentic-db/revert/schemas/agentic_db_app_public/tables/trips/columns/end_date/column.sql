-- Revert: schemas/agentic_db_app_public/tables/trips/columns/end_date/column


ALTER TABLE "agentic_db_app_public".trips 
  DROP COLUMN end_date RESTRICT;


