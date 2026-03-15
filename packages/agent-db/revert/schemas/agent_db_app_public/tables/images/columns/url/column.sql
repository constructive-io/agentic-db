-- Revert: schemas/agent_db_app_public/tables/images/columns/url/column


ALTER TABLE agent_db_app_public.images 
  DROP COLUMN url RESTRICT;


