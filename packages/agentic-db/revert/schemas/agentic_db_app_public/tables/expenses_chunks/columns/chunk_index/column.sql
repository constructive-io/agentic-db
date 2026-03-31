-- Revert: schemas/agentic_db_app_public/tables/expenses_chunks/columns/chunk_index/column


ALTER TABLE agentic_db_app_public.expenses_chunks 
  DROP COLUMN chunk_index RESTRICT;


