-- Deploy: schemas/agent_db_memberships_public/tables/membership_types/columns/name/alterations/alt0000003189
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/membership_types/columns/name/column


COMMENT ON COLUMN "agent_db_memberships_public".membership_types.name IS E'Human-readable name of the membership type';

