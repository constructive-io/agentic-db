-- Revert: schemas/agent_db_app_public/tables/chunks/columns/created_at/alterations/alt0000001358




ALTER TABLE agent_db_app_public.chunks 
    ALTER COLUMN created_at DROP DEFAULT;



