-- Verify: schemas/agent_db_memberships_public/tables/app_memberships/indexes/app_memberships_created_by_idx


SELECT verify_index('agent_db_memberships_public.app_memberships', 'app_memberships_created_by_idx');


