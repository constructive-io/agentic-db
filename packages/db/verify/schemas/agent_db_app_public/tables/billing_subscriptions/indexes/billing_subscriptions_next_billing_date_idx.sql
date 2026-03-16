-- Verify: schemas/agent_db_app_public/tables/billing_subscriptions/indexes/billing_subscriptions_next_billing_date_idx


SELECT verify_index('agent_db_app_public.billing_subscriptions', 'billing_subscriptions_next_billing_date_idx');


