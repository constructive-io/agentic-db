-- Revert: schemas/agent_db_app_public/tables/repositories/columns/created_at/alterations/alt0000001120




ALTER TABLE agent_db_app_public.repositories 
    ALTER COLUMN created_at DROP DEFAULT;



