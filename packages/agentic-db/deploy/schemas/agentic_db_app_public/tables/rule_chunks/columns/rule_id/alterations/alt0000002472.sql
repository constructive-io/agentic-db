-- Deploy: schemas/agentic_db_app_public/tables/rule_chunks/columns/rule_id/alterations/alt0000002472
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/columns/rule_id/column


ALTER TABLE agentic_db_app_public.rule_chunks 
  ALTER COLUMN rule_id SET NOT NULL;

