-- Deploy: schemas/agent_db_user_identifiers_public/tables/emails/constraints/emails_owner_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/table


ALTER TABLE "agent_db_user_identifiers_public".emails 
  ADD CONSTRAINT emails_owner_id_fkey 
    FOREIGN KEY(owner_id) 
    REFERENCES "agent_db_users_public".users (id) 
    ON DELETE CASCADE;

