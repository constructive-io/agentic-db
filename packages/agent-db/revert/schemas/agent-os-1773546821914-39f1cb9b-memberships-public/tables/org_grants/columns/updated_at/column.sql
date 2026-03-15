-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_grants/columns/updated_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_grants 
  DROP COLUMN updated_at RESTRICT;


