-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_members/columns/entity_id/alterations/alt0000001995


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_members 
  ALTER COLUMN entity_id DROP NOT NULL;


