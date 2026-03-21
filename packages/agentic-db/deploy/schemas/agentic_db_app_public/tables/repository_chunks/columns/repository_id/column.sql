-- Deploy: schemas/agentic_db_app_public/tables/repository_chunks/columns/repository_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/repository_chunks/table
-- requires: schemas/agentic_db_app_public/tables/chunks/indexes/chunks_repository_id_idx


ALTER TABLE "agentic_db_app_public".repository_chunks 
  ADD COLUMN repository_id uuid;

