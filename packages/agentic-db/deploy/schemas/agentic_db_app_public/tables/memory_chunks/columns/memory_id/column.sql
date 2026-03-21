-- Deploy: schemas/agentic_db_app_public/tables/memory_chunks/columns/memory_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memory_chunks/table
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/indexes/rule_chunks_rule_id_idx


ALTER TABLE "agentic_db_app_public".memory_chunks 
  ADD COLUMN memory_id uuid;

