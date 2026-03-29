-- Revert: schemas/agentic_db_app_public/tables/rules_chunks/columns/content/alterations/alt0000010743


ALTER TABLE agentic_db_app_public.rules_chunks 
  ALTER COLUMN content DROP NOT NULL;


