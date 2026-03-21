-- Revert: schemas/agentic_db_app_public/tables/billing_subscriptions/grants/authenticated/delete/grant


REVOKE DELETE ON agentic_db_app_public.billing_subscriptions FROM authenticated;


