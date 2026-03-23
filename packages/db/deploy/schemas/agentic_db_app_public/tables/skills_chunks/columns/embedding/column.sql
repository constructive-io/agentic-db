-- Deploy: schemas/agentic_db_app_public/tables/skills_chunks/columns/embedding/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


ALTER TABLE "agentic_db_app_public".skills_chunks 
  ADD COLUMN embedding vector(768);

