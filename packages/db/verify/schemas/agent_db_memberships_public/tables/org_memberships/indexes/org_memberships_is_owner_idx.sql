-- Verify: schemas/agent_db_memberships_public/tables/org_memberships/indexes/org_memberships_is_owner_idx


SELECT verify_index('agent_db_memberships_public.org_memberships', 'org_memberships_is_owner_idx');


