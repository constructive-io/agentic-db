-- Verify: schemas/agent_db_memberships_public/tables/org_admin_grants/indexes/org_admin_grants_entity_id_idx


SELECT verify_index('agent_db_memberships_public.org_admin_grants', 'org_admin_grants_entity_id_idx');


