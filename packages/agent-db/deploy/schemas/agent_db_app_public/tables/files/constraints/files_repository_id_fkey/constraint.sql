-- Deploy: schemas/agent_db_app_public/tables/files/constraints/files_repository_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/files/table
-- requires: schemas/agent_db_app_public/tables/repositories/table
-- requires: schemas/agent_db_app_public/tables/chunks/columns/embedding/column


ALTER TABLE agent_db_app_public.files 
  ADD CONSTRAINT files_repository_id_fkey 
    FOREIGN KEY(repository_id) 
    REFERENCES agent_db_app_public.repositories (id) 
    ON DELETE CASCADE;

