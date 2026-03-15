-- Deploy: schemas/agent_db_app_public/tables/inbound_events/constraints/inbound_events_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/inbound_events/table
-- requires: schemas/agent_db_app_public/tables/tasks/columns/approved_at/column


ALTER TABLE "agent_db_app_public".inbound_events 
  ADD CONSTRAINT inbound_events_pkey PRIMARY KEY (id);

