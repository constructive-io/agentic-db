-- Revert: schemas/agentic_db_app_public/tables/contacts_chunks/columns/contact_id/column


ALTER TABLE agentic_db_app_public.contacts_chunks 
  DROP COLUMN contact_id RESTRICT;


