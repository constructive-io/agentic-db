-- Deploy: schemas/agentic_db_memberships_private/tables/org_hierarchy_sprts/columns/entity_id/alterations/alt0000001734
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_private/tables/org_hierarchy_sprts/table
-- requires: schemas/agentic_db_memberships_private/tables/org_hierarchy_sprts/columns/entity_id/column


ALTER TABLE agentic_db_memberships_private.org_hierarchy_sprts 
  ALTER COLUMN entity_id SET NOT NULL;

