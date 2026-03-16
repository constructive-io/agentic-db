-- Deploy: schemas/agent_db_app_public/tables/task_notes/constraints/task_notes_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/task_notes/table
-- requires: schemas/agent_db_app_public/tables/event_notes/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".task_notes 
  ADD CONSTRAINT task_notes_pkey PRIMARY KEY (id);

