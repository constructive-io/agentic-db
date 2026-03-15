-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_memberships/columns/permissions/alterations/alt0000000114
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_memberships/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_memberships/columns/permissions/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_memberships 
  ALTER COLUMN permissions SET NOT NULL;

