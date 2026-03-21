-- Revert: schemas/agentic_db_app_public/tables/prompt_chunks/columns/updated_at/alterations/alt0000004072




ALTER TABLE agentic_db_app_public.prompt_chunks 
    ALTER COLUMN updated_at DROP DEFAULT;



