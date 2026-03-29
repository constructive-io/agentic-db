-- Revert: schemas/agentic_db_app_public/tables/expenses_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.expenses_chunks 
  DROP COLUMN embedding RESTRICT;


