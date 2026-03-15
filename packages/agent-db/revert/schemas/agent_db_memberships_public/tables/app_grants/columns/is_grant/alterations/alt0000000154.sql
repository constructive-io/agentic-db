-- Revert: schemas/agent_db_memberships_public/tables/app_grants/columns/is_grant/alterations/alt0000000154




ALTER TABLE agent_db_memberships_public.app_grants 
    ALTER COLUMN is_grant DROP DEFAULT;



