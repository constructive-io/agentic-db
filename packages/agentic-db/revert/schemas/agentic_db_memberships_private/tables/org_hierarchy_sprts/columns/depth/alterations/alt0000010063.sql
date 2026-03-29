-- Revert: schemas/agentic_db_memberships_private/tables/org_hierarchy_sprts/columns/depth/alterations/alt0000010063


ALTER TABLE agentic_db_memberships_private.org_hierarchy_sprts 
  ALTER COLUMN depth DROP NOT NULL;


