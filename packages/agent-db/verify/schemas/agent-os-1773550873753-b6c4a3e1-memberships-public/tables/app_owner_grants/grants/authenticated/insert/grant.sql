-- Verify: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_owner_grants/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773550873753-b6c4a3e1-memberships-public.app_owner_grants', 'insert', 'authenticated');


