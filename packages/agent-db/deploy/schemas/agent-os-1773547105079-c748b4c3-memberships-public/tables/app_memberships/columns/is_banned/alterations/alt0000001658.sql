-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_memberships/columns/is_banned/alterations/alt0000001658
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_memberships/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_memberships/columns/is_banned/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".app_memberships 
    ALTER COLUMN is_banned SET DEFAULT false;

