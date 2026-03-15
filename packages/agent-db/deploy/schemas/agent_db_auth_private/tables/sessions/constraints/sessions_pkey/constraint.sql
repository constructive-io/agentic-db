-- Deploy: schemas/agent_db_auth_private/tables/sessions/constraints/sessions_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/sessions/table


ALTER TABLE "agent_db_auth_private".sessions 
  ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);

