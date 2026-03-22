-- Revert: schemas/agentic_db_app_public/tables/trips/columns/currency/column


ALTER TABLE "agentic_db_app_public".trips 
  DROP COLUMN currency RESTRICT;


