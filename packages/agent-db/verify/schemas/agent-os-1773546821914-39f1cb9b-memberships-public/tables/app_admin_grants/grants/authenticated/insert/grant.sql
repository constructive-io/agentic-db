-- Verify: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_admin_grants/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773546821914-39f1cb9b-memberships-public.app_admin_grants', 'insert', 'authenticated');


