-- Verify: schemas/agent_db_memberships_public/tables/org_memberships/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_memberships_public.org_memberships', 'insert', 'authenticated');


