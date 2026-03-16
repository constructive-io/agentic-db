-- Revert: schemas/agent_db_app_public/tables/webhooks/grants/authenticated/update/grant


REVOKE UPDATE ON "agent_db_app_public".webhooks FROM authenticated;


