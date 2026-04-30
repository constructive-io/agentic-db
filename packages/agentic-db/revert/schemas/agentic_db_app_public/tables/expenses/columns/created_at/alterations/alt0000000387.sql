-- Revert: schemas/agentic_db_app_public/tables/expenses/columns/created_at/alterations/alt0000000387


ALTER TABLE agentic_db_app_public.expenses 
  ALTER COLUMN created_at DROP NOT NULL;


