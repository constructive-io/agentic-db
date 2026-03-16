-- Deploy: schemas/agent_db_user_identifiers_public/tables/phone_numbers/constraints/phone_numbers_owner_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_user_identifiers_public/tables/phone_numbers/table


ALTER TABLE "agent_db_user_identifiers_public".phone_numbers 
  ADD CONSTRAINT phone_numbers_owner_id_fkey 
    FOREIGN KEY(owner_id) 
    REFERENCES "agent_db_users_public".users (id) 
    ON DELETE CASCADE;

