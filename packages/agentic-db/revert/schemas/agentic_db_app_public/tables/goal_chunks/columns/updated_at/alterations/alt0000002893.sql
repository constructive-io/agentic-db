-- Revert: schemas/agentic_db_app_public/tables/goal_chunks/columns/updated_at/alterations/alt0000002893




ALTER TABLE agentic_db_app_public.goal_chunks 
    ALTER COLUMN updated_at DROP DEFAULT;



