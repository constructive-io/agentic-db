-- Revert: schemas/agent_db_app_public/tables/skills/columns/always_load/alterations/alt0000001082




ALTER TABLE agent_db_app_public.skills 
    ALTER COLUMN always_load DROP DEFAULT;



