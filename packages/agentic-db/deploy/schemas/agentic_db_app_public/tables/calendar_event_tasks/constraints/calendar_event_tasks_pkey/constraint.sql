-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_tasks/constraints/calendar_event_tasks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_event_tasks/table
-- requires: schemas/agentic_db_app_public/tables/calendar_event_notes/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".calendar_event_tasks 
  ADD CONSTRAINT calendar_event_tasks_pkey PRIMARY KEY (id);

