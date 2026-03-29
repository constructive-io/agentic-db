-- Deploy: schemas/agentic_db_app_public/tables/codebases/columns/embedding_stale/alterations/alt0000011049
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx
-- requires: schemas/agentic_db_app_public/tables/codebases/columns/embedding_stale/column


ALTER TABLE agentic_db_app_public.codebases 
  ALTER COLUMN embedding_stale SET NOT NULL;

