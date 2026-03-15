-- Deploy: schemas/agent_db_auth_private/tables/sessions/columns/last_password_verified/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/sessions/table


ALTER TABLE agent_db_auth_private.sessions 
  ADD COLUMN last_password_verified timestamptz;

