-- Revert: schemas/agent_db_permissions_public/tables/app_permissions/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_permissions_public".app_permissions FROM authenticated;


