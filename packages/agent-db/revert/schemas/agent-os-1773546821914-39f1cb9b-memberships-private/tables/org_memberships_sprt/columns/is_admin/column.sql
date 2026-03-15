-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_memberships_sprt/columns/is_admin/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-private".org_memberships_sprt 
  DROP COLUMN is_admin RESTRICT;


