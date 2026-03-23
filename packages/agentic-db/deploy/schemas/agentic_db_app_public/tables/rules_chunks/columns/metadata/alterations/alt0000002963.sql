-- Deploy: schemas/agentic_db_app_public/tables/rules_chunks/columns/metadata/alterations/alt0000002963
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/rules_chunks/columns/metadata/column



ALTER TABLE agentic_db_app_public.rules_chunks 
    ALTER COLUMN metadata SET DEFAULT '{}'::jsonb;

