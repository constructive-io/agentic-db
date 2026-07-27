-- Revert: schemas/agentic_db_app_public/tables/expenses/columns/embedding_updated_at/column


ALTER TABLE agentic_db_app_public.expenses 
  DROP COLUMN embedding_updated_at RESTRICT;


