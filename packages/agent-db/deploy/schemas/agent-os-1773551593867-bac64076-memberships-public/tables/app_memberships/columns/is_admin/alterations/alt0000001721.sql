-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/columns/is_admin/alterations/alt0000001721
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/columns/is_admin/column



ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_memberships 
    ALTER COLUMN is_admin SET DEFAULT false;

