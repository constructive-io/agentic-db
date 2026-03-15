-- Deploy: schemas/agent_db_app_public/tables/goal_habits/constraints/goal_habits_goal_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/goals/table
-- requires: schemas/agent_db_app_public/tables/goal_habits/table
-- requires: schemas/agent_db_app_public/tables/task_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.goal_habits 
  ADD CONSTRAINT goal_habits_goal_id_fkey 
    FOREIGN KEY(goal_id) 
    REFERENCES agent_db_app_public.goals (id) 
    ON DELETE CASCADE;

