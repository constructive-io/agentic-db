-- Revert: schemas/agentic_db_memberships_private/tables/app_memberships_sprt/columns/permissions/column


ALTER TABLE agentic_db_memberships_private.app_memberships_sprt 
  DROP COLUMN permissions RESTRICT;


