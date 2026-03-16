-- Deploy: schemas/agent_db_memberships_public/tables/org_grants/alterations/alt0000001269
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_grants/table


COMMENT ON TABLE "agent_db_memberships_public".org_grants IS 'Records of individual permission grants and revocations for members via bitmask';

