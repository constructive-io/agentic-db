-- Deploy: schemas/agentic_db_auth_private/tables/sessions/columns/last_password_verified/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/sessions/table


ALTER TABLE agentic_db_auth_private.sessions 
  ADD COLUMN last_password_verified timestamptz;

