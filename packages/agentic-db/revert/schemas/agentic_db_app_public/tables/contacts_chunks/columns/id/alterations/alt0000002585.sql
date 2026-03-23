-- Revert: schemas/agentic_db_app_public/tables/contacts_chunks/columns/id/alterations/alt0000002585


ALTER TABLE agentic_db_app_public.contacts_chunks 
  ALTER COLUMN id DROP NOT NULL;


