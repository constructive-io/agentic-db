-- Verify: schemas/agent_db_memberships_public/tables/membership_types/policies/auth_sel/policy


SELECT verify_policy('auth_sel', 'agent_db_memberships_public.membership_types');


