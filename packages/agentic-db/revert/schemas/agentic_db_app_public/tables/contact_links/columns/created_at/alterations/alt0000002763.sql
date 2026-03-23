-- Revert: schemas/agentic_db_app_public/tables/contact_links/columns/created_at/alterations/alt0000002763


ALTER TABLE agentic_db_app_public.contact_links 
  ALTER COLUMN created_at DROP NOT NULL;


