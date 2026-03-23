-- Deploy: schemas/agentic_db_app_public/tables/skills_chunks/columns/skills_id/alterations/alt0000001270
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/skills_chunks/columns/skills_id/column


ALTER TABLE "agentic_db_app_public".skills_chunks 
  ALTER COLUMN skills_id SET NOT NULL;

