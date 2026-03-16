-- Deploy: schemas/agent_db_memberships_public/tables/app_grants/alterations/alt0000000999
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_grants/table


COMMENT ON TABLE "agent_db_memberships_public".app_grants IS 'Records of individual permission grants and revocations for members via bitmask';

