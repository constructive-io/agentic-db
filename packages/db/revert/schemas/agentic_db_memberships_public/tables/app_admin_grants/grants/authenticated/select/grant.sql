-- Revert: schemas/agentic_db_memberships_public/tables/app_admin_grants/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_memberships_public".app_admin_grants FROM authenticated;


