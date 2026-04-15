-- Revert: schemas/agentic_db_memberships_private/tables/org_hierarchy_sprts/columns/entity_id/alterations/alt0000012570


ALTER TABLE agentic_db_memberships_private.org_hierarchy_sprts 
  ALTER COLUMN entity_id DROP NOT NULL;


