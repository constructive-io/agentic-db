-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/columns/is_active/alterations/alt0000001716
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/columns/is_active/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-memberships-public".app_memberships.is_active IS E'Computed field indicating the membership is approved, verified, not banned, and not disabled';

