-- Deploy: schemas/agentic_db_app_public/tables/chunks/constraints/chunks_file_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/files/table
-- requires: schemas/agentic_db_app_public/tables/chunks/table
-- requires: schemas/agentic_db_app_public/tables/files/indexes/files_repository_id_idx


ALTER TABLE "agentic_db_app_public".chunks 
  ADD CONSTRAINT chunks_file_id_fkey 
    FOREIGN KEY(file_id) 
    REFERENCES "agentic_db_app_public".files (id) 
    ON DELETE CASCADE;

