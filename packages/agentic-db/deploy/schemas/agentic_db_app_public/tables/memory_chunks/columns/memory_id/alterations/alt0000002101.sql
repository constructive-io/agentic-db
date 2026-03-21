-- Deploy: schemas/agentic_db_app_public/tables/memory_chunks/columns/memory_id/alterations/alt0000002101
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memory_chunks/table
-- requires: schemas/agentic_db_app_public/tables/memory_chunks/columns/memory_id/column
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/indexes/rule_chunks_rule_id_idx


ALTER TABLE "agentic_db_app_public".memory_chunks 
  ALTER COLUMN memory_id SET NOT NULL;

