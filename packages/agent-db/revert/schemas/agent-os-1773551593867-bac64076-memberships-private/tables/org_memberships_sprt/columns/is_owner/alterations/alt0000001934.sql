-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_memberships_sprt/columns/is_owner/alterations/alt0000001934


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-private".org_memberships_sprt 
  ALTER COLUMN is_owner DROP NOT NULL;


