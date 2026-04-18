-- Revert: schemas/agentic_db_app_public/tables/tool_definitions/columns/created_at/alterations/alt0000000970




ALTER TABLE agentic_db_app_public.tool_definitions 
    ALTER COLUMN created_at DROP DEFAULT;



