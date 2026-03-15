-- Deploy: schemas/agent_db_memberships_public/tables/membership_types/alterations/alt0000000015
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/membership_types/table


COMMENT ON TABLE agent_db_memberships_public.membership_types IS E'Defines the different scopes of membership (e.g. App Member, Organization Member, Group Member)';

