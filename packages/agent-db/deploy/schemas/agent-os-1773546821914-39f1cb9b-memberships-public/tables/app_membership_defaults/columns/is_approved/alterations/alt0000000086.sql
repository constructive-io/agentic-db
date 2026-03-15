-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_membership_defaults/columns/is_approved/alterations/alt0000000086
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_membership_defaults/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_membership_defaults/columns/is_approved/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_membership_defaults 
  ALTER COLUMN is_approved SET NOT NULL;

