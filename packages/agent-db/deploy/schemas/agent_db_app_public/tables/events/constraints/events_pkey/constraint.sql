-- Deploy: schemas/agent_db_app_public/tables/events/constraints/events_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/events/table
-- requires: schemas/agent_db_app_public/tables/deals/columns/embedding/column


ALTER TABLE "agent_db_app_public".events 
  ADD CONSTRAINT events_pkey PRIMARY KEY (id);

