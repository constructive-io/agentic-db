-- Deploy: schemas/agent_db_app_public/tables/task_notes/alterations/alt0000002434
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/task_notes/table
-- requires: schemas/agent_db_app_public/tables/event_notes/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".task_notes 
  DISABLE ROW LEVEL SECURITY;

