-- Verify: schemas/agent_db_memberships_public/tables/org_grants/indexes/org_grants_grantor_id_idx


SELECT verify_index('agent_db_memberships_public.org_grants', 'org_grants_grantor_id_idx');


