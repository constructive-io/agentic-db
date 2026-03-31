-- Revert: schemas/agentic_db_app_public/tables/contact_phones/columns/created_at/alterations/alt0000003204


ALTER TABLE agentic_db_app_public.contact_phones 
  ALTER COLUMN created_at DROP NOT NULL;


