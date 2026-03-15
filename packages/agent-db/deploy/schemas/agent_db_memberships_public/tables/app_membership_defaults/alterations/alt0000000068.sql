-- Deploy: schemas/agent_db_memberships_public/tables/app_membership_defaults/alterations/alt0000000068
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_membership_defaults/table


COMMENT ON TABLE agent_db_memberships_public.app_membership_defaults IS E'Default membership settings per entity, controlling initial approval and verification state for new members';

