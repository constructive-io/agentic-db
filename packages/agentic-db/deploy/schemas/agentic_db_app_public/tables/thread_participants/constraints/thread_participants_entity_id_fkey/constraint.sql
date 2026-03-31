-- Deploy: schemas/agentic_db_app_public/tables/thread_participants/constraints/thread_participants_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/thread_participants/table
-- requires: schemas/agentic_db_app_public/tables/skill_tools/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.thread_participants 
  ADD CONSTRAINT thread_participants_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES agentic_db_users_public.users (id) 
    ON DELETE CASCADE;

