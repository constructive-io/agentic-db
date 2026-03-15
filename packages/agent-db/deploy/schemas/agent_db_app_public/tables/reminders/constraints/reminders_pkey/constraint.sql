-- Deploy: schemas/agent_db_app_public/tables/reminders/constraints/reminders_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/reminders/table
-- requires: schemas/agent_db_app_public/tables/ideas/columns/embedding/column


ALTER TABLE "agent_db_app_public".reminders 
  ADD CONSTRAINT reminders_pkey PRIMARY KEY (id);

