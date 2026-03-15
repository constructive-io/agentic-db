-- Deploy: schemas/agent_db_memberships_private/tables/org_memberships_sprt/columns/entity_id/alterations/alt0000000337
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/org_memberships_sprt/columns/entity_id/column


COMMENT ON COLUMN agent_db_memberships_private.org_memberships_sprt.entity_id IS E'References the entity (org or group) this permission resolution applies to';

