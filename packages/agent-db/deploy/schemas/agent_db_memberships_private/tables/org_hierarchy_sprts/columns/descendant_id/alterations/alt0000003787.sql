-- Deploy: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/columns/descendant_id/alterations/alt0000003787
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/table
-- requires: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/columns/descendant_id/column


ALTER TABLE "agent_db_memberships_private".org_hierarchy_sprts 
  ALTER COLUMN descendant_id SET NOT NULL;

