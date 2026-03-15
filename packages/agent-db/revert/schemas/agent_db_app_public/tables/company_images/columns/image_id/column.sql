-- Revert: schemas/agent_db_app_public/tables/company_images/columns/image_id/column


ALTER TABLE agent_db_app_public.company_images 
  DROP COLUMN image_id RESTRICT;


