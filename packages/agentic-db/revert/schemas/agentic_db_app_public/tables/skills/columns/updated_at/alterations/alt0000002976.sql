-- Revert: schemas/agentic_db_app_public/tables/skills/columns/updated_at/alterations/alt0000002976




ALTER TABLE agentic_db_app_public.skills 
    ALTER COLUMN updated_at DROP DEFAULT;



