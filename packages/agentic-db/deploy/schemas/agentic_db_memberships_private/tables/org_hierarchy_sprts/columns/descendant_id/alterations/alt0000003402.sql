-- Deploy: schemas/agentic_db_memberships_private/tables/org_hierarchy_sprts/columns/descendant_id/alterations/alt0000003402
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_private/tables/org_hierarchy_sprts/columns/descendant_id/column


COMMENT ON COLUMN agentic_db_memberships_private.org_hierarchy_sprts.descendant_id IS E'User ID of the descendant (subordinate) in the transitive path';

