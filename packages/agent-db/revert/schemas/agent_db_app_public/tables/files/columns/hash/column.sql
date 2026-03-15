-- Revert: schemas/agent_db_app_public/tables/files/columns/hash/column


ALTER TABLE agent_db_app_public.files 
  DROP COLUMN hash RESTRICT;


