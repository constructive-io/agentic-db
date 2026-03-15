-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_owner_grants/columns/is_grant/alterations/alt0000001699
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_owner_grants/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_owner_grants/columns/is_grant/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".app_owner_grants 
  ALTER COLUMN is_grant SET NOT NULL;

