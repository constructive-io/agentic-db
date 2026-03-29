-- Deploy: schemas/agentic_db_app_public/tables/codebases_chunks/constraints/codebases_chunks_codebasis_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases/table
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/table
-- requires: schemas/agentic_db_app_public/tables/projects_chunks/indexes/projects_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.codebases_chunks 
  ADD CONSTRAINT codebases_chunks_codebasis_id_fkey 
    FOREIGN KEY(codebasis_id) 
    REFERENCES agentic_db_app_public.codebases (id) 
    ON DELETE CASCADE;

