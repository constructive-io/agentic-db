-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_images/columns/id/alterations/alt0000002560
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_images/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_images/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_images/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".event_images 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

