-- Deploy: schemas/agentic_db_app_public/tables/goal_habits/constraints/goal_habits_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/goal_habits/table
-- requires: schemas/agentic_db_app_public/tables/task_projects/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".goal_habits 
  ADD CONSTRAINT goal_habits_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agentic_db_users_public".users (id) 
    ON DELETE CASCADE;

