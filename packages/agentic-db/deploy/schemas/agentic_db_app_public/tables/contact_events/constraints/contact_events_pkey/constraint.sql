-- Deploy: schemas/agentic_db_app_public/tables/contact_events/constraints/contact_events_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_events/table


ALTER TABLE "agentic_db_app_public".contact_events 
  ADD CONSTRAINT contact_events_pkey PRIMARY KEY (id);

