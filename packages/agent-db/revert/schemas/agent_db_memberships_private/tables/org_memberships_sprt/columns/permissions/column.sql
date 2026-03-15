-- Revert: schemas/agent_db_memberships_private/tables/org_memberships_sprt/columns/permissions/column


ALTER TABLE "agent_db_memberships_private".org_memberships_sprt 
  DROP COLUMN permissions RESTRICT;


