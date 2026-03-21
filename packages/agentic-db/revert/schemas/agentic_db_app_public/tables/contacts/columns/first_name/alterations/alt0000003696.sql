-- Revert: schemas/agentic_db_app_public/tables/contacts/columns/first_name/alterations/alt0000003696


ALTER TABLE agentic_db_app_public.contacts 
  ALTER COLUMN first_name DROP NOT NULL;


