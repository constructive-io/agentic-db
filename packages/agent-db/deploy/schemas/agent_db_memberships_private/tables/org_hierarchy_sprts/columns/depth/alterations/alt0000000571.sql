-- Deploy: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/columns/depth/alterations/alt0000000571
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/table
-- requires: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/columns/depth/column


ALTER TABLE agent_db_memberships_private.org_hierarchy_sprts 
  ALTER COLUMN depth SET NOT NULL;

