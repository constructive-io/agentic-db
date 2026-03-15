-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_memberships/columns/id/alterations/alt0000001625
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_memberships/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_memberships/columns/id/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".app_memberships 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

