-- Revert: schemas/agentic_db_app_public/tables/expenses/columns/embedding_stale/alterations/alt0000000996


ALTER TABLE agentic_db_app_public.expenses 
  ALTER COLUMN embedding_stale DROP NOT NULL;


