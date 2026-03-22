-- Deploy: schemas/agentic_db_app_public/tables/projects/columns/embedding_stale/alterations/alt0000006138
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_public/tables/projects/columns/embedding_text/column
-- requires: schemas/agentic_db_app_public/tables/projects/columns/embedding_stale/column


ALTER TABLE agentic_db_app_public.projects 
  ALTER COLUMN embedding_stale SET NOT NULL;

