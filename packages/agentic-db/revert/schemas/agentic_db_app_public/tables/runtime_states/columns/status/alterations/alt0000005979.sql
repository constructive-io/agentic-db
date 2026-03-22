-- Revert: schemas/agentic_db_app_public/tables/runtime_states/columns/status/alterations/alt0000005979




ALTER TABLE agentic_db_app_public.runtime_states 
    ALTER COLUMN status DROP DEFAULT;



