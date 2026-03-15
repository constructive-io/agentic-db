-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_memberships_sprt/columns/permissions/alterations/alt0000001940


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-private".org_memberships_sprt 
  ALTER COLUMN permissions DROP NOT NULL;


