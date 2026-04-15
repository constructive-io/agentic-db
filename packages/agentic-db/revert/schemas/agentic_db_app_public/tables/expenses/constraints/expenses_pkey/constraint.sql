-- Revert: schemas/agentic_db_app_public/tables/expenses/constraints/expenses_pkey/constraint


ALTER TABLE agentic_db_app_public.expenses 
  DROP CONSTRAINT expenses_pkey;


