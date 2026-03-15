-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_membership_defaults/columns/delete_member_cascade_groups/alterations/alt0000000344
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_membership_defaults/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_membership_defaults/columns/delete_member_cascade_groups/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_membership_defaults 
    ALTER COLUMN delete_member_cascade_groups SET DEFAULT FALSE;

