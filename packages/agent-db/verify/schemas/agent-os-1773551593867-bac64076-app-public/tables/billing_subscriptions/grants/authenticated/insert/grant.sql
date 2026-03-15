-- Verify: schemas/agent-os-1773551593867-bac64076-app-public/tables/billing_subscriptions/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-app-public.billing_subscriptions', 'insert', 'authenticated');


