-- Revert: schemas/agentic_db_app_public/tables/expenses_chunks/constraints/expenses_chunks_pkey/constraint


ALTER TABLE agentic_db_app_public.expenses_chunks 
  DROP CONSTRAINT expenses_chunks_pkey;


