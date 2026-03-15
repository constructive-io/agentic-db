-- Revert: schemas/agent_db_app_public/tables/contact_images/constraints/contact_images_contact_id_fkey/constraint


ALTER TABLE agent_db_app_public.contact_images 
  DROP CONSTRAINT contact_images_contact_id_fkey;


