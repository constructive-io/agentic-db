-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_memberships/columns/granted/alterations/alt0000000117
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_memberships/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_memberships/columns/granted/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_memberships 
  ALTER COLUMN granted SET NOT NULL;

