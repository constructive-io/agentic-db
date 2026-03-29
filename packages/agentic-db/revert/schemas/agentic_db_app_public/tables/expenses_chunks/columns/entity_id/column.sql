-- Revert: schemas/agentic_db_app_public/tables/expenses_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.expenses_chunks 
  DROP COLUMN entity_id RESTRICT;


