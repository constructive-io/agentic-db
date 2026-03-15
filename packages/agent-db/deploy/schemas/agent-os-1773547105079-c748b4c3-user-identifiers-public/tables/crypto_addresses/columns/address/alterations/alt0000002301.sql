-- Deploy: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/crypto_addresses/columns/address/alterations/alt0000002301
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/crypto_addresses/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/crypto_addresses/columns/address/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-user-identifiers-public".crypto_addresses 
  ADD CONSTRAINT crypto_addresses_address_chk 
    CHECK (address ~* '^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$');

