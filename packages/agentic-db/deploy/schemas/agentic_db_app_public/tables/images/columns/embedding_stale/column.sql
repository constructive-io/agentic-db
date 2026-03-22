-- Deploy: schemas/agentic_db_app_public/tables/images/columns/embedding_stale/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/images/table
-- requires: schemas/agentic_db_app_public/tables/images/columns/caption/column


ALTER TABLE agentic_db_app_public.images 
  ADD COLUMN embedding_stale boolean;

