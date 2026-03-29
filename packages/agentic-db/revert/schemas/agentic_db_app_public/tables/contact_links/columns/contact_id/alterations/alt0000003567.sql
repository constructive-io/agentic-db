-- Revert: schemas/agentic_db_app_public/tables/contact_links/columns/contact_id/alterations/alt0000003567


ALTER TABLE agentic_db_app_public.contact_links 
  ALTER COLUMN contact_id DROP NOT NULL;


