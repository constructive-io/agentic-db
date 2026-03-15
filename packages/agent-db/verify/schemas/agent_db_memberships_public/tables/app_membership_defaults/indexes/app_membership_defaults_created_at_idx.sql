-- Verify: schemas/agent_db_memberships_public/tables/app_membership_defaults/indexes/app_membership_defaults_created_at_idx


SELECT verify_index('agent_db_memberships_public.app_membership_defaults', 'app_membership_defaults_created_at_idx');


