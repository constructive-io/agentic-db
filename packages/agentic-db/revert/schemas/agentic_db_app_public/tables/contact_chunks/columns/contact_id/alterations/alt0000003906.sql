-- Revert: schemas/agentic_db_app_public/tables/contact_chunks/columns/contact_id/alterations/alt0000003906


ALTER TABLE agentic_db_app_public.contact_chunks 
  ALTER COLUMN contact_id DROP NOT NULL;


