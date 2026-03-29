-- Revert: schemas/agentic_db_app_public/tables/expenses/constraints/expenses_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.expenses 
  DROP CONSTRAINT expenses_entity_id_fkey;


