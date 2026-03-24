-- Revert: schemas/agentic_db_permissions_public/tables/app_permission_defaults/grants/authenticated/update/grant


REVOKE UPDATE ON "agentic_db_permissions_public".app_permission_defaults FROM authenticated;


