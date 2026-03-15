-- Revert: schemas/agent_db_app_public/tables/files/columns/id/column


ALTER TABLE agent_db_app_public.files 
  DROP COLUMN id RESTRICT;


