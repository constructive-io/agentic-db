-- Verify: schemas/agent_db_memberships_public/tables/org_members/indexes/org_members_is_admin_idx


SELECT verify_index('agent_db_memberships_public.org_members', 'org_members_is_admin_idx');


