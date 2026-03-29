-- Revert: schemas/agentic_db_app_public/tables/contact_links/columns/id/column


ALTER TABLE agentic_db_app_public.contact_links 
  DROP COLUMN id RESTRICT;


