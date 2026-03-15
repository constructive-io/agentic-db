-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/columns/granted/alterations/alt0000001726
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/columns/granted/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_memberships 
  ALTER COLUMN granted SET NOT NULL;

