-- Deploy: schemas/agentic_db_app_public/tables/rule_chunks/columns/content/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/table
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/columns/chunk_index/alterations/alt0000004033


ALTER TABLE agentic_db_app_public.rule_chunks 
  ADD COLUMN content text;

