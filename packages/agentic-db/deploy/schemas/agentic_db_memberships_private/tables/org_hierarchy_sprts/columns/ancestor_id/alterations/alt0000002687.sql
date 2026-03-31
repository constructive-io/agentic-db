-- Deploy: schemas/agentic_db_memberships_private/tables/org_hierarchy_sprts/columns/ancestor_id/alterations/alt0000002687
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_private/tables/org_hierarchy_sprts/columns/ancestor_id/column


COMMENT ON COLUMN agentic_db_memberships_private.org_hierarchy_sprts.ancestor_id IS E'User ID of the ancestor (manager) in the transitive path';

