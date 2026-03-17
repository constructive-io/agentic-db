-- Revert: schemas/agentic_db_app_public/tables/deals/columns/name/column


ALTER TABLE "agentic_db_app_public".deals 
  DROP COLUMN name RESTRICT;


