-- Verify: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/list_items/grants/authenticated/update/grant


SELECT verify_table_grant('agent-os-1773546821914-39f1cb9b-app-public.list_items', 'update', 'authenticated');


