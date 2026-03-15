-- Verify: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/webhooks/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773546821914-39f1cb9b-app-public.webhooks', 'delete', 'authenticated');


