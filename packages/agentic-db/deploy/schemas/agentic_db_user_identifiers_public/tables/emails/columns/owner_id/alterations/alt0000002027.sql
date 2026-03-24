-- Deploy: schemas/agentic_db_user_identifiers_public/tables/emails/columns/owner_id/alterations/alt0000002027
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/columns/owner_id/column



ALTER TABLE agentic_db_user_identifiers_public.emails 
    ALTER COLUMN owner_id SET DEFAULT jwt_public.current_user_id();

