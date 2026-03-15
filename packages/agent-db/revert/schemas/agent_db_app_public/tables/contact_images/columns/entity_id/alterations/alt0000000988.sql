-- Revert: schemas/agent_db_app_public/tables/contact_images/columns/entity_id/alterations/alt0000000988


ALTER TABLE agent_db_app_public.contact_images 
  ALTER COLUMN entity_id DROP NOT NULL;


