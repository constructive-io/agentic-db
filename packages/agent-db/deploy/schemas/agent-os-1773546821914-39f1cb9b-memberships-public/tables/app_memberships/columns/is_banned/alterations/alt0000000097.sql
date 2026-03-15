-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_memberships/columns/is_banned/alterations/alt0000000097
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_memberships/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_memberships/columns/is_banned/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_memberships 
    ALTER COLUMN is_banned SET DEFAULT false;

