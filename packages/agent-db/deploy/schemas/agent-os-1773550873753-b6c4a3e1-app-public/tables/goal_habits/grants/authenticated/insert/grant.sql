-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goal_habits/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goal_habits/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/task_contacts/policies/auth_del_entity_membership/policy


GRANT INSERT ON "agent-os-1773550873753-b6c4a3e1-app-public".goal_habits TO authenticated;

