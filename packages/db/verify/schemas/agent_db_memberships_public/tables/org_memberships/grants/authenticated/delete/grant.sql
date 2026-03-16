-- Verify: schemas/agent_db_memberships_public/tables/org_memberships/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_memberships_public.org_memberships', 'delete', 'authenticated');


