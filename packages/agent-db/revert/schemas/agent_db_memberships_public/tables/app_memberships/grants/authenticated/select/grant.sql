-- Revert: schemas/agent_db_memberships_public/tables/app_memberships/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_memberships_public.app_memberships FROM authenticated;


