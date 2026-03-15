-- Deploy: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/crypto_addresses/constraints/crypto_addresses_owner_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/table
-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/crypto_addresses/table


ALTER TABLE "agent-os-1773551593867-bac64076-user-identifiers-public".crypto_addresses 
  ADD CONSTRAINT crypto_addresses_owner_id_fkey 
    FOREIGN KEY(owner_id) 
    REFERENCES "agent-os-1773551593867-bac64076-users-public".users (id) 
    ON DELETE CASCADE;

