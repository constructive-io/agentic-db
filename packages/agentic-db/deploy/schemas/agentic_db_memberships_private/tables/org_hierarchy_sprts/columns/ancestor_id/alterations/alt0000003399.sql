-- Deploy: schemas/agentic_db_memberships_private/tables/org_hierarchy_sprts/columns/ancestor_id/alterations/alt0000003399
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_private/tables/org_hierarchy_sprts/table
-- requires: schemas/agentic_db_memberships_private/tables/org_hierarchy_sprts/columns/ancestor_id/column


ALTER TABLE agentic_db_memberships_private.org_hierarchy_sprts 
  ALTER COLUMN ancestor_id SET NOT NULL;

