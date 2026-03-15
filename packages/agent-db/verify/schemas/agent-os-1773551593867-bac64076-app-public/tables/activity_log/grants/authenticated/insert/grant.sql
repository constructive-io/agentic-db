-- Verify: schemas/agent-os-1773551593867-bac64076-app-public/tables/activity_log/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-app-public.activity_log', 'insert', 'authenticated');


