-- Revert: schemas/agentic_db_app_public/tables/expenses/columns/updated_at/alterations/alt0000000341


ALTER TABLE agentic_db_app_public.expenses 
  ALTER COLUMN updated_at DROP NOT NULL;


