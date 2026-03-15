-- Deploy: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/columns/entity_id/alterations/alt0000002269
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/table
-- requires: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/columns/entity_id/column


ALTER TABLE "agent_db_memberships_private".org_hierarchy_sprts 
  ALTER COLUMN entity_id SET NOT NULL;

