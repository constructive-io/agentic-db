-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/membership_types/columns/id/alterations/alt0000001578
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/membership_types/columns/id/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-memberships-public".membership_types.id IS E'Integer identifier for the membership type (1=App, 2=Organization, 3=Group)';

