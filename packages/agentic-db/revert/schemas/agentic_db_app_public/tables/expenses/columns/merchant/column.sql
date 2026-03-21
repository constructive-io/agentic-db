-- Revert: schemas/agentic_db_app_public/tables/expenses/columns/merchant/column


ALTER TABLE "agentic_db_app_public".expenses 
  DROP COLUMN merchant RESTRICT;


