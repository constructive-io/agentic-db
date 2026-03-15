-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/membership_types/columns/id/alterations/alt0000001626
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/membership_types/columns/id/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-memberships-public".membership_types.id IS E'Integer identifier for the membership type (1=App, 2=Organization, 3=Group)';

