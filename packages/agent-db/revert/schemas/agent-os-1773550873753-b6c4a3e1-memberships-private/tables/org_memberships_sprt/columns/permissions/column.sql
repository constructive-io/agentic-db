-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/org_memberships_sprt/columns/permissions/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-private".org_memberships_sprt 
  DROP COLUMN permissions RESTRICT;


