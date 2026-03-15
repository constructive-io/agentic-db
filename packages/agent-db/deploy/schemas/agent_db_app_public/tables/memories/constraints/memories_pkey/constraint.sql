-- Deploy: schemas/agent_db_app_public/tables/memories/constraints/memories_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/memories/table
-- requires: schemas/agent_db_app_public/tables/rules/columns/trigger_concept/column


ALTER TABLE "agent_db_app_public".memories 
  ADD CONSTRAINT memories_pkey PRIMARY KEY (id);

