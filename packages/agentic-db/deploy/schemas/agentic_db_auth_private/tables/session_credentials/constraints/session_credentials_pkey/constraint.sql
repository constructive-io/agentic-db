-- Deploy: schemas/agentic_db_auth_private/tables/session_credentials/constraints/session_credentials_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/table


ALTER TABLE agentic_db_auth_private.session_credentials 
  ADD CONSTRAINT session_credentials_pkey PRIMARY KEY (id);

