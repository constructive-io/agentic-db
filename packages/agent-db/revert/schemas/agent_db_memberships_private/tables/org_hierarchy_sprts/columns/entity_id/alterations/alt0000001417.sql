-- Revert: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/columns/entity_id/alterations/alt0000001417


ALTER TABLE "agent_db_memberships_private".org_hierarchy_sprts 
  ALTER COLUMN entity_id DROP NOT NULL;


