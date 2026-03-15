-- Revert: schemas/agent_db_app_public/tables/webhooks/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".webhooks FROM authenticated;


