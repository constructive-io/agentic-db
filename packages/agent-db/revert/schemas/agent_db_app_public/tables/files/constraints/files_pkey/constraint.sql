-- Revert: schemas/agent_db_app_public/tables/files/constraints/files_pkey/constraint


ALTER TABLE agent_db_app_public.files 
  DROP CONSTRAINT files_pkey;


