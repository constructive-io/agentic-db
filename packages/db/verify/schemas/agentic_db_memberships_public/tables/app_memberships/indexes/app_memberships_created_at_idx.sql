-- Verify: schemas/agentic_db_memberships_public/tables/app_memberships/indexes/app_memberships_created_at_idx


SELECT verify_index('agentic_db_memberships_public.app_memberships', 'app_memberships_created_at_idx');


