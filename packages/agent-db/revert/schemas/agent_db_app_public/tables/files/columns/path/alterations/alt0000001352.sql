-- Revert: schemas/agent_db_app_public/tables/files/columns/path/alterations/alt0000001352


ALTER TABLE agent_db_app_public.files 
  ALTER COLUMN path DROP NOT NULL;


