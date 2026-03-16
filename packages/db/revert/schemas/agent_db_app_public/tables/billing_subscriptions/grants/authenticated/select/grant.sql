-- Revert: schemas/agent_db_app_public/tables/billing_subscriptions/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".billing_subscriptions FROM authenticated;


