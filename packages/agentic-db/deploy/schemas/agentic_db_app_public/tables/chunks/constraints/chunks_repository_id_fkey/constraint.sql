-- Deploy: schemas/agentic_db_app_public/tables/chunks/constraints/chunks_repository_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chunks/table
-- requires: schemas/agentic_db_app_public/tables/repositories/table
-- requires: schemas/agentic_db_app_public/tables/chunks/indexes/chunks_file_id_idx


ALTER TABLE agentic_db_app_public.chunks 
  ADD CONSTRAINT chunks_repository_id_fkey 
    FOREIGN KEY(repository_id) 
    REFERENCES agentic_db_app_public.repositories (id) 
    ON DELETE CASCADE;

