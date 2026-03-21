-- Revert: schemas/agentic_db_app_public/tables/workflows/columns/name/column


ALTER TABLE "agentic_db_app_public".workflows 
  DROP COLUMN name RESTRICT;


