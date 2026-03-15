-- Revert: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/columns/ancestor_id/column


ALTER TABLE agent_db_memberships_private.org_hierarchy_sprts 
  DROP COLUMN ancestor_id RESTRICT;


