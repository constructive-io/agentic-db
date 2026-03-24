-- Deploy: schemas/agentic_db_app_public/tables/goal_projects/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_projects/table
-- requires: schemas/agentic_db_app_public/tables/task_projects/policies/auth_del_entity_membership/policy


GRANT SELECT ON agentic_db_app_public.goal_projects TO authenticated;

