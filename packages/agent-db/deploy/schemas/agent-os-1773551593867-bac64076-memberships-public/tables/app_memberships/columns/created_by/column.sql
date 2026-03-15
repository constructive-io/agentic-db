-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/columns/created_by/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/table


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_memberships 
  ADD COLUMN created_by uuid;

