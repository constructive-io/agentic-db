-- Revert: schemas/agentic_db_app_public/tables/contact_links/columns/created_at/column


ALTER TABLE agentic_db_app_public.contact_links 
  DROP COLUMN created_at RESTRICT;


