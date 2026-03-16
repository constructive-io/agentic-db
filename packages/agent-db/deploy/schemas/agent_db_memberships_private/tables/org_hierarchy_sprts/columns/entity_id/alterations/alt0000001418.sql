-- Deploy: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/columns/entity_id/alterations/alt0000001418
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/columns/entity_id/column


COMMENT ON COLUMN "agent_db_memberships_private".org_hierarchy_sprts.entity_id IS 'Organization this closure row belongs to';

