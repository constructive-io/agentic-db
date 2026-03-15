-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_grants/columns/entity_id/alterations/alt0000002037


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_grants 
  ALTER COLUMN entity_id DROP NOT NULL;


