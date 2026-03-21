-- Deploy: schemas/agentic_db_app_public/tables/memory_chunks/columns/entity_id/alterations/alt0000004038
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memory_chunks/table
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/memory_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.memory_chunks 
  ALTER COLUMN entity_id SET NOT NULL;

