-- Deploy: schemas/agentic_db_app_public/tables/reminders/constraints/reminders_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/reminders/table
-- requires: schemas/agentic_db_app_public/tables/ideas/columns/embedding/column


ALTER TABLE agentic_db_app_public.reminders 
  ADD CONSTRAINT reminders_pkey PRIMARY KEY (id);

