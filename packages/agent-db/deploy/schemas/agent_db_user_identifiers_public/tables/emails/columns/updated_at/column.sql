-- Deploy: schemas/agent_db_user_identifiers_public/tables/emails/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/table


ALTER TABLE agent_db_user_identifiers_public.emails 
  ADD COLUMN updated_at timestamptz;

