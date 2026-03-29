-- Revert: schemas/agentic_db_app_public/tables/emails_chunks/columns/content/alterations/alt0000011276


ALTER TABLE agentic_db_app_public.emails_chunks 
  ALTER COLUMN content DROP NOT NULL;


