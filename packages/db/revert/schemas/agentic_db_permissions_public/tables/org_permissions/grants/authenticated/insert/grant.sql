-- Revert: schemas/agentic_db_permissions_public/tables/org_permissions/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_permissions_public".org_permissions FROM authenticated;


