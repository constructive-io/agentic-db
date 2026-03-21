-- Deploy: schemas/agentic_db_app_public/tables/skill_chunks/columns/id/alterations/alt0000002060
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skill_chunks/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/memory_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".skill_chunks 
  ALTER COLUMN id SET NOT NULL;

