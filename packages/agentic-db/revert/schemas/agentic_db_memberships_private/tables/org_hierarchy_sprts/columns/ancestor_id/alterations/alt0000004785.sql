-- Revert: schemas/agentic_db_memberships_private/tables/org_hierarchy_sprts/columns/ancestor_id/alterations/alt0000004785


ALTER TABLE agentic_db_memberships_private.org_hierarchy_sprts 
  ALTER COLUMN ancestor_id DROP NOT NULL;


