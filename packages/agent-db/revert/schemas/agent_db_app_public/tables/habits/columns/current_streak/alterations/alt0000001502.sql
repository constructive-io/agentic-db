-- Revert: schemas/agent_db_app_public/tables/habits/columns/current_streak/alterations/alt0000001502




ALTER TABLE agent_db_app_public.habits 
    ALTER COLUMN current_streak DROP DEFAULT;



