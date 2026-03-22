-- Deploy: schemas/agentic_db_app_public/tables/rule_chunks/columns/embedding_stale/alterations/alt0000002453
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/columns/embedding_stale/column



ALTER TABLE agentic_db_app_public.rule_chunks 
    ALTER COLUMN embedding_stale SET DEFAULT true;

