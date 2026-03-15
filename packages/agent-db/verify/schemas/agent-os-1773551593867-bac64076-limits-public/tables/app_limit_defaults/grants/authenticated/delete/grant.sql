-- Verify: schemas/agent-os-1773551593867-bac64076-limits-public/tables/app_limit_defaults/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-limits-public.app_limit_defaults', 'delete', 'authenticated');


