-- Revert: schemas/agentic_db_app_public/tables/tool_definitions/columns/updated_at/alterations/alt0000000365




ALTER TABLE agentic_db_app_public.tool_definitions 
    ALTER COLUMN updated_at DROP DEFAULT;



