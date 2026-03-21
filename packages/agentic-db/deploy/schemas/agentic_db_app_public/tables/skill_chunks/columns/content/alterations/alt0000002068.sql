-- Deploy: schemas/agentic_db_app_public/tables/skill_chunks/columns/content/alterations/alt0000002068
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skill_chunks/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/skill_chunks/columns/chunk_index/alterations/alt0000002067


ALTER TABLE "agentic_db_app_public".skill_chunks 
  ALTER COLUMN content SET NOT NULL;

