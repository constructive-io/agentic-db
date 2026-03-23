-- Revert: schemas/agentic_db_app_public/tables/contact_links/columns/entity_id/column


ALTER TABLE agentic_db_app_public.contact_links 
  DROP COLUMN entity_id RESTRICT;


