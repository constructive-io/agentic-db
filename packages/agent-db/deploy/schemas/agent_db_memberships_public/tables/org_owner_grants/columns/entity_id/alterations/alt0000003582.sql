-- Deploy: schemas/agent_db_memberships_public/tables/org_owner_grants/columns/entity_id/alterations/alt0000003582
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_owner_grants/columns/entity_id/column


COMMENT ON COLUMN "agent_db_memberships_public".org_owner_grants.entity_id IS E'The entity (org or group) this ownership grant applies to';

