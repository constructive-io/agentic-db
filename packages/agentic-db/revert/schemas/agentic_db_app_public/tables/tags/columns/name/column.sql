-- Revert: schemas/agentic_db_app_public/tables/tags/columns/name/column


ALTER TABLE "agentic_db_app_public".tags 
  DROP COLUMN name RESTRICT;


