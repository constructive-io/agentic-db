-- Revert: schemas/agent_db_app_public/tables/tags/columns/updated_at/alterations/alt0000000935




ALTER TABLE agent_db_app_public.tags 
    ALTER COLUMN updated_at DROP DEFAULT;



