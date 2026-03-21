-- Revert: schemas/agentic_db_app_public/tables/expenses/columns/date/column


ALTER TABLE "agentic_db_app_public".expenses 
  DROP COLUMN date RESTRICT;


