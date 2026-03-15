-- Deploy: schemas/agent_db_user_identifiers_public/tables/emails/columns/is_verified/alterations/alt0000000707
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/table
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/columns/is_verified/column


ALTER TABLE agent_db_user_identifiers_public.emails 
  ALTER COLUMN is_verified SET NOT NULL;

