-- Revert: schemas/agent_db_permissions_public/tables/app_permission_defaults/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_permissions_public".app_permission_defaults FROM authenticated;


