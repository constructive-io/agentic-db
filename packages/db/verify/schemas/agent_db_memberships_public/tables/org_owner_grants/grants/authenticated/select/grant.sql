-- Verify: schemas/agent_db_memberships_public/tables/org_owner_grants/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_memberships_public.org_owner_grants', 'select', 'authenticated');


