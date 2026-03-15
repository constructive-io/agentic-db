-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_admin_grants/columns/entity_id/alterations/alt0000002006


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_admin_grants 
  ALTER COLUMN entity_id DROP NOT NULL;


