-- Deploy: schemas/agentic_db_memberships_private/tables/org_hierarchy_sprts/columns/depth/alterations/alt0000003403
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_private/tables/org_hierarchy_sprts/table
-- requires: schemas/agentic_db_memberships_private/tables/org_hierarchy_sprts/columns/depth/column


ALTER TABLE agentic_db_memberships_private.org_hierarchy_sprts 
  ALTER COLUMN depth SET NOT NULL;

