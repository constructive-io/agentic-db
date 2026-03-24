-- Revert: schemas/agentic_db_app_public/tables/deals/columns/currency/column


ALTER TABLE "agentic_db_app_public".deals 
  DROP COLUMN currency RESTRICT;


