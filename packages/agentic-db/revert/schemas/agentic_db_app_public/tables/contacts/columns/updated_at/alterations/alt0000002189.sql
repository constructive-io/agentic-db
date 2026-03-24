-- Revert: schemas/agentic_db_app_public/tables/contacts/columns/updated_at/alterations/alt0000002189


ALTER TABLE agentic_db_app_public.contacts 
  ALTER COLUMN updated_at DROP NOT NULL;


