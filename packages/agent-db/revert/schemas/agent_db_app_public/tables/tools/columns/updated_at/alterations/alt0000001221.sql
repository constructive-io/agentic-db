-- Revert: schemas/agent_db_app_public/tables/tools/columns/updated_at/alterations/alt0000001221




ALTER TABLE agent_db_app_public.tools 
    ALTER COLUMN updated_at DROP DEFAULT;



