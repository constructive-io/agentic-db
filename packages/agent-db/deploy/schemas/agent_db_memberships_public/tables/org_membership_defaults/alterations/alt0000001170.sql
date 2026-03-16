-- Deploy: schemas/agent_db_memberships_public/tables/org_membership_defaults/alterations/alt0000001170
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_membership_defaults/table


COMMENT ON TABLE "agent_db_memberships_public".org_membership_defaults IS E'Default membership settings per entity, controlling initial approval and verification state for new members';

