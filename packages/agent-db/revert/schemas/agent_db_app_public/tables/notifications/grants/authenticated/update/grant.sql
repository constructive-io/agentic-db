-- Revert: schemas/agent_db_app_public/tables/notifications/grants/authenticated/update/grant


REVOKE UPDATE ON "agent_db_app_public".notifications FROM authenticated;


