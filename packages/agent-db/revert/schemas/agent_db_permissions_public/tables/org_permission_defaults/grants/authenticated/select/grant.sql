-- Revert: schemas/agent_db_permissions_public/tables/org_permission_defaults/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_permissions_public".org_permission_defaults FROM authenticated;


