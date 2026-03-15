-- Verify: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_owner_grants/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-memberships-public.app_owner_grants', 'insert', 'authenticated');


