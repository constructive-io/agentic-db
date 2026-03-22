-- Revert: schemas/agentic_db_memberships_private/tables/org_memberships_sprt/columns/permissions/column


ALTER TABLE agentic_db_memberships_private.org_memberships_sprt 
  DROP COLUMN permissions RESTRICT;


