-- Deploy: schemas/agentic_db_app_public/tables/runtime_events/constraints/runtime_events_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_events/table


ALTER TABLE agentic_db_app_public.runtime_events 
  ADD CONSTRAINT runtime_events_pkey PRIMARY KEY (id);

