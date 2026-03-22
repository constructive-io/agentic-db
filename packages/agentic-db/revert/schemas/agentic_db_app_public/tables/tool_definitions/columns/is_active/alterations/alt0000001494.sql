-- Revert: schemas/agentic_db_app_public/tables/tool_definitions/columns/is_active/alterations/alt0000001494




ALTER TABLE "agentic_db_app_public".tool_definitions 
    ALTER COLUMN is_active DROP DEFAULT;



