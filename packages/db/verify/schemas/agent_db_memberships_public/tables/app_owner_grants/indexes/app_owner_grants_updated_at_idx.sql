-- Verify: schemas/agent_db_memberships_public/tables/app_owner_grants/indexes/app_owner_grants_updated_at_idx


SELECT verify_index('agent_db_memberships_public.app_owner_grants', 'app_owner_grants_updated_at_idx');


