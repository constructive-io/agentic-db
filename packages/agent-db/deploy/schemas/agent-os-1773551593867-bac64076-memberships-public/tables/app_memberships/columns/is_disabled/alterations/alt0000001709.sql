-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/columns/is_disabled/alterations/alt0000001709
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/columns/is_disabled/column



ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_memberships 
    ALTER COLUMN is_disabled SET DEFAULT false;

