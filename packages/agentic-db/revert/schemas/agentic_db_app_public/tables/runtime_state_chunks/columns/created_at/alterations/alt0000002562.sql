-- Revert: schemas/agentic_db_app_public/tables/runtime_state_chunks/columns/created_at/alterations/alt0000002562




ALTER TABLE agentic_db_app_public.runtime_state_chunks 
    ALTER COLUMN created_at DROP DEFAULT;



