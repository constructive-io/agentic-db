-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_grants/columns/permissions/alterations/alt0000001711
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_grants/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_grants/columns/permissions/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".app_grants 
  ALTER COLUMN permissions SET NOT NULL;

