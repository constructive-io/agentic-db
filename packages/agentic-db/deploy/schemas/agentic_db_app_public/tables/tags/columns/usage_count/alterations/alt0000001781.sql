-- Deploy: schemas/agentic_db_app_public/tables/tags/columns/usage_count/alterations/alt0000001781
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tags/table
-- requires: schemas/agentic_db_app_public/tables/tags/columns/category/column
-- requires: schemas/agentic_db_app_public/tables/tags/columns/usage_count/column



ALTER TABLE "agentic_db_app_public".tags 
    ALTER COLUMN usage_count SET DEFAULT 0;

