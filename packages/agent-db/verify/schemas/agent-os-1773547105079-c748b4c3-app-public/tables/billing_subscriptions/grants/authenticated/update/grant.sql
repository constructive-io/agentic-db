-- Verify: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/billing_subscriptions/grants/authenticated/update/grant


SELECT verify_table_grant('agent-os-1773547105079-c748b4c3-app-public.billing_subscriptions', 'update', 'authenticated');


