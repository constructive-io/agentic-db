-- Revert: schemas/agent_db_app_public/tables/sessions/columns/started_at/alterations/alt0000001057




ALTER TABLE agent_db_app_public.sessions 
    ALTER COLUMN started_at DROP DEFAULT;



