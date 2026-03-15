-- Deploy: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/phone_numbers/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/phone_numbers/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-user-identifiers-public".phone_numbers 
  ADD COLUMN created_at timestamptz;

