-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_admin_grants/columns/entity_id/alterations/alt0000000397


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_admin_grants 
  ALTER COLUMN entity_id DROP NOT NULL;


