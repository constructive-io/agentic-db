-- Deploy: schemas/agent_db_user_identifiers_public/tables/emails/columns/created_at/alterations/alt0000000713
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/table
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/columns/created_at/column


ALTER TABLE agent_db_user_identifiers_public.emails 
  ALTER COLUMN created_at SET DEFAULT now();

