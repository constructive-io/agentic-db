-- Revert: schemas/agentic_db_app_public/tables/expenses_chunks/columns/entity_id/alterations/alt0000005494


ALTER TABLE agentic_db_app_public.expenses_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


