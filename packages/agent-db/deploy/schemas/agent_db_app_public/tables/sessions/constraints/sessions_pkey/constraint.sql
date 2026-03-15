-- Deploy: schemas/agent_db_app_public/tables/sessions/constraints/sessions_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/sessions/table
-- requires: schemas/agent_db_app_public/tables/agents/columns/embedding/column


ALTER TABLE agent_db_app_public.sessions 
  ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);

