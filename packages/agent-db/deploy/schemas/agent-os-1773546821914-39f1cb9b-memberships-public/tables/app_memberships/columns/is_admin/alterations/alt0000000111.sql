-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_memberships/columns/is_admin/alterations/alt0000000111
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_memberships/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_memberships/columns/is_admin/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_memberships 
  ALTER COLUMN is_admin SET NOT NULL;

