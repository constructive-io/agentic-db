-- Revert: schemas/agentic_db_app_public/tables/contact_links/columns/updated_at/alterations/alt0000005200


ALTER TABLE agentic_db_app_public.contact_links 
  ALTER COLUMN updated_at DROP NOT NULL;


