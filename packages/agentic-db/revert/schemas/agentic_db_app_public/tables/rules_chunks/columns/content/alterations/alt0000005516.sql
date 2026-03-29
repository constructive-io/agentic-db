-- Revert: schemas/agentic_db_app_public/tables/rules_chunks/columns/content/alterations/alt0000005516


ALTER TABLE agentic_db_app_public.rules_chunks 
  ALTER COLUMN content DROP NOT NULL;


