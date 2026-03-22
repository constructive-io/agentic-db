-- Deploy: schemas/agentic_db_app_public/tables/rules/columns/name/alterations/alt0000002122
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/rules/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


ALTER TABLE "agentic_db_app_public".rules 
  ALTER COLUMN name SET NOT NULL;

