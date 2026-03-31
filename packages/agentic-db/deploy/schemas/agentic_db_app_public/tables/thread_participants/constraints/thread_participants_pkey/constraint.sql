-- Deploy: schemas/agentic_db_app_public/tables/thread_participants/constraints/thread_participants_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/thread_participants/table
-- requires: schemas/agentic_db_app_public/tables/skill_tools/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.thread_participants 
  ADD CONSTRAINT thread_participants_pkey PRIMARY KEY (id);

