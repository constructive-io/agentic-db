-- Deploy: schemas/agent_db_auth_private/tables/sessions/columns/created_at/alterations/alt0000000626
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/sessions/table
-- requires: schemas/agent_db_auth_private/tables/sessions/columns/created_at/column


ALTER TABLE agent_db_auth_private.sessions 
  ALTER COLUMN created_at SET DEFAULT now();

