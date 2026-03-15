-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_membership_defaults/columns/is_approved/alterations/alt0000001696
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_membership_defaults/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_membership_defaults/columns/is_approved/column



ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_membership_defaults 
    ALTER COLUMN is_approved SET DEFAULT TRUE;

