-- Deploy: schemas/agentic_db_app_public/tables/tools/columns/is_active/alterations/alt0000002200
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tools/table
-- requires: schemas/agentic_db_app_public/tables/tools/columns/is_active/column
-- requires: schemas/agentic_db_app_public/tables/tools/columns/auth_method/column



ALTER TABLE "agentic_db_app_public".tools 
    ALTER COLUMN is_active SET DEFAULT true;

