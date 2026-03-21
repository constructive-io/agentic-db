-- Revert: schemas/agentic_db_app_public/tables/session_chunks/columns/content/alterations/alt0000004269


ALTER TABLE agentic_db_app_public.session_chunks 
  ALTER COLUMN content DROP NOT NULL;


