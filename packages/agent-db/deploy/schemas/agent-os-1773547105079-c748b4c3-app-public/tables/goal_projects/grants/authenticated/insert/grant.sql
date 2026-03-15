-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goal_projects/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goal_projects/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goal_habits/policies/auth_del_entity_membership/policy


GRANT INSERT ON "agent-os-1773547105079-c748b4c3-app-public".goal_projects TO authenticated;

