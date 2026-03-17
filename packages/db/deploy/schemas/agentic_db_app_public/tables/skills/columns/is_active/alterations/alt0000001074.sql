-- Deploy: schemas/agentic_db_app_public/tables/skills/columns/is_active/alterations/alt0000001074
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/skills/columns/category/column
-- requires: schemas/agentic_db_app_public/tables/skills/columns/is_active/column



ALTER TABLE "agentic_db_app_public".skills 
    ALTER COLUMN is_active SET DEFAULT true;

