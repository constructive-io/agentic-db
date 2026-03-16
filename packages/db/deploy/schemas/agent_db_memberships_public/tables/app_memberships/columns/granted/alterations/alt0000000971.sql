-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/columns/granted/alterations/alt0000000971
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/columns/granted/column


COMMENT ON COLUMN "agent_db_memberships_public".app_memberships.granted IS E'Bitmask of permissions directly granted to this member (not from profiles)';

