-- Deploy: schemas/agent_db_memberships_public/tables/membership_types/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/membership_types/table


GRANT SELECT ON agent_db_memberships_public.membership_types TO authenticated;

