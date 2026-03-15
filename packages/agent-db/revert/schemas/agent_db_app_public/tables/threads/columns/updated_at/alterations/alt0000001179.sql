-- Revert: schemas/agent_db_app_public/tables/threads/columns/updated_at/alterations/alt0000001179




ALTER TABLE agent_db_app_public.threads 
    ALTER COLUMN updated_at DROP DEFAULT;



