-- Verify: schemas/agent_db_memberships_public/tables/org_membership_defaults/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_memberships_public.org_membership_defaults', 'delete', 'authenticated');


