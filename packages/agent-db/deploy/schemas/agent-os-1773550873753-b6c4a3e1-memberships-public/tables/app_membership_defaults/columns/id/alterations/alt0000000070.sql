-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_membership_defaults/columns/id/alterations/alt0000000070
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_membership_defaults/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_membership_defaults/columns/id/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_membership_defaults 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

