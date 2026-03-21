-- Revert: schemas/agentic_db_app_public/tables/agent_spawns/columns/created_at/alterations/alt0000004223




ALTER TABLE agentic_db_app_public.agent_spawns 
    ALTER COLUMN created_at DROP DEFAULT;



