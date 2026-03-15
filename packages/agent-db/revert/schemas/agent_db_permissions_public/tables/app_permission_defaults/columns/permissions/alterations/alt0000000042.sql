-- Revert: schemas/agent_db_permissions_public/tables/app_permission_defaults/columns/permissions/alterations/alt0000000042




ALTER TABLE agent_db_permissions_public.app_permission_defaults 
    ALTER COLUMN permissions DROP DEFAULT;



