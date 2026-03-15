-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_grants/columns/entity_id/alterations/alt0000000428


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_grants 
  ALTER COLUMN entity_id DROP NOT NULL;


