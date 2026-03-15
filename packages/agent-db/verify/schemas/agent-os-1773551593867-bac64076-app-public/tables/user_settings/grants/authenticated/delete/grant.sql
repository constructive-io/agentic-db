-- Verify: schemas/agent-os-1773551593867-bac64076-app-public/tables/user_settings/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-app-public.user_settings', 'delete', 'authenticated');


