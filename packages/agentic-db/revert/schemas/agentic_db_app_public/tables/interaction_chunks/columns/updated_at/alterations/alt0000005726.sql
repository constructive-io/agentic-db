-- Revert: schemas/agentic_db_app_public/tables/interaction_chunks/columns/updated_at/alterations/alt0000005726




ALTER TABLE agentic_db_app_public.interaction_chunks 
    ALTER COLUMN updated_at DROP DEFAULT;



