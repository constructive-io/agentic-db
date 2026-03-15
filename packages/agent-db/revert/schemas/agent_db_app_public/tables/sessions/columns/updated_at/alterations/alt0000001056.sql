-- Revert: schemas/agent_db_app_public/tables/sessions/columns/updated_at/alterations/alt0000001056




ALTER TABLE agent_db_app_public.sessions 
    ALTER COLUMN updated_at DROP DEFAULT;



