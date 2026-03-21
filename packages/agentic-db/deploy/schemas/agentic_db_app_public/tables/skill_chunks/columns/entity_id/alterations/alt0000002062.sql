-- Deploy: schemas/agentic_db_app_public/tables/skill_chunks/columns/entity_id/alterations/alt0000002062
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skill_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/memory_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".skill_chunks 
  ALTER COLUMN entity_id SET NOT NULL;

