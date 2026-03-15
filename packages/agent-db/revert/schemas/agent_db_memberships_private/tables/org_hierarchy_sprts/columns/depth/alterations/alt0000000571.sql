-- Revert: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/columns/depth/alterations/alt0000000571


ALTER TABLE agent_db_memberships_private.org_hierarchy_sprts 
  ALTER COLUMN depth DROP NOT NULL;


