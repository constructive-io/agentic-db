-- Verify: schemas/agent_db_app_public/tables/billing_subscriptions/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.billing_subscriptions', 'update', 'authenticated');


