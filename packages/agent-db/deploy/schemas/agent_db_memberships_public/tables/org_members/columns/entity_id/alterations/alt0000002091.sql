-- Deploy: schemas/agent_db_memberships_public/tables/org_members/columns/entity_id/alterations/alt0000002091
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_members/columns/entity_id/column


COMMENT ON COLUMN "agent_db_memberships_public".org_members.entity_id IS E'References the entity (org or group) this member belongs to';

