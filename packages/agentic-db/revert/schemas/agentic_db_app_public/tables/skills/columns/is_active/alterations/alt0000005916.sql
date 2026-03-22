-- Revert: schemas/agentic_db_app_public/tables/skills/columns/is_active/alterations/alt0000005916




ALTER TABLE agentic_db_app_public.skills 
    ALTER COLUMN is_active DROP DEFAULT;



