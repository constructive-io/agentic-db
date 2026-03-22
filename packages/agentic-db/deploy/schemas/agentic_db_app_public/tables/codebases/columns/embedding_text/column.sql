-- Deploy: schemas/agentic_db_app_public/tables/codebases/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases/table
-- requires: schemas/agentic_db_app_public/tables/codebases/columns/tags/column


ALTER TABLE agentic_db_app_public.codebases 
  ADD COLUMN embedding_text text;

