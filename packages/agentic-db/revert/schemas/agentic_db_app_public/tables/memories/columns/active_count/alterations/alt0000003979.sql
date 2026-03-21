-- Revert: schemas/agentic_db_app_public/tables/memories/columns/active_count/alterations/alt0000003979




ALTER TABLE agentic_db_app_public.memories 
    ALTER COLUMN active_count DROP DEFAULT;



