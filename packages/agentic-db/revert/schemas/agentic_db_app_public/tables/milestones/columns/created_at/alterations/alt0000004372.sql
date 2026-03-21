-- Revert: schemas/agentic_db_app_public/tables/milestones/columns/created_at/alterations/alt0000004372




ALTER TABLE agentic_db_app_public.milestones 
    ALTER COLUMN created_at DROP DEFAULT;



