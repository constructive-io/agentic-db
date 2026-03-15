-- Revert: schemas/agent_db_memberships_private/tables/app_memberships_sprt/columns/is_owner/column


ALTER TABLE agent_db_memberships_private.app_memberships_sprt 
  DROP COLUMN is_owner RESTRICT;


