-- Revert: schemas/agentic_db_app_public/tables/contacts_chunks/columns/contact_id/alterations/alt0000005364


ALTER TABLE agentic_db_app_public.contacts_chunks 
  ALTER COLUMN contact_id DROP NOT NULL;


