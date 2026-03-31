-- Revert: schemas/agentic_db_app_public/tables/contacts_chunks/columns/contacts_id/column


ALTER TABLE agentic_db_app_public.contacts_chunks 
  DROP COLUMN contacts_id RESTRICT;


