-- Deploy: schemas/agentic_db_app_public/tables/files/constraints/files_repository_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/files/table
-- requires: schemas/agentic_db_app_public/tables/repositories/table
-- requires: schemas/agentic_db_app_public/tables/repository_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".files 
  ADD CONSTRAINT files_repository_id_fkey 
    FOREIGN KEY(repository_id) 
    REFERENCES "agentic_db_app_public".repositories (id) 
    ON DELETE CASCADE;

