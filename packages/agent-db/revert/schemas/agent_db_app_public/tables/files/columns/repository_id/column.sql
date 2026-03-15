-- Revert: schemas/agent_db_app_public/tables/files/columns/repository_id/column


ALTER TABLE agent_db_app_public.files 
  DROP COLUMN repository_id RESTRICT;


