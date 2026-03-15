-- Revert: schemas/agent_db_app_public/tables/billing_subscriptions/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".billing_subscriptions FROM authenticated;


