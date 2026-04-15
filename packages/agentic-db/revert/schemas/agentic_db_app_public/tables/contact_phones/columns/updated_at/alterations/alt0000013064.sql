-- Revert: schemas/agentic_db_app_public/tables/contact_phones/columns/updated_at/alterations/alt0000013064


ALTER TABLE agentic_db_app_public.contact_phones 
  ALTER COLUMN updated_at DROP NOT NULL;


