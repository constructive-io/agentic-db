-- Revert: schemas/agentic_db_permissions_public/tables/app_permissions/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_permissions_public".app_permissions FROM authenticated;


