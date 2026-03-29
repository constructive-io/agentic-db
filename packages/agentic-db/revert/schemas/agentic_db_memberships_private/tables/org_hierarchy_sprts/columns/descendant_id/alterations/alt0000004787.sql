-- Revert: schemas/agentic_db_memberships_private/tables/org_hierarchy_sprts/columns/descendant_id/alterations/alt0000004787


ALTER TABLE agentic_db_memberships_private.org_hierarchy_sprts 
  ALTER COLUMN descendant_id DROP NOT NULL;


