-- Revert: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/columns/descendant_id/alterations/alt0000003787


ALTER TABLE "agent_db_memberships_private".org_hierarchy_sprts 
  ALTER COLUMN descendant_id DROP NOT NULL;


