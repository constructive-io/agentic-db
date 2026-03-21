-- Deploy: schemas/agentic_db_app_public/tables/repository_chunks/constraints/repository_chunks_repository_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/repositories/table
-- requires: schemas/agentic_db_app_public/tables/repository_chunks/table
-- requires: schemas/agentic_db_app_public/tables/chunks/indexes/chunks_repository_id_idx


ALTER TABLE agentic_db_app_public.repository_chunks 
  ADD CONSTRAINT repository_chunks_repository_id_fkey 
    FOREIGN KEY(repository_id) 
    REFERENCES agentic_db_app_public.repositories (id) 
    ON DELETE CASCADE;

