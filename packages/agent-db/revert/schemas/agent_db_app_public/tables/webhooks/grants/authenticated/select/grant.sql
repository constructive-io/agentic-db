-- Revert: schemas/agent_db_app_public/tables/webhooks/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".webhooks FROM authenticated;


