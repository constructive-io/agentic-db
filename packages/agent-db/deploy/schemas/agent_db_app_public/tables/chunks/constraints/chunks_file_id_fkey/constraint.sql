-- Deploy: schemas/agent_db_app_public/tables/chunks/constraints/chunks_file_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/files/table
-- requires: schemas/agent_db_app_public/tables/chunks/table
-- requires: schemas/agent_db_app_public/tables/files/constraints/files_repository_id_fkey/constraint


ALTER TABLE agent_db_app_public.chunks 
  ADD CONSTRAINT chunks_file_id_fkey 
    FOREIGN KEY(file_id) 
    REFERENCES agent_db_app_public.files (id) 
    ON DELETE CASCADE;

