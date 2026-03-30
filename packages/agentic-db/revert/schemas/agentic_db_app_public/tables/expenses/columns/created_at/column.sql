-- Revert: schemas/agentic_db_app_public/tables/expenses/columns/created_at/column


ALTER TABLE "agentic_db_app_public".expenses 
  DROP COLUMN created_at RESTRICT;


