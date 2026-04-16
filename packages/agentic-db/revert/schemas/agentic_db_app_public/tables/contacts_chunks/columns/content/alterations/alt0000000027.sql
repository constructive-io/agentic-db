-- Revert: schemas/agentic_db_app_public/tables/contacts_chunks/columns/content/alterations/alt0000000027


ALTER TABLE agentic_db_app_public.contacts_chunks 
  ALTER COLUMN content DROP NOT NULL;


