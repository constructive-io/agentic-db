-- Deploy: schemas/agent_db_auth_private/tables/sessions/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/sessions/table


ALTER TABLE "agent_db_auth_private".sessions 
  ADD COLUMN created_at timestamptz;

