-- Revert: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/columns/ancestor_id/alterations/alt0000003785


ALTER TABLE "agent_db_memberships_private".org_hierarchy_sprts 
  ALTER COLUMN ancestor_id DROP NOT NULL;


