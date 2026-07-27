-- Deploy: schemas/agentic_db_app_public/tables/calendars/constraints/calendars_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendars/table


ALTER TABLE agentic_db_app_public.calendars 
  ADD CONSTRAINT calendars_pkey PRIMARY KEY (id);

