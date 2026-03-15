-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_membership_defaults/columns/id/alterations/alt0000000070
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_membership_defaults/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_membership_defaults/columns/id/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_membership_defaults 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

