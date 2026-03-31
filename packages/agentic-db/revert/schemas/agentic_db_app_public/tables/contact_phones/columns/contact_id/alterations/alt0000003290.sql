-- Revert: schemas/agentic_db_app_public/tables/contact_phones/columns/contact_id/alterations/alt0000003290


ALTER TABLE agentic_db_app_public.contact_phones 
  ALTER COLUMN contact_id DROP NOT NULL;


