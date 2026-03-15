-- Verify: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_membership_defaults/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-memberships-public.org_membership_defaults', 'insert', 'authenticated');


