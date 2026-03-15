-- Deploy: schemas/agent_db_user_identifiers_public/tables/phone_numbers/columns/owner_id/alterations/alt0000003890
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/phone_numbers/table
-- requires: schemas/agent_db_user_identifiers_public/tables/phone_numbers/columns/owner_id/column



ALTER TABLE "agent_db_user_identifiers_public".phone_numbers 
    ALTER COLUMN owner_id SET DEFAULT jwt_public.current_user_id();

