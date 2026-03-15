-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_membership_defaults/columns/entity_id/alterations/alt0000001950


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_membership_defaults 
  ALTER COLUMN entity_id DROP NOT NULL;


