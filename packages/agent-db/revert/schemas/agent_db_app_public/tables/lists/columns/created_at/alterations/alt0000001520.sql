-- Revert: schemas/agent_db_app_public/tables/lists/columns/created_at/alterations/alt0000001520




ALTER TABLE agent_db_app_public.lists 
    ALTER COLUMN created_at DROP DEFAULT;



