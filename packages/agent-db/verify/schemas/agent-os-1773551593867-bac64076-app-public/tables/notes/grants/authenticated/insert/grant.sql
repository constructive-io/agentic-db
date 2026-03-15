-- Verify: schemas/agent-os-1773551593867-bac64076-app-public/tables/notes/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-app-public.notes', 'insert', 'authenticated');


