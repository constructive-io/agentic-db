-- Revert: schemas/agent_db_app_public/tables/rules/columns/updated_at/alterations/alt0000001059




ALTER TABLE agent_db_app_public.rules 
    ALTER COLUMN updated_at DROP DEFAULT;



