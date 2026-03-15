-- Verify: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/user_settings/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773550873753-b6c4a3e1-app-public.user_settings', 'delete', 'authenticated');


