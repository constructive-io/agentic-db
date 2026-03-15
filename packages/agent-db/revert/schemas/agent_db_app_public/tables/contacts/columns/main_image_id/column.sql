-- Revert: schemas/agent_db_app_public/tables/contacts/columns/main_image_id/column


ALTER TABLE agent_db_app_public.contacts 
  DROP COLUMN main_image_id RESTRICT;


