-- Revert: schemas/agentic_db_app_public/tables/contacts_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.contacts_chunks 
  DROP COLUMN updated_at RESTRICT;


