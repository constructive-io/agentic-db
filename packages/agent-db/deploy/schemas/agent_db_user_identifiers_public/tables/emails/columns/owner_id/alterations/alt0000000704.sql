-- Deploy: schemas/agent_db_user_identifiers_public/tables/emails/columns/owner_id/alterations/alt0000000704
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/table
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/columns/owner_id/column



ALTER TABLE agent_db_user_identifiers_public.emails 
    ALTER COLUMN owner_id SET DEFAULT jwt_public.current_user_id();

