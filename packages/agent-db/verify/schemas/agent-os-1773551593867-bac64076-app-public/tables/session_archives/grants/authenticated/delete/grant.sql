-- Verify: schemas/agent-os-1773551593867-bac64076-app-public/tables/session_archives/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-app-public.session_archives', 'delete', 'authenticated');


