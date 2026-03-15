-- Verify: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_admin_grants/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-memberships-public.app_admin_grants', 'insert', 'authenticated');


