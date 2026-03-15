-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/membership_types/columns/id/alterations/alt0000001577
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/membership_types/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/membership_types/columns/id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".membership_types 
  ALTER COLUMN id SET NOT NULL;

