-- Revert: schemas/agentic_db_app_public/tables/tasks_chunks/columns/chunk_index/alterations/alt0000002561




ALTER TABLE agentic_db_app_public.tasks_chunks 
    ALTER COLUMN chunk_index DROP DEFAULT;



