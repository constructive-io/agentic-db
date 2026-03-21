-- Revert: schemas/agentic_db_app_public/tables/skills/columns/active_count/alterations/alt0000003991




ALTER TABLE agentic_db_app_public.skills 
    ALTER COLUMN active_count DROP DEFAULT;



