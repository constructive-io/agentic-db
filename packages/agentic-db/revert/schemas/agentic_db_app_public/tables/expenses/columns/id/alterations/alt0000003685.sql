-- Revert: schemas/agentic_db_app_public/tables/expenses/columns/id/alterations/alt0000003685


ALTER TABLE agentic_db_app_public.expenses 
  ALTER COLUMN id DROP NOT NULL;


