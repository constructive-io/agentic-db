-- Revert: schemas/agentic_db_app_public/tables/contact_images/columns/entity_id/alterations/alt0000002445


ALTER TABLE agentic_db_app_public.contact_images 
  ALTER COLUMN entity_id DROP NOT NULL;


