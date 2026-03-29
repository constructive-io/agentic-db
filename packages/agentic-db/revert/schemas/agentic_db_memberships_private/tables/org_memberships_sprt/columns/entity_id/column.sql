-- Revert: schemas/agentic_db_memberships_private/tables/org_memberships_sprt/columns/entity_id/column


ALTER TABLE agentic_db_memberships_private.org_memberships_sprt 
  DROP COLUMN entity_id RESTRICT;


