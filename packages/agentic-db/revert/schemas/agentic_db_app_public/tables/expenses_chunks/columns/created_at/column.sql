-- Revert: schemas/agentic_db_app_public/tables/expenses_chunks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".expenses_chunks 
  DROP COLUMN created_at RESTRICT;


