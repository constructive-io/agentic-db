-- Revert: schemas/agent_db_app_public/tables/notifications/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".notifications FROM authenticated;


