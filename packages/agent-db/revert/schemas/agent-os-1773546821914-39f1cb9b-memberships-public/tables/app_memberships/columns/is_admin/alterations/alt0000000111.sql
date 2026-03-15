-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_memberships/columns/is_admin/alterations/alt0000000111


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_memberships 
  ALTER COLUMN is_admin DROP NOT NULL;


