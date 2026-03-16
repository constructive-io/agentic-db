-- Deploy: schemas/agent_db_user_identifiers_public/tables/emails/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/table


ALTER TABLE "agent_db_user_identifiers_public".emails 
  ADD COLUMN created_at timestamptz;

