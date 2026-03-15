-- Verify: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/messages/grants/authenticated/update/grant


SELECT verify_table_grant('agent-os-1773550873753-b6c4a3e1-app-public.messages', 'update', 'authenticated');


