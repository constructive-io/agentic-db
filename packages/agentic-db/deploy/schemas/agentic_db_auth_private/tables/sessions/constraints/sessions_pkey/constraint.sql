-- Deploy: schemas/agentic_db_auth_private/tables/sessions/constraints/sessions_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/sessions/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_auth_private.sessions 
  ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);

