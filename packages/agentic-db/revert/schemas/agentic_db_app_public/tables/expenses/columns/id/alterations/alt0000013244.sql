-- Revert: schemas/agentic_db_app_public/tables/expenses/columns/id/alterations/alt0000013244


ALTER TABLE agentic_db_app_public.expenses 
  ALTER COLUMN id DROP NOT NULL;


