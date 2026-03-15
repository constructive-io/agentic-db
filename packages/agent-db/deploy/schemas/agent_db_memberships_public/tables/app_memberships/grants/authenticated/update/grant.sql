-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/table


GRANT UPDATE (is_banned, is_approved, is_verified, is_disabled, granted) ON agent_db_memberships_public.app_memberships TO authenticated;

