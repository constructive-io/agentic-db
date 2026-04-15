-- Revert: schemas/agentic_db_app_public/tables/raw_contacts/columns/updated_at/alterations/alt0000013555


ALTER TABLE agentic_db_app_public.raw_contacts 
  ALTER COLUMN updated_at DROP NOT NULL;


