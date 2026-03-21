-- Revert: schemas/agentic_db_app_public/tables/contact_images/columns/entity_id/column


ALTER TABLE agentic_db_app_public.contact_images 
  DROP COLUMN entity_id RESTRICT;


