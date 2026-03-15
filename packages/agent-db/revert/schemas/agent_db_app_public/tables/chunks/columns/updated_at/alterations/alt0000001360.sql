-- Revert: schemas/agent_db_app_public/tables/chunks/columns/updated_at/alterations/alt0000001360




ALTER TABLE agent_db_app_public.chunks 
    ALTER COLUMN updated_at DROP DEFAULT;



