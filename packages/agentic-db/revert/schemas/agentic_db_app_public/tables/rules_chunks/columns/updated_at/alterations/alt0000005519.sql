-- Revert: schemas/agentic_db_app_public/tables/rules_chunks/columns/updated_at/alterations/alt0000005519


ALTER TABLE agentic_db_app_public.rules_chunks 
  ALTER COLUMN updated_at DROP NOT NULL;


