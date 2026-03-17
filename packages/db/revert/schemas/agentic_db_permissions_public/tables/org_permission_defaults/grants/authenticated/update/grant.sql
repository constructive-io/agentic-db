-- Revert: schemas/agentic_db_permissions_public/tables/org_permission_defaults/grants/authenticated/update/grant


REVOKE UPDATE ON "agentic_db_permissions_public".org_permission_defaults FROM authenticated;


