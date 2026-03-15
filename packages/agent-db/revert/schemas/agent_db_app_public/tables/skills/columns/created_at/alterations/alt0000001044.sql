-- Revert: schemas/agent_db_app_public/tables/skills/columns/created_at/alterations/alt0000001044




ALTER TABLE agent_db_app_public.skills 
    ALTER COLUMN created_at DROP DEFAULT;



