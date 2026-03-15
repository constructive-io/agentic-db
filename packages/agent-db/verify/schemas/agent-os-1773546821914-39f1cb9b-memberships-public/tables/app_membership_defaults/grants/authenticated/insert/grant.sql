-- Verify: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_membership_defaults/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773546821914-39f1cb9b-memberships-public.app_membership_defaults', 'insert', 'authenticated');


