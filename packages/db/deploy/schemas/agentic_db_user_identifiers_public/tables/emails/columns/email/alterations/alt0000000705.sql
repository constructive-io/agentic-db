-- Deploy: schemas/agentic_db_user_identifiers_public/tables/emails/columns/email/alterations/alt0000000705
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/columns/email/column


ALTER TABLE "agentic_db_user_identifiers_public".emails 
  ALTER COLUMN email SET NOT NULL;

