-- Deploy: schemas/agentic_db_user_identifiers_public/tables/emails/columns/created_at/alterations/alt0000001558
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/columns/created_at/column


ALTER TABLE "agentic_db_user_identifiers_public".emails 
  ALTER COLUMN created_at SET DEFAULT now();

