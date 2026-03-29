-- Revert: schemas/agentic_db_app_public/tables/contacts_chunks/columns/updated_at/alterations/alt0000010372


ALTER TABLE agentic_db_app_public.contacts_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;


