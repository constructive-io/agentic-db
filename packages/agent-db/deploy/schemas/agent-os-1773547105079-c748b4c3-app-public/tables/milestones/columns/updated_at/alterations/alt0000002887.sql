-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/milestones/columns/updated_at/alterations/alt0000002887
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/milestones/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/milestones/columns/updated_at/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/milestones/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".milestones 
    ALTER COLUMN updated_at SET DEFAULT now();

