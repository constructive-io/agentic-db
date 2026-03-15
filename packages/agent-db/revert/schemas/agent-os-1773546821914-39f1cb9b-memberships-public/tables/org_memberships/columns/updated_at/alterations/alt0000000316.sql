-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/columns/updated_at/alterations/alt0000000316


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_memberships 
  ALTER COLUMN updated_at DROP DEFAULT;


