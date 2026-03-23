-- Deploy: schemas/agentic_db_app_public/tables/skills_chunks/columns/updated_at/alterations/alt0000002989
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/skills_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.skills_chunks 
  ALTER COLUMN updated_at SET DEFAULT now();

