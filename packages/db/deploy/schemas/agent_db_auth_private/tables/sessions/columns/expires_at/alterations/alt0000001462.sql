-- Deploy: schemas/agent_db_auth_private/tables/sessions/columns/expires_at/alterations/alt0000001462
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/sessions/table
-- requires: schemas/agent_db_auth_private/tables/sessions/columns/expires_at/column


ALTER TABLE "agent_db_auth_private".sessions 
  ALTER COLUMN expires_at SET NOT NULL;

