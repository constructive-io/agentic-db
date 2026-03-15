-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/membership_types/columns/prefix/alterations/alt0000001583
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/membership_types/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/membership_types/columns/prefix/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".membership_types 
  ALTER COLUMN prefix SET NOT NULL;

