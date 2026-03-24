-- Deploy: schemas/agentic_db_user_identifiers_public/tables/emails/columns/updated_at/alterations/alt0000000713
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/columns/updated_at/column


ALTER TABLE "agentic_db_user_identifiers_public".emails 
  ALTER COLUMN updated_at SET DEFAULT now();

