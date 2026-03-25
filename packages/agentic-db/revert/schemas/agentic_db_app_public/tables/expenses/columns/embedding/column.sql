-- Revert: schemas/agentic_db_app_public/tables/expenses/columns/embedding/column


ALTER TABLE "agentic_db_app_public".expenses 
  DROP COLUMN embedding RESTRICT;


