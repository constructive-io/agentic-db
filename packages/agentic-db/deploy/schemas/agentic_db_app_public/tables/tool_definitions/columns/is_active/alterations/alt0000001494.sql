-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions/columns/is_active/alterations/alt0000001494
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/columns/is_active/column
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/columns/implementation/column



ALTER TABLE "agentic_db_app_public".tool_definitions 
    ALTER COLUMN is_active SET DEFAULT true;

