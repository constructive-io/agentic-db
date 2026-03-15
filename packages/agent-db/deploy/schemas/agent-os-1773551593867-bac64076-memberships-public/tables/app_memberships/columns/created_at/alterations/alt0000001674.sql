-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/columns/created_at/alterations/alt0000001674
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/columns/created_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_memberships 
  ALTER COLUMN created_at SET DEFAULT now();

