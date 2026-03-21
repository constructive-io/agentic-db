-- Verify: schemas/agentic_db_app_public/tables/billing_subscriptions/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.billing_subscriptions', 'select', 'authenticated');


