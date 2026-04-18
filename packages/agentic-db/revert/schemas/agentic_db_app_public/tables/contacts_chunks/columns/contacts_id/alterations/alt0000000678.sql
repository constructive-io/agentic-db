-- Revert: schemas/agentic_db_app_public/tables/contacts_chunks/columns/contacts_id/alterations/alt0000000678


ALTER TABLE agentic_db_app_public.contacts_chunks 
  ALTER COLUMN contacts_id DROP NOT NULL;


