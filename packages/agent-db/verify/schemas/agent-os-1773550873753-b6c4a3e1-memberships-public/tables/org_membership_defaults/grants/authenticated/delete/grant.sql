-- Verify: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_membership_defaults/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773550873753-b6c4a3e1-memberships-public.org_membership_defaults', 'delete', 'authenticated');


