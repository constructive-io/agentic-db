-- Deploy: schemas/agentic_db_user_identifiers_public/tables/emails/alterations/alt0000000699
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/table


ALTER TABLE "agentic_db_user_identifiers_public".emails 
  DISABLE ROW LEVEL SECURITY;

