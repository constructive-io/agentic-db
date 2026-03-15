-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_memberships/columns/permissions/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_memberships/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".app_memberships 
  ADD COLUMN permissions bit(24);

