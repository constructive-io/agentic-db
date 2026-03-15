-- Verify: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_membership_defaults/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-memberships-public.app_membership_defaults', 'delete', 'authenticated');


