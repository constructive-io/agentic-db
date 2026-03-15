-- Verify: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_grants/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773546821914-39f1cb9b-memberships-public.app_grants', 'insert', 'authenticated');


