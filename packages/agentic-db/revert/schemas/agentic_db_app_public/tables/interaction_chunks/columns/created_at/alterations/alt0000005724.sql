-- Revert: schemas/agentic_db_app_public/tables/interaction_chunks/columns/created_at/alterations/alt0000005724




ALTER TABLE agentic_db_app_public.interaction_chunks 
    ALTER COLUMN created_at DROP DEFAULT;



