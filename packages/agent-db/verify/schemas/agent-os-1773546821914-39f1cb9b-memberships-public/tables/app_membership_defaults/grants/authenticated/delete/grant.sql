-- Verify: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_membership_defaults/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773546821914-39f1cb9b-memberships-public.app_membership_defaults', 'delete', 'authenticated');


