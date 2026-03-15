-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_memberships_sprt/columns/entity_id/alterations/alt0000001945


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-private".org_memberships_sprt 
  ALTER COLUMN entity_id DROP NOT NULL;


