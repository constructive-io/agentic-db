-- Revert: schemas/agent_db_memberships_public/tables/app_memberships/columns/is_owner/alterations/alt0000000109




ALTER TABLE agent_db_memberships_public.app_memberships 
    ALTER COLUMN is_owner DROP DEFAULT;



