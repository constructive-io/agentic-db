-- Deploy: schemas/agentic_db_app_public/tables/notes/columns/embedding_stale/alterations/alt0000000747
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/notes/columns/embedding_stale/column


ALTER TABLE agentic_db_app_public.notes 
  ALTER COLUMN embedding_stale SET NOT NULL;

