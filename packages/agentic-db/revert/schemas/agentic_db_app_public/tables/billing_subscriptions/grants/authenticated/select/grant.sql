-- Revert: schemas/agentic_db_app_public/tables/billing_subscriptions/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.billing_subscriptions FROM authenticated;


