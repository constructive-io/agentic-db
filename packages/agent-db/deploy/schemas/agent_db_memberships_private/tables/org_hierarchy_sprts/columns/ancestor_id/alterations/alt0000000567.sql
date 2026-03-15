-- Deploy: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/columns/ancestor_id/alterations/alt0000000567
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/table
-- requires: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/columns/ancestor_id/column


ALTER TABLE agent_db_memberships_private.org_hierarchy_sprts 
  ALTER COLUMN ancestor_id SET NOT NULL;

