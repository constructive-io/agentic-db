-- Revert: schemas/agentic_db_app_public/tables/expenses/columns/trip_id/column


ALTER TABLE agentic_db_app_public.expenses 
  DROP COLUMN trip_id RESTRICT;


