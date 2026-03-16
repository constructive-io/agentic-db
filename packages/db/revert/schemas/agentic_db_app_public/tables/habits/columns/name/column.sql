-- Revert: schemas/agentic_db_app_public/tables/habits/columns/name/column


ALTER TABLE "agentic_db_app_public".habits 
  DROP COLUMN name RESTRICT;


