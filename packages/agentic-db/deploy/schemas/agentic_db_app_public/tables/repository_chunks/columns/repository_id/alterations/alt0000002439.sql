-- Deploy: schemas/agentic_db_app_public/tables/repository_chunks/columns/repository_id/alterations/alt0000002439
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/repository_chunks/table
-- requires: schemas/agentic_db_app_public/tables/chunks/indexes/chunks_repository_id_idx
-- requires: schemas/agentic_db_app_public/tables/repository_chunks/columns/repository_id/column


ALTER TABLE "agentic_db_app_public".repository_chunks 
  ALTER COLUMN repository_id SET NOT NULL;

