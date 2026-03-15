-- Deploy: schemas/agent_db_memberships_public/tables/app_grants/alterations/alt0000001851
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_grants/table


COMMENT ON TABLE "agent_db_memberships_public".app_grants IS 'Records of individual permission grants and revocations for members via bitmask';

