-- Revert: schemas/agent_db_permissions_public/tables/app_permissions/grants/authenticated/update/grant


REVOKE UPDATE ON agent_db_permissions_public.app_permissions FROM authenticated;


