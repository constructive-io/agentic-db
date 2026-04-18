-- Revert: schemas/agentic_db_app_public/tables/contact_phones/columns/id/alterations/alt0000000805


ALTER TABLE agentic_db_app_public.contact_phones 
  ALTER COLUMN id DROP NOT NULL;


