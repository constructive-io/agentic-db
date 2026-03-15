-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_memberships/columns/granted/alterations/alt0000000117


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_memberships 
  ALTER COLUMN granted DROP NOT NULL;


