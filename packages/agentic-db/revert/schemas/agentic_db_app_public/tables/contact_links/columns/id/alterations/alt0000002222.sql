-- Revert: schemas/agentic_db_app_public/tables/contact_links/columns/id/alterations/alt0000002222


ALTER TABLE agentic_db_app_public.contact_links 
  ALTER COLUMN id DROP NOT NULL;


