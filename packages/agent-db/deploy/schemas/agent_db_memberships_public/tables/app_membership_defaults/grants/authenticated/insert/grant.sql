-- Deploy: schemas/agent_db_memberships_public/tables/app_membership_defaults/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_membership_defaults/table


GRANT INSERT ON agent_db_memberships_public.app_membership_defaults TO authenticated;

