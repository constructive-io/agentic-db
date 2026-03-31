-- Revert: schemas/agentic_db_app_public/tables/contact_images/columns/entity_id/alterations/alt0000003266


ALTER TABLE agentic_db_app_public.contact_images 
  ALTER COLUMN entity_id DROP NOT NULL;


