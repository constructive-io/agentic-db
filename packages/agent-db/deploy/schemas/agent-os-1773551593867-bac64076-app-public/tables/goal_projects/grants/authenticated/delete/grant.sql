-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/goal_projects/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/goal_projects/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/goal_habits/policies/auth_del_entity_membership/policy


GRANT DELETE ON "agent-os-1773551593867-bac64076-app-public".goal_projects TO authenticated;

