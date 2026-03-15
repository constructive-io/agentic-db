-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goal_habits/constraints/goal_habits_habit_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goal_habits/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/task_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".goal_habits 
  ADD CONSTRAINT goal_habits_habit_id_fkey 
    FOREIGN KEY(habit_id) 
    REFERENCES "agent-os-1773547105079-c748b4c3-app-public".habits (id) 
    ON DELETE CASCADE;

