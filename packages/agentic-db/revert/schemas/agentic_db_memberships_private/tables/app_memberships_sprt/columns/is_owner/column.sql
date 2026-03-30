-- Revert: schemas/agentic_db_memberships_private/tables/app_memberships_sprt/columns/is_owner/column


ALTER TABLE "agentic_db_memberships_private".app_memberships_sprt 
  DROP COLUMN is_owner RESTRICT;


