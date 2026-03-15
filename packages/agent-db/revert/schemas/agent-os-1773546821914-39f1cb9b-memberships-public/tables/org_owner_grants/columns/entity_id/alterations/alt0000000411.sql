-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_owner_grants/columns/entity_id/alterations/alt0000000411


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_owner_grants 
  ALTER COLUMN entity_id DROP NOT NULL;


