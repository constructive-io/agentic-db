-- Revert: schemas/agentic_db_app_public/tables/raw_contacts/columns/id/alterations/alt0000000605


ALTER TABLE agentic_db_app_public.raw_contacts 
  ALTER COLUMN id DROP NOT NULL;


