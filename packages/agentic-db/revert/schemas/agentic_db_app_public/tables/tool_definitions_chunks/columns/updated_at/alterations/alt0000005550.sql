-- Revert: schemas/agentic_db_app_public/tables/tool_definitions_chunks/columns/updated_at/alterations/alt0000005550




ALTER TABLE agentic_db_app_public.tool_definitions_chunks 
    ALTER COLUMN updated_at DROP DEFAULT;



