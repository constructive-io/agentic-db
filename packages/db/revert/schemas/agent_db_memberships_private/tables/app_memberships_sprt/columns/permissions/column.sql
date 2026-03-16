-- Revert: schemas/agent_db_memberships_private/tables/app_memberships_sprt/columns/permissions/column


ALTER TABLE "agent_db_memberships_private".app_memberships_sprt 
  DROP COLUMN permissions RESTRICT;


