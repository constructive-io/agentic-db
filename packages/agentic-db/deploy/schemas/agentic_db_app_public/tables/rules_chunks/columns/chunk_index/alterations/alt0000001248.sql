-- Deploy: schemas/agentic_db_app_public/tables/rules_chunks/columns/chunk_index/alterations/alt0000001248
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/rules_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".rules_chunks 
  ALTER COLUMN chunk_index SET NOT NULL;

