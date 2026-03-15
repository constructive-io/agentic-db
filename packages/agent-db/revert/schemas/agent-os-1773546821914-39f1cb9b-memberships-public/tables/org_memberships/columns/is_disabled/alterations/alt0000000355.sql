-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/columns/is_disabled/alterations/alt0000000355


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_memberships 
  ALTER COLUMN is_disabled DROP NOT NULL;


