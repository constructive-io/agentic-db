-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/columns/is_active/alterations/alt0000001715
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/columns/is_active/column



ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_memberships 
    ALTER COLUMN is_active SET DEFAULT false;

