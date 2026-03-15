-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_memberships_sprt/columns/is_admin/alterations/alt0000001937


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-private".org_memberships_sprt 
  ALTER COLUMN is_admin DROP NOT NULL;


