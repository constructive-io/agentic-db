-- Revert: schemas/agent_db_app_public/tables/skills/columns/updated_at/alterations/alt0000001080




ALTER TABLE agent_db_app_public.skills 
    ALTER COLUMN updated_at DROP DEFAULT;



