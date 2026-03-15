-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/phone_numbers/constraints/phone_numbers_owner_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/phone_numbers/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-user-identifiers-public".phone_numbers 
  ADD CONSTRAINT phone_numbers_owner_id_fkey 
    FOREIGN KEY(owner_id) 
    REFERENCES "agent-os-1773550873753-b6c4a3e1-users-public".users (id) 
    ON DELETE CASCADE;

