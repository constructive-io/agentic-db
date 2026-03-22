-- Deploy: schemas/agentic_db_app_public/tables/skills/columns/embedding_stale/alterations/alt0000002400
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/skills/columns/embedding_stale/column


ALTER TABLE agentic_db_app_public.skills 
  ALTER COLUMN embedding_stale SET NOT NULL;

