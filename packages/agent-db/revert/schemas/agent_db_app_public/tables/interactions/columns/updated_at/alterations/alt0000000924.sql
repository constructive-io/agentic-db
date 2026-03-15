-- Revert: schemas/agent_db_app_public/tables/interactions/columns/updated_at/alterations/alt0000000924




ALTER TABLE agent_db_app_public.interactions 
    ALTER COLUMN updated_at DROP DEFAULT;



