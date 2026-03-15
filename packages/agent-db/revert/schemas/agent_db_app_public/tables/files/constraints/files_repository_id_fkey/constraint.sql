-- Revert: schemas/agent_db_app_public/tables/files/constraints/files_repository_id_fkey/constraint


ALTER TABLE "agent_db_app_public".files 
  DROP CONSTRAINT files_repository_id_fkey;


