-- Revert: schemas/agentic_db_app_public/tables/expenses/columns/description/column


ALTER TABLE agentic_db_app_public.expenses 
  DROP COLUMN description RESTRICT;


