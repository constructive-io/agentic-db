-- Revert: schemas/agent_db_app_public/tables/contact_images/columns/id/column


ALTER TABLE agent_db_app_public.contact_images 
  DROP COLUMN id RESTRICT;


