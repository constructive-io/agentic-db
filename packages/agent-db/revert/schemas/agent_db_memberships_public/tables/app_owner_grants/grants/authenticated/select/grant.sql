-- Revert: schemas/agent_db_memberships_public/tables/app_owner_grants/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_memberships_public.app_owner_grants FROM authenticated;


