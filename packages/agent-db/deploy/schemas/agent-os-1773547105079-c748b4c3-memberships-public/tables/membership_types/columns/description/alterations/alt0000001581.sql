-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/membership_types/columns/description/alterations/alt0000001581
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/membership_types/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/membership_types/columns/description/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".membership_types 
  ALTER COLUMN description SET NOT NULL;

