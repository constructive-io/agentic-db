-- Deploy: schemas/agentic_db_app_public/tables/rule_chunks/columns/content/alterations/alt0000002446
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/columns/content/column


ALTER TABLE agentic_db_app_public.rule_chunks 
  ALTER COLUMN content SET NOT NULL;

