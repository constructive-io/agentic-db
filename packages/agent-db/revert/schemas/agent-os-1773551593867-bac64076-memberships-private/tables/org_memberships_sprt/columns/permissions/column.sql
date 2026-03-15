-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_memberships_sprt/columns/permissions/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-private".org_memberships_sprt 
  DROP COLUMN permissions RESTRICT;


