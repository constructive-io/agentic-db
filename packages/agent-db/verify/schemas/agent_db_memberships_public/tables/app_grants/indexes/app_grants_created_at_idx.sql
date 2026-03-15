-- Verify: schemas/agent_db_memberships_public/tables/app_grants/indexes/app_grants_created_at_idx


SELECT verify_index('agent_db_memberships_public.app_grants', 'app_grants_created_at_idx');


