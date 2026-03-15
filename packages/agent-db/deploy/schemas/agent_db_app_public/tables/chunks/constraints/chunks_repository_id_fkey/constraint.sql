-- Deploy: schemas/agent_db_app_public/tables/chunks/constraints/chunks_repository_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chunks/table
-- requires: schemas/agent_db_app_public/tables/repositories/table
-- requires: schemas/agent_db_app_public/tables/chunks/constraints/chunks_file_id_fkey/constraint


ALTER TABLE "agent_db_app_public".chunks 
  ADD CONSTRAINT chunks_repository_id_fkey 
    FOREIGN KEY(repository_id) 
    REFERENCES "agent_db_app_public".repositories (id) 
    ON DELETE CASCADE;

