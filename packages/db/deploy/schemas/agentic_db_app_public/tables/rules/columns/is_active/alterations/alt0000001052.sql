-- Deploy: schemas/agentic_db_app_public/tables/rules/columns/is_active/alterations/alt0000001052
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/rules/columns/severity/column
-- requires: schemas/agentic_db_app_public/tables/rules/columns/is_active/column



ALTER TABLE "agentic_db_app_public".rules 
    ALTER COLUMN is_active SET DEFAULT true;

