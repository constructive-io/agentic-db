-- Revert: schemas/agentic_db_app_public/tables/projects/columns/embedding_stale/alterations/alt0000003184




ALTER TABLE agentic_db_app_public.projects 
    ALTER COLUMN embedding_stale DROP DEFAULT;



