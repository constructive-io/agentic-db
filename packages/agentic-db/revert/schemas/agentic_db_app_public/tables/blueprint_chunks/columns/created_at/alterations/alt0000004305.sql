-- Revert: schemas/agentic_db_app_public/tables/blueprint_chunks/columns/created_at/alterations/alt0000004305




ALTER TABLE agentic_db_app_public.blueprint_chunks 
    ALTER COLUMN created_at DROP DEFAULT;



