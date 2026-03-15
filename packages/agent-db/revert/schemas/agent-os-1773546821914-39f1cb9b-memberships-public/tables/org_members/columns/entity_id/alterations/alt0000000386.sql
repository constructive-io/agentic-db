-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_members/columns/entity_id/alterations/alt0000000386


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_members 
  ALTER COLUMN entity_id DROP NOT NULL;


