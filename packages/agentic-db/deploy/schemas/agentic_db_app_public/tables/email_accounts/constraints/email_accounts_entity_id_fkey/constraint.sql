-- Deploy: schemas/agentic_db_app_public/tables/email_accounts/constraints/email_accounts_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/email_accounts/table
-- requires: schemas/agentic_db_app_public/tables/files/indexes/files_language_idx


ALTER TABLE "agentic_db_app_public".email_accounts 
  ADD CONSTRAINT email_accounts_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agentic_db_users_public".users (id) 
    ON DELETE CASCADE;

