-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goal_projects/columns/id/alterations/alt0000003139
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goal_projects/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goal_projects/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goal_habits/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".goal_projects 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

